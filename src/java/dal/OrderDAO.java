/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dal;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import model.Order;

/**
 *
 * @author Admin
 */
public class OrderDAO extends DBContext {

    public int createReturnId(Order order) {
        String sql = "INSERT INTO [dbo].[Orders]\n"
                + "           ([account_id]\n"
                + "           ,[totalPrice]\n"
                + "           ,[note]\n"
                + "           ,[shipping_id])\n"
                + "     VALUES\n"
                + "           (?,?,?,?)";
        try (PreparedStatement stm = connection.prepareStatement(sql, Statement.RETURN_GENERATED_KEYS);) {
            stm.setInt(1, order.getAccountId());
            stm.setDouble(2, order.getTotalPrice());
            stm.setString(3, order.getNote());
            stm.setInt(4, order.getShippingId());
            stm.executeUpdate();
            try (ResultSet rs = stm.getGeneratedKeys();) {
                if (rs.next()) {
                    return rs.getInt(1);
                }
            }
        } catch (Exception ex) {
            Logger.getLogger(OrderDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return 0;
    }

    public List<Order> getAllOrder() {
        List<Order> Orders = new ArrayList<>();
        String sql = "select id, account_id, totalPrice, note, create_date, shipping_id from Orders";
        try (PreparedStatement stm = connection.prepareStatement(sql); ResultSet rs = stm.executeQuery();) {
            while (rs.next()) {
                Order order = new Order();
                order.setId(rs.getInt(1));
                order.setAccountId(rs.getInt(2));
                order.setTotalPrice(rs.getDouble(3));
                order.setNote(rs.getString(4));
                order.setCreatedDate(rs.getString(5));
                order.setShippingId(rs.getInt(6));

                Orders.add(order);
            }
        } catch (Exception ex) {
            Logger.getLogger(CategoryDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return Orders;
    }

    public double calculateTotalPrice(List<Order> orders) {
        double total = 0;
        for (Order order : orders) {
            total += order.getTotalPrice();
        }
        return total;
    }
}
