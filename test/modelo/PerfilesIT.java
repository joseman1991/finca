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
public class PerfilesIT {
    
    public PerfilesIT() {
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
     * Test of getIdperfil method, of class Perfiles.
     */
    @Test
    public void testGetIdperfil() {
        System.out.println("getIdperfil");
        Perfiles instance = new Perfiles();
        int expResult = 0;
        int result = instance.getIdperfil();
        assertEquals(expResult, result);
        // TODO review the generated test code and remove the default call to fail.
        fail("The test case is a prototype.");
    }

    /**
     * Test of setIdperfil method, of class Perfiles.
     */
    @Test
    public void testSetIdperfil() {
        System.out.println("setIdperfil");
        int idperfil = 0;
        Perfiles instance = new Perfiles();
        instance.setIdperfil(idperfil);
        // TODO review the generated test code and remove the default call to fail.
        fail("The test case is a prototype.");
    }

    /**
     * Test of getDescripcion method, of class Perfiles.
     */
    @Test
    public void testGetDescripcion() {
        System.out.println("getDescripcion");
        Perfiles instance = new Perfiles();
        String expResult = "";
        String result = instance.getDescripcion();
        assertEquals(expResult, result);
        // TODO review the generated test code and remove the default call to fail.
        fail("The test case is a prototype.");
    }

    /**
     * Test of setDescripcion method, of class Perfiles.
     */
    @Test
    public void testSetDescripcion() {
        System.out.println("setDescripcion");
        String descripcion = "";
        Perfiles instance = new Perfiles();
        instance.setDescripcion(descripcion);
        // TODO review the generated test code and remove the default call to fail.
        fail("The test case is a prototype.");
    }
    
}
