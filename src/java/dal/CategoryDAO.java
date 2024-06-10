/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dal;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import model.Category;

public class CategoryDAO extends DBContext { //thao tác với bảng category

    public List<Category> getAllCategories() {
        List<Category> list = new ArrayList<>();
        String sql = " select cid, cname from Category";
        try (PreparedStatement stm = connection.prepareStatement(sql); ResultSet rs = stm.executeQuery();) {
            while (rs.next()) {
                Category category = new Category();
                category.setCid(rs.getInt(1));
                category.setCname(rs.getString(2));
                list.add(category);
            }
        } catch (Exception ex) {
            Logger.getLogger(CategoryDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return list;
    }

    public void insertCategory(String name) {
        String sql = "INSERT INTO [Category]\n"
                + "           ([cname])\n"
                + "     VALUES\n"
                + "           (?)";
        try (PreparedStatement stm = connection.prepareStatement(sql);) {
            stm.setString(1, name);
            stm.executeUpdate();
        } catch (SQLException ex) {
            Logger.getLogger(AcountDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    public Category getCategoryById(int id) {
        String sql = "select *  from Category where cid = ?";
        try (PreparedStatement stm = connection.prepareStatement(sql);) {
            stm.setInt(1, id);
            try (ResultSet rs = stm.executeQuery();) {
                if (rs.next()) {
                    Category a = new Category();
                    a.setCid(rs.getInt(1));
                    a.setCname(rs.getString(2));
                    return a;
                }
            }
        } catch (Exception ex) {
            Logger.getLogger(AcountDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }

    public void updateCategory(Category category) {
        String sql = "UPDATE [dbo].[Category]\n"
                + "   SET [cname] = ?\n"
                + " WHERE cid = ?";
        try (PreparedStatement stm = connection.prepareStatement(sql);) {
            stm.setString(1, category.getCname());
            stm.setInt(2, category.getCid());
            stm.executeUpdate();
        } catch (SQLException ex) {
            Logger.getLogger(AcountDAO.class.getName()).log(Level.SEVERE, null, ex);
        }

    }

    public void deleteCategory(int id) {
        String sql = "DELETE FROM [Category]\n"
                + "WHERE cid = ? ";
        try (PreparedStatement stm = connection.prepareStatement(sql);) {
            stm.setInt(1, id);
            stm.executeUpdate();
        } catch (SQLException ex) {
            Logger.getLogger(AcountDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
}
