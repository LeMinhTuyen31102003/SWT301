/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/UnitTests/JUnit4TestClass.java to edit this template
 */
package dal;

import java.util.List;
import model.Account;
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
public class AcountDAOTest {
    
    public AcountDAOTest() {
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
     * Test of getAllAccount method, of class AcountDAO.
     */
    @Test
    public void testGetAllAccount() {
        System.out.println("getAllAccount");
        AcountDAO instance = new AcountDAO();
        List<Account> expResult = null;
        List<Account> result = instance.getAllAccount();
        assertEquals(expResult, result);
        // TODO review the generated test code and remove the default call to fail.
        fail("The test case is a prototype.");
    }

    /**
     * Test of login method, of class AcountDAO.
     */
    @Test
    public void testLogin() {
        System.out.println("login");
        String user = "";
        String pass = "";
        AcountDAO instance = new AcountDAO();
        Account expResult = null;
        Account result = instance.login(user, pass);
        assertEquals(expResult, result);
        // TODO review the generated test code and remove the default call to fail.
        fail("The test case is a prototype.");
    }

    /**
     * Test of checkAccountExistByUserPass method, of class AcountDAO.
     */
    @Test
    public void testCheckAccountExistByUserPass() {
        System.out.println("checkAccountExistByUserPass");
        String user = "";
        String pass = "";
        AcountDAO instance = new AcountDAO();
        Account expResult = null;
        Account result = instance.checkAccountExistByUserPass(user, pass);
        assertEquals(expResult, result);
        // TODO review the generated test code and remove the default call to fail.
        fail("The test case is a prototype.");
    }

    /**
     * Test of checkAccountExist method, of class AcountDAO.
     */
    @Test
    public void testCheckAccountExist() {
        System.out.println("checkAccountExist");
        String user = "";
        AcountDAO instance = new AcountDAO();
        Account expResult = null;
        Account result = instance.checkAccountExist(user);
        assertEquals(expResult, result);
        // TODO review the generated test code and remove the default call to fail.
        fail("The test case is a prototype.");
    }

    /**
     * Test of insertAccount method, of class AcountDAO.
     */
    @Test
    public void testInsertAccount() {
        System.out.println("insertAccount");
        String user = "";
        String pass = "";
        AcountDAO instance = new AcountDAO();
        instance.insertAccount(user, pass);
        // TODO review the generated test code and remove the default call to fail.
        fail("The test case is a prototype.");
    }

    /**
     * Test of getAccountById method, of class AcountDAO.
     */
    @Test
    public void testGetAccountById() {
        System.out.println("getAccountById");
        int accountId = 0;
        AcountDAO instance = new AcountDAO();
        Account expResult = null;
        Account result = instance.getAccountById(accountId);
        assertEquals(expResult, result);
        // TODO review the generated test code and remove the default call to fail.
        fail("The test case is a prototype.");
    }

    /**
     * Test of updateAccount method, of class AcountDAO.
     */
    @Test
    public void testUpdateAccount() {
        System.out.println("updateAccount");
        Account account = null;
        AcountDAO instance = new AcountDAO();
        instance.updateAccount(account);
        // TODO review the generated test code and remove the default call to fail.
        fail("The test case is a prototype.");
    }

    /**
     * Test of UpDatePassWord method, of class AcountDAO.
     */
    @Test
    public void testUpDatePassWord() {
        System.out.println("UpDatePassWord");
        String pass = "";
        String user = "";
        AcountDAO instance = new AcountDAO();
        instance.UpDatePassWord(pass, user);
        // TODO review the generated test code and remove the default call to fail.
        fail("The test case is a prototype.");
    }
    
}
