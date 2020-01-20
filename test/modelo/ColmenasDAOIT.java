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
public class ColmenasDAOIT {
    
    public ColmenasDAOIT() {
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
     * Test of insertarColmena method, of class ColmenasDAO.
     */
    @Test
    public void testInsertarColmena() throws Exception {
        System.out.println("insertarColmena");
        Colmenas colmena = null;
        ColmenasDAO instance = new ColmenasDAO();
        int expResult = 0;
        int result = instance.insertarColmena(colmena);
        assertEquals(expResult, result);
        // TODO review the generated test code and remove the default call to fail.
        fail("The test case is a prototype.");
    }

    /**
     * Test of obtenerListaColmenas method, of class ColmenasDAO.
     */
    @Test
    public void testObtenerListaColmenas() throws Exception {
        System.out.println("obtenerListaColmenas");
        ColmenasDAO instance = new ColmenasDAO();
        instance.obtenerListaColmenas();
        // TODO review the generated test code and remove the default call to fail.
        fail("The test case is a prototype.");
    }

    /**
     * Test of obtenerRegistro method, of class ColmenasDAO.
     */
    @Test
    public void testObtenerRegistro() throws Exception {
        System.out.println("obtenerRegistro");
        Colmenas dato = null;
        ColmenasDAO instance = new ColmenasDAO();
        Colmenas expResult = null;
        Colmenas result = instance.obtenerRegistro(dato);
        assertEquals(expResult, result);
        // TODO review the generated test code and remove the default call to fail.
        fail("The test case is a prototype.");
    }

    /**
     * Test of actualizarRegistro method, of class ColmenasDAO.
     */
    @Test
    public void testActualizarRegistro() throws Exception {
        System.out.println("actualizarRegistro");
        Colmenas registro = null;
        ColmenasDAO instance = new ColmenasDAO();
        int expResult = 0;
        int result = instance.actualizarRegistro(registro);
        assertEquals(expResult, result);
        // TODO review the generated test code and remove the default call to fail.
        fail("The test case is a prototype.");
    }
    
}
