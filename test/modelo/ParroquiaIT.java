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
public class ParroquiaIT {
    
    public ParroquiaIT() {
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
     * Test of getIdcanton method, of class Parroquia.
     */
    @Test
    public void testGetIdcanton() {
        System.out.println("getIdcanton");
        Parroquia instance = new Parroquia();
        String expResult = "";
        String result = instance.getIdcanton();
        assertEquals(expResult, result);
        // TODO review the generated test code and remove the default call to fail.
        fail("The test case is a prototype.");
    }

    /**
     * Test of setIdcanton method, of class Parroquia.
     */
    @Test
    public void testSetIdcanton() throws Exception {
        System.out.println("setIdcanton");
        String idcanton = "";
        Parroquia instance = new Parroquia();
        instance.setIdcanton(idcanton);
        // TODO review the generated test code and remove the default call to fail.
        fail("The test case is a prototype.");
    }

    /**
     * Test of getCanton method, of class Parroquia.
     */
    @Test
    public void testGetCanton() {
        System.out.println("getCanton");
        Parroquia instance = new Parroquia();
        Cantones expResult = null;
        Cantones result = instance.getCanton();
        assertEquals(expResult, result);
        // TODO review the generated test code and remove the default call to fail.
        fail("The test case is a prototype.");
    }

    /**
     * Test of setCanton method, of class Parroquia.
     */
    @Test
    public void testSetCanton() {
        System.out.println("setCanton");
        Cantones canton = null;
        Parroquia instance = new Parroquia();
        instance.setCanton(canton);
        // TODO review the generated test code and remove the default call to fail.
        fail("The test case is a prototype.");
    }

    /**
     * Test of getIdparroquia method, of class Parroquia.
     */
    @Test
    public void testGetIdparroquia() {
        System.out.println("getIdparroquia");
        Parroquia instance = new Parroquia();
        String expResult = "";
        String result = instance.getIdparroquia();
        assertEquals(expResult, result);
        // TODO review the generated test code and remove the default call to fail.
        fail("The test case is a prototype.");
    }

    /**
     * Test of setIdparroquia method, of class Parroquia.
     */
    @Test
    public void testSetIdparroquia() {
        System.out.println("setIdparroquia");
        String idparroquia = "";
        Parroquia instance = new Parroquia();
        instance.setIdparroquia(idparroquia);
        // TODO review the generated test code and remove the default call to fail.
        fail("The test case is a prototype.");
    }

    /**
     * Test of getDescripcion method, of class Parroquia.
     */
    @Test
    public void testGetDescripcion() {
        System.out.println("getDescripcion");
        Parroquia instance = new Parroquia();
        String expResult = "";
        String result = instance.getDescripcion();
        assertEquals(expResult, result);
        // TODO review the generated test code and remove the default call to fail.
        fail("The test case is a prototype.");
    }

    /**
     * Test of setDescripcion method, of class Parroquia.
     */
    @Test
    public void testSetDescripcion() {
        System.out.println("setDescripcion");
        String descripcion = "";
        Parroquia instance = new Parroquia();
        instance.setDescripcion(descripcion);
        // TODO review the generated test code and remove the default call to fail.
        fail("The test case is a prototype.");
    }
    
}
