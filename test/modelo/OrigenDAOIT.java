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
public class OrigenDAOIT {
    
    public OrigenDAOIT() {
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
     * Test of obtnerListas method, of class OrigenDAO.
     */
    @Test
    public void testObtnerListas() throws Exception {
        System.out.println("obtnerListas");
        OrigenDAO instance = null;
        instance.obtnerListas();
        // TODO review the generated test code and remove the default call to fail.
        fail("The test case is a prototype.");
    }

    /**
     * Test of obtenerOrigen method, of class OrigenDAO.
     */
    @Test
    public void testObtenerOrigen() throws Exception {
        System.out.println("obtenerOrigen");
        int idorigen = 0;
        OrigenDAO instance = null;
        Origen expResult = null;
        Origen result = instance.obtenerOrigen(idorigen);
        assertEquals(expResult, result);
        // TODO review the generated test code and remove the default call to fail.
        fail("The test case is a prototype.");
    }
    
}
