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
public class SectoresDAOIT {
    
    public SectoresDAOIT() {
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
     * Test of insertarSector method, of class SectoresDAO.
     */
    @Test
    public void testInsertarSector() throws Exception {
        System.out.println("insertarSector");
        Sectores sector = null;
        SectoresDAO instance = null;
        int expResult = 0;
        int result = instance.insertarSector(sector);
        assertEquals(expResult, result);
        // TODO review the generated test code and remove the default call to fail.
        fail("The test case is a prototype.");
    }

    /**
     * Test of actualizarSector method, of class SectoresDAO.
     */
    @Test
    public void testActualizarSector() throws Exception {
        System.out.println("actualizarSector");
        Sectores sector = null;
        SectoresDAO instance = null;
        int expResult = 0;
        int result = instance.actualizarSector(sector);
        assertEquals(expResult, result);
        // TODO review the generated test code and remove the default call to fail.
        fail("The test case is a prototype.");
    }

    /**
     * Test of obtenerSector method, of class SectoresDAO.
     */
    @Test
    public void testObtenerSector() throws Exception {
        System.out.println("obtenerSector");
        int idsector = 0;
        SectoresDAO instance = null;
        Sectores expResult = null;
        Sectores result = instance.obtenerSector(idsector);
        assertEquals(expResult, result);
        // TODO review the generated test code and remove the default call to fail.
        fail("The test case is a prototype.");
    }

    /**
     * Test of obtenerSectors method, of class SectoresDAO.
     */
    @Test
    public void testObtenerSectors() throws Exception {
        System.out.println("obtenerSectors");
        SectoresDAO instance = null;
        instance.obtenerSectors();
        // TODO review the generated test code and remove the default call to fail.
        fail("The test case is a prototype.");
    }
    
}
