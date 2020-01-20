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
public class ProvinciasIT {
    
    public ProvinciasIT() {
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
     * Test of getIdprovincia method, of class Provincias.
     */
    @Test
    public void testGetIdprovincia() {
        System.out.println("getIdprovincia");
        Provincias instance = new Provincias();
        String expResult = "";
        String result = instance.getIdprovincia();
        assertEquals(expResult, result);
        // TODO review the generated test code and remove the default call to fail.
        fail("The test case is a prototype.");
    }

    /**
     * Test of setIdprovincia method, of class Provincias.
     */
    @Test
    public void testSetIdprovincia() {
        System.out.println("setIdprovincia");
        String idprovincia = "";
        Provincias instance = new Provincias();
        instance.setIdprovincia(idprovincia);
        // TODO review the generated test code and remove the default call to fail.
        fail("The test case is a prototype.");
    }

    /**
     * Test of getNombreprovincia method, of class Provincias.
     */
    @Test
    public void testGetNombreprovincia() {
        System.out.println("getNombreprovincia");
        Provincias instance = new Provincias();
        String expResult = "";
        String result = instance.getNombreprovincia();
        assertEquals(expResult, result);
        // TODO review the generated test code and remove the default call to fail.
        fail("The test case is a prototype.");
    }

    /**
     * Test of setNombreprovincia method, of class Provincias.
     */
    @Test
    public void testSetNombreprovincia() {
        System.out.println("setNombreprovincia");
        String nombreprovincia = "";
        Provincias instance = new Provincias();
        instance.setNombreprovincia(nombreprovincia);
        // TODO review the generated test code and remove the default call to fail.
        fail("The test case is a prototype.");
    }
    
}
