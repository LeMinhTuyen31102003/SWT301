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
import model.Product;

public class ProductDAO extends DBContext {

    public List<Product> getAllProducts() {
        List<Product> list = new ArrayList<>();
        String sql = "SELECT id,name,image,price,title,description,cateID,sell_ID FROM Product";
        try (PreparedStatement stm = connection.prepareStatement(sql); ResultSet rs = stm.executeQuery();) {
            while (rs.next()) {
                Product product = new Product();
                product.setId(rs.getInt(1));
                product.setName(rs.getString(2));
                product.setImageUrl(rs.getString(3));
                product.setPrice(rs.getDouble(4));
                product.setTiltle(rs.getString(5));
                product.setDescription(rs.getString(6));
                product.setCategoryId(rs.getInt(7));
                product.setSell_ID(rs.getInt(8));
                list.add(product);
            }
        } catch (Exception ex) {
            Logger.getLogger(CategoryDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return list;
    }

    public List<Product> getProductsByCategoryId(int categoryId) {
        List<Product> list = new ArrayList<>();
        String sql = """
                         SELECT[id]
                               ,[order_id]
                               ,[productName]
                               ,[productImage]
                               ,[productPrice]
                               ,[quantity]
                           FROM[PRJ301_SE1808].[dbo].[OrderDetail] where Product
        .cateID =  ?
        """;
        try (PreparedStatement stm = connection.prepareStatement(sql);) {
            stm.setInt(1, categoryId);
            try (ResultSet rs = stm.executeQuery();) {
                while (rs.next()) {
                    Product product = new Product();
                    product.setId(rs.getInt(1));
                    product.setName(rs.getString(2));
                    product.setImageUrl(rs.getString(3));
                    product.setPrice(rs.getDouble(4));
                    product.setTiltle(rs.getString(5));
                    product.setDescription(rs.getString(6));
                    product.setCategoryId(rs.getInt(7));
                    product.setSell_ID(rs.getInt(8));
                    list.add(product);
                }
            }
        } catch (Exception ex) {
            Logger.getLogger(CategoryDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return list;
    }

    public List<Product> getProductsWithPagging(int page, int PAGE_SIZE) {
        List<Product> list = new ArrayList<>();
        String sql = """
                     select [id]
                                                    ,[order_id]
                                                    ,[productName]
                                                    ,[productImage]
                                                    ,[productPrice]
                                                    ,[quantity]  from Product order by id
                     offset (?-1)*? row fetch next ? rows only""";
        try (PreparedStatement stm = connection.prepareStatement(sql);) {
            stm.setInt(1, page);
            stm.setInt(2, PAGE_SIZE);
            stm.setInt(3, PAGE_SIZE);
            try (ResultSet rs = stm.executeQuery();) {
                while (rs.next()) {
                    Product product = new Product();
                    product.setId(rs.getInt(1));
                    product.setName(rs.getString(2));
                    product.setImageUrl(rs.getString(3));
                    product.setPrice(rs.getDouble(4));
                    product.setTiltle(rs.getString(5));
                    product.setDescription(rs.getString(6));
                    product.setCategoryId(rs.getInt(7));
                    product.setSell_ID(rs.getInt(8));
                    list.add(product);
                }
            }
        } catch (Exception ex) {
            Logger.getLogger(CategoryDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return list;
    }

    public int getTotalProducts() {
        String sql = "select count(id)  from Product ";
        try (PreparedStatement stm = connection.prepareStatement(sql); ResultSet rs = stm.executeQuery();) {
            while (rs.next()) {
                return rs.getInt(1);
            }
        } catch (Exception ex) {
            Logger.getLogger(CategoryDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return 0;
    }

    public List<Product> search(String keyword) {
        List<Product> list = new ArrayList<>();
        String sql = """
                         select [id]
                                                        ,[order_id]
                                                        ,[productName]
                                                        ,[productImage]
                                                        ,[productPrice]
                                                        ,[quantity]  from Product where name like ?""";
        try (PreparedStatement stm = connection.prepareStatement(sql);) {
            stm.setString(1, "%" + keyword + "%");
            try (ResultSet rs = stm.executeQuery();) {
                while (rs.next()) {
                    Product product = new Product();
                    product.setId(rs.getInt(1));
                    product.setName(rs.getString(2));
                    product.setImageUrl(rs.getString(3));
                    product.setPrice(rs.getDouble(4));
                    product.setTiltle(rs.getString(5));
                    product.setDescription(rs.getString(6));
                    product.setCategoryId(rs.getInt(7));
                    product.setSell_ID(rs.getInt(8));
                    list.add(product);
                }
            }
        } catch (Exception ex) {
            Logger.getLogger(CategoryDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return list;
    }

    public List<Product> searchByPrice() {
        List<Product> list = new ArrayList<>();
        String sql = """
                         select [id]
                                                                                 ,[order_id]
                                                                                 ,[productName]
                                                                                 ,[productImage]
                                                                                 ,[productPrice]
                                                                                 ,[quantity]  from Product where price > 3000""";
        try (PreparedStatement stm = connection.prepareStatement(sql); ResultSet rs = stm.executeQuery();) {
            while (rs.next()) {
                Product product = new Product();
                product.setId(rs.getInt(1));
                product.setName(rs.getString(2));
                product.setImageUrl(rs.getString(3));
                product.setPrice(rs.getDouble(4));
                product.setTiltle(rs.getString(5));
                product.setDescription(rs.getString(6));
                product.setCategoryId(rs.getInt(7));
                product.setSell_ID(rs.getInt(8));
                list.add(product);
            }
        } catch (Exception ex) {
            Logger.getLogger(CategoryDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return list;
    }

    public Product getProductById(int productId) {
        String sql = """
                         select [id]
                                                                                                          ,[order_id]
                                                                                                          ,[productName]
                                                                                                          ,[productImage]
                                                                                                          ,[productPrice]
                                                                                                          ,[quantity]  from Product where id = ?""";
        try (PreparedStatement stm = connection.prepareStatement(sql);) {
            stm.setInt(1, productId);
            try (ResultSet rs = stm.executeQuery();) {
                while (rs.next()) {
                    Product product = new Product();
                    product.setId(rs.getInt(1));
                    product.setName(rs.getString(2));
                    product.setImageUrl(rs.getString(3));
                    product.setPrice(rs.getDouble(4));
                    product.setTiltle(rs.getString(5));
                    product.setDescription(rs.getString(6));
                    product.setCategoryId(rs.getInt(7));
                    product.setSell_ID(rs.getInt(8));
                    return product;
                }
            }
        } catch (Exception ex) {
            Logger.getLogger(CategoryDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }

    public List<Product> getProductsBySellId(int Id) {
        List<Product> list = new ArrayList<>();
        String sql = """
                         select [id]
                                                                                                                                   ,[order_id]
                                                                                                                                   ,[productName]
                                                                                                                                   ,[productImage]
                                                                                                                                   ,[productPrice]
                                                                                                                                   ,[quantity] from Product""";

        try (PreparedStatement stm = connection.prepareStatement(sql); ResultSet rs = stm.executeQuery();) {
            while (rs.next()) {
                Product product = new Product();
                product.setId(rs.getInt(1));
                product.setName(rs.getString(2));
                product.setImageUrl(rs.getString(3));
                product.setPrice(rs.getDouble(4));
                product.setTiltle(rs.getString(5));
                product.setDescription(rs.getString(6));
                product.setCategoryId(rs.getInt(7));
                product.setSell_ID(rs.getInt(8));
                list.add(product);
            }
        } catch (Exception ex) {
            Logger.getLogger(CategoryDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return list;
    }

    public void inSertProduct(String name, String img, String price, String title, String description, String cid, int sell_ID) {
        String sql = """
                         INSERT INTO [Product]
                                    ([name]
                                    ,[image]
                                    ,[price]
                                    ,[title]
                                    ,[description]
                                    ,[cateID]
                                    ,[sell_ID])
                              VALUES
                                    (?
                                    ,?
                                    ,?
                                    ,?
                                    ,?
                                    ,?
                                    ,?)""";
        try (PreparedStatement stm = connection.prepareStatement(sql);) {
            stm.setString(1, name);
            stm.setString(2, "images/" + img);
            stm.setString(3, price);
            stm.setString(4, title);
            stm.setString(5, description);
            stm.setString(6, cid);
            stm.setInt(7, sell_ID);
            stm.executeUpdate();
        } catch (SQLException ex) {
            System.out.println(ex);
        }
    }

    public void deleteProduct(int id) {
        String sql = """
                     DELETE FROM [Product]
                     WHERE id = ? """;
        try (PreparedStatement stm = connection.prepareStatement(sql);) {
            stm.setInt(1, id);
            stm.executeUpdate();
        } catch (SQLException ex) {
            Logger.getLogger(CategoryDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    public void updateProduct(String name, String img, String price, String title, String description, String cid, String id) {
        String sql = """
                     UPDATE [Product]
                        SET [name] = ?
                           ,[image] = ?
                           ,[price] = ?
                           ,[title] = ?
                           ,[description] = ?
                           ,[cateID] = ?
                      WHERE id = ?""";
        try (PreparedStatement stm = connection.prepareStatement(sql);) {
            stm.setString(1, name);
            stm.setString(2, "images/" + img);
            stm.setString(3, price);
            stm.setString(4, title);
            stm.setString(5, description);
            stm.setString(6, cid);
            stm.setString(7, id);
            stm.executeUpdate();
        } catch (SQLException ex) {
            Logger.getLogger(CategoryDAO.class.getName()).log(Level.SEVERE, null, ex);
        }

    }

    public List<Product> getAllProductsLast() {
        List<Product> list = new ArrayList<>();
        String sql = """
                         SELECT TOP 4 [id]
                                                                                                                                                            ,[order_id]
                                                                                                                                                            ,[productName]
                                                                                                                                                            ,[productImage]
                                                                                                                                                            ,[productPrice]
                                                                                                                                                            ,[quantity] FROM Product ORDER BY ID DESC""";
        try (PreparedStatement stm = connection.prepareStatement(sql); ResultSet rs = stm.executeQuery();) {
            while (rs.next()) {
                Product product = new Product();
                product.setId(rs.getInt(1));
                product.setName(rs.getString(2));
                product.setImageUrl(rs.getString(3));
                product.setPrice(rs.getDouble(4));
                product.setTiltle(rs.getString(5));
                product.setDescription(rs.getString(6));
                product.setCategoryId(rs.getInt(7));
                product.setSell_ID(rs.getInt(8));
                list.add(product);
            }
        } catch (Exception ex) {
            Logger.getLogger(CategoryDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return list;
    }
}
