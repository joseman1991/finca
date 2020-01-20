/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package modelo;

import java.util.List;
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
public class CantonesDAOIT {
    
    public CantonesDAOIT() {
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
     * Test of obtenerRegistro method, of class CantonesDAO.
     */
    @Test
    public void testObtenerRegistro() throws Exception {
        System.out.println("obtenerRegistro");
        Cantones dato = null;
        CantonesDAO instance = new CantonesDAO();
        Cantones expResult = null;
        Cantones result = instance.obtenerRegistro(dato);
        assertEquals(expResult, result);
        // TODO review the generated test code and remove the default call to fail.
        fail("The test case is a prototype.");
    }

    /**
     * Test of obtenerLista method, of class CantonesDAO.
     */
    @Test
    public void testObtenerLista() throws Exception {
        System.out.println("obtenerLista");
        List<Cantones> lista = null;
        Cantones dato = null;
        CantonesDAO instance = new CantonesDAO();
        instance.obtenerLista(lista, dato);
        // TODO review the generated test code and remove the default call to fail.
        fail("The test case is a prototype.");
    }
    
}
