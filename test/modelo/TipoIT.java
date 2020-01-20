/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package modelo;

import org.junit.After;
import org.junit.AfterClass;
import org.junit.Before;
import org.junit.BeforeClass;
import org.junit.Test;
import static org.junit.Assert.*;

/**
 *
 * @author JOSE
 */
public class TipoIT {
    
    public TipoIT() {
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
     * Test of getIdtipo method, of class Tipo.
     */
    @Test
    public void testGetIdtipo() {
        System.out.println("getIdtipo");
        Tipo instance = new Tipo();
        int expResult = 0;
        int result = instance.getIdtipo();
        assertEquals(expResult, result);
        // TODO review the generated test code and remove the default call to fail.
        fail("The test case is a prototype.");
    }

    /**
     * Test of setIdtipo method, of class Tipo.
     */
    @Test
    public void testSetIdtipo() {
        System.out.println("setIdtipo");
        int idtipo = 0;
        Tipo instance = new Tipo();
        instance.setIdtipo(idtipo);
        // TODO review the generated test code and remove the default call to fail.
        fail("The test case is a prototype.");
    }

    /**
     * Test of getDescricion method, of class Tipo.
     */
    @Test
    public void testGetDescricion() {
        System.out.println("getDescricion");
        Tipo instance = new Tipo();
        String expResult = "";
        String result = instance.getDescricion();
        assertEquals(expResult, result);
        // TODO review the generated test code and remove the default call to fail.
        fail("The test case is a prototype.");
    }

    /**
     * Test of setDescricion method, of class Tipo.
     */
    @Test
    public void testSetDescricion() {
        System.out.println("setDescricion");
        String descricion = "";
        Tipo instance = new Tipo();
        instance.setDescricion(descricion);
        // TODO review the generated test code and remove the default call to fail.
        fail("The test case is a prototype.");
    }
    
}
