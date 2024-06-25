/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/UnitTests/JUnit4TestClass.java to edit this template
 */
package dal;

import java.util.List;
import model.Product;
import org.junit.After;
import org.junit.AfterClass;
import org.junit.Before;
import org.junit.BeforeClass;
import org.junit.Test;
import static org.junit.Assert.*;

/**
 *
 * @author TuyenCute
 */
public class ProductDAOTest {
    
    public ProductDAOTest() {
    }
    
    @BeforeClass
    public static void setUpClass() {
    }
    
    @AfterClass
    public static void tearDownClass() {
    }
    
    @Before
    public void setUp() {
    }
    
    @After
    public void tearDown() {
    }

    /**
     * Test of getAllProducts method, of class ProductDAO.
     */
    @Test
    public void testGetAllProducts() {
        System.out.println("getAllProducts");
        ProductDAO instance = new ProductDAO();
        List<Product> expResult = null;
        List<Product> result = instance.getAllProducts();
        assertEquals(expResult, result);
        // TODO review the generated test code and remove the default call to fail.
        fail("The test case is a prototype.");
    }

    /**
     * Test of getProductsByCategoryId method, of class ProductDAO.
     */
    @Test
    public void testGetProductsByCategoryId() {
        System.out.println("getProductsByCategoryId");
        int categoryId = 0;
        ProductDAO instance = new ProductDAO();
        List<Product> expResult = null;
        List<Product> result = instance.getProductsByCategoryId(categoryId);
        assertEquals(expResult, result);
        // TODO review the generated test code and remove the default call to fail.
        fail("The test case is a prototype.");
    }

    /**
     * Test of getProductsWithPagging method, of class ProductDAO.
     */
    @Test
    public void testGetProductsWithPagging() {
        System.out.println("getProductsWithPagging");
        int page = 0;
        int PAGE_SIZE = 0;
        ProductDAO instance = new ProductDAO();
        List<Product> expResult = null;
        List<Product> result = instance.getProductsWithPagging(page, PAGE_SIZE);
        assertEquals(expResult, result);
        // TODO review the generated test code and remove the default call to fail.
        fail("The test case is a prototype.");
    }

    /**
     * Test of getTotalProducts method, of class ProductDAO.
     */
    @Test
    public void testGetTotalProducts() {
        System.out.println("getTotalProducts");
        ProductDAO instance = new ProductDAO();
        int expResult = 0;
        int result = instance.getTotalProducts();
        assertEquals(expResult, result);
        // TODO review the generated test code and remove the default call to fail.
        fail("The test case is a prototype.");
    }

    /**
     * Test of search method, of class ProductDAO.
     */
    @Test
    public void testSearch() {
        System.out.println("search");
        String keyword = "";
        ProductDAO instance = new ProductDAO();
        List<Product> expResult = null;
        List<Product> result = instance.search(keyword);
        assertEquals(expResult, result);
        // TODO review the generated test code and remove the default call to fail.
        fail("The test case is a prototype.");
    }

    /**
     * Test of searchByPrice method, of class ProductDAO.
     */
    @Test
    public void testSearchByPrice() {
        System.out.println("searchByPrice");
        ProductDAO instance = new ProductDAO();
        List<Product> expResult = null;
        List<Product> result = instance.searchByPrice();
        assertEquals(expResult, result);
        // TODO review the generated test code and remove the default call to fail.
        fail("The test case is a prototype.");
    }

    /**
     * Test of getProductById method, of class ProductDAO.
     */
    @Test
    public void testGetProductById() {
        System.out.println("getProductById");
        int productId = 0;
        ProductDAO instance = new ProductDAO();
        Product expResult = null;
        Product result = instance.getProductById(productId);
        assertEquals(expResult, result);
        // TODO review the generated test code and remove the default call to fail.
        fail("The test case is a prototype.");
    }

    /**
     * Test of getProductsBySellId method, of class ProductDAO.
     */
    @Test
    public void testGetProductsBySellId() {
        System.out.println("getProductsBySellId");
        int Id = 0;
        ProductDAO instance = new ProductDAO();
        List<Product> expResult = null;
        List<Product> result = instance.getProductsBySellId(Id);
        assertEquals(expResult, result);
        // TODO review the generated test code and remove the default call to fail.
        fail("The test case is a prototype.");
    }

    /**
     * Test of inSertProduct method, of class ProductDAO.
     */
    @Test
    public void testInSertProduct() {
        System.out.println("inSertProduct");
        String name = "";
        String img = "";
        String price = "";
        String title = "";
        String description = "";
        String cid = "";
        int sell_ID = 0;
        ProductDAO instance = new ProductDAO();
        instance.inSertProduct(name, img, price, title, description, cid, sell_ID);
        // TODO review the generated test code and remove the default call to fail.
        fail("The test case is a prototype.");
    }

    /**
     * Test of deleteProduct method, of class ProductDAO.
     */
    @Test
    public void testDeleteProduct() {
        System.out.println("deleteProduct");
        int id = 0;
        ProductDAO instance = new ProductDAO();
        instance.deleteProduct(id);
        // TODO review the generated test code and remove the default call to fail.
        fail("The test case is a prototype.");
    }

    /**
     * Test of updateProduct method, of class ProductDAO.
     */
    @Test
    public void testUpdateProduct() {
        System.out.println("updateProduct");
        String name = "";
        String img = "";
        String price = "";
        String title = "";
        String description = "";
        String cid = "";
        String id = "";
        ProductDAO instance = new ProductDAO();
        instance.updateProduct(name, img, price, title, description, cid, id);
        // TODO review the generated test code and remove the default call to fail.
        fail("The test case is a prototype.");
    }

    /**
     * Test of getAllProductsLast method, of class ProductDAO.
     */
    @Test
    public void testGetAllProductsLast() {
        System.out.println("getAllProductsLast");
        ProductDAO instance = new ProductDAO();
        List<Product> expResult = null;
        List<Product> result = instance.getAllProductsLast();
        assertEquals(expResult, result);
        // TODO review the generated test code and remove the default call to fail.
        fail("The test case is a prototype.");
    }
    
}
