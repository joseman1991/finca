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
public class CantonesIT {
    
    public CantonesIT() {
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
     * Test of getIdcanton method, of class Cantones.
     */
    @Test
    public void testGetIdcanton() {
        System.out.println("getIdcanton");
        Cantones instance = new Cantones();
        String expResult = "";
        String result = instance.getIdcanton();
        assertEquals(expResult, result);
        // TODO review the generated test code and remove the default call to fail.
        fail("The test case is a prototype.");
    }

    /**
     * Test of setIdcanton method, of class Cantones.
     */
    @Test
    public void testSetIdcanton() {
        System.out.println("setIdcanton");
        String idcanton = "";
        Cantones instance = new Cantones();
        instance.setIdcanton(idcanton);
        // TODO review the generated test code and remove the default call to fail.
        fail("The test case is a prototype.");
    }

    /**
     * Test of getNombrecanton method, of class Cantones.
     */
    @Test
    public void testGetNombrecanton() {
        System.out.println("getNombrecanton");
        Cantones instance = new Cantones();
        String expResult = "";
        String result = instance.getNombrecanton();
        assertEquals(expResult, result);
        // TODO review the generated test code and remove the default call to fail.
        fail("The test case is a prototype.");
    }

    /**
     * Test of setNombrecanton method, of class Cantones.
     */
    @Test
    public void testSetNombrecanton() {
        System.out.println("setNombrecanton");
        String nombrecanton = "";
        Cantones instance = new Cantones();
        instance.setNombrecanton(nombrecanton);
        // TODO review the generated test code and remove the default call to fail.
        fail("The test case is a prototype.");
    }

    /**
     * Test of getIdprovincia method, of class Cantones.
     */
    @Test
    public void testGetIdprovincia() {
        System.out.println("getIdprovincia");
        Cantones instance = new Cantones();
        String expResult = "";
        String result = instance.getIdprovincia();
        assertEquals(expResult, result);
        // TODO review the generated test code and remove the default call to fail.
        fail("The test case is a prototype.");
    }

    /**
     * Test of setIdprovincia method, of class Cantones.
     */
    @Test
    public void testSetIdprovincia() throws Exception {
        System.out.println("setIdprovincia");
        String idprovincia = "";
        Cantones instance = new Cantones();
        instance.setIdprovincia(idprovincia);
        // TODO review the generated test code and remove the default call to fail.
        fail("The test case is a prototype.");
    }

    /**
     * Test of getProvincia method, of class Cantones.
     */
    @Test
    public void testGetProvincia() {
        System.out.println("getProvincia");
        Cantones instance = new Cantones();
        Provincias expResult = null;
        Provincias result = instance.getProvincia();
        assertEquals(expResult, result);
        // TODO review the generated test code and remove the default call to fail.
        fail("The test case is a prototype.");
    }

    /**
     * Test of setProvincia method, of class Cantones.
     */
    @Test
    public void testSetProvincia() {
        System.out.println("setProvincia");
        Provincias provincia = null;
        Cantones instance = new Cantones();
        instance.setProvincia(provincia);
        // TODO review the generated test code and remove the default call to fail.
        fail("The test case is a prototype.");
    }
    
}
