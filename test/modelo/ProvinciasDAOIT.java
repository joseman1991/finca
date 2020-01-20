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
public class ProvinciasDAOIT {
    
    public ProvinciasDAOIT() {
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
     * Test of obtnerListas method, of class ProvinciasDAO.
     */
    @Test
    public void testObtnerListas() throws Exception {
        System.out.println("obtnerListas");
        ProvinciasDAO instance = null;
        instance.obtnerListas();
        // TODO review the generated test code and remove the default call to fail.
        fail("The test case is a prototype.");
    }

    /**
     * Test of obtenerProvincia method, of class ProvinciasDAO.
     */
    @Test
    public void testObtenerProvincia() throws Exception {
        System.out.println("obtenerProvincia");
        String idprovincia = "";
        ProvinciasDAO instance = null;
        Provincias expResult = null;
        Provincias result = instance.obtenerProvincia(idprovincia);
        assertEquals(expResult, result);
        // TODO review the generated test code and remove the default call to fail.
        fail("The test case is a prototype.");
    }
    
}
