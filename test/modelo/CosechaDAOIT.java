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
public class CosechaDAOIT {
    
    public CosechaDAOIT() {
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
     * Test of insertarRegistro method, of class CosechaDAO.
     */
    @Test
    public void testInsertarRegistro() throws Exception {
        System.out.println("insertarRegistro");
        Cosecha registro = null;
        CosechaDAO instance = new CosechaDAO();
        int expResult = 0;
        int result = instance.insertarRegistro(registro);
        assertEquals(expResult, result);
        // TODO review the generated test code and remove the default call to fail.
        fail("The test case is a prototype.");
    }

    /**
     * Test of actualizarRegistro method, of class CosechaDAO.
     */
    @Test
    public void testActualizarRegistro() throws Exception {
        System.out.println("actualizarRegistro");
        Cosecha registro = null;
        CosechaDAO instance = new CosechaDAO();
        int expResult = 0;
        int result = instance.actualizarRegistro(registro);
        assertEquals(expResult, result);
        // TODO review the generated test code and remove the default call to fail.
        fail("The test case is a prototype.");
    }

    /**
     * Test of obtenerRegistro method, of class CosechaDAO.
     */
    @Test
    public void testObtenerRegistro() throws Exception {
        System.out.println("obtenerRegistro");
        Cosecha dato = null;
        CosechaDAO instance = new CosechaDAO();
        Cosecha expResult = null;
        Cosecha result = instance.obtenerRegistro(dato);
        assertEquals(expResult, result);
        // TODO review the generated test code and remove the default call to fail.
        fail("The test case is a prototype.");
    }

    /**
     * Test of obtenerLista method, of class CosechaDAO.
     */
    @Test
    public void testObtenerLista_List() throws Exception {
        System.out.println("obtenerLista");
        List<Cosecha> lista = null;
        CosechaDAO instance = new CosechaDAO();
        instance.obtenerLista(lista);
        // TODO review the generated test code and remove the default call to fail.
        fail("The test case is a prototype.");
    }

    /**
     * Test of obtenerLista method, of class CosechaDAO.
     */
    @Test
    public void testObtenerLista_List_Cosecha() throws Exception {
        System.out.println("obtenerLista");
        List<Cosecha> lista = null;
        Cosecha c = null;
        CosechaDAO instance = new CosechaDAO();
        instance.obtenerLista(lista, c);
        // TODO review the generated test code and remove the default call to fail.
        fail("The test case is a prototype.");
    }

    /**
     * Test of obtenerListaPorColmena method, of class CosechaDAO.
     */
    @Test
    public void testObtenerListaPorColmena() throws Exception {
        System.out.println("obtenerListaPorColmena");
        List<Cosecha> lista = null;
        Cosecha c = null;
        CosechaDAO instance = new CosechaDAO();
        instance.obtenerListaPorColmena(lista, c);
        // TODO review the generated test code and remove the default call to fail.
        fail("The test case is a prototype.");
    }

    /**
     * Test of obtenerListaPorColmenaFecha method, of class CosechaDAO.
     */
    @Test
    public void testObtenerListaPorColmenaFecha() throws Exception {
        System.out.println("obtenerListaPorColmenaFecha");
        List<Cosecha> lista = null;
        Cosecha c = null;
        CosechaDAO instance = new CosechaDAO();
        instance.obtenerListaPorColmenaFecha(lista, c);
        // TODO review the generated test code and remove the default call to fail.
        fail("The test case is a prototype.");
    }

    /**
     * Test of generarReporte method, of class CosechaDAO.
     */
    @Test
    public void testGenerarReporte() throws Exception {
        System.out.println("generarReporte");
        String ruta = "";
        Cosecha co = null;
        CosechaDAO instance = new CosechaDAO();
        int expResult = 0;
        int result = instance.generarReporte(ruta, co);
        assertEquals(expResult, result);
        // TODO review the generated test code and remove the default call to fail.
        fail("The test case is a prototype.");
    }

    /**
     * Test of generarReporteC method, of class CosechaDAO.
     */
    @Test
    public void testGenerarReporteC() throws Exception {
        System.out.println("generarReporteC");
        String ruta = "";
        Cosecha co = null;
        CosechaDAO instance = new CosechaDAO();
        int expResult = 0;
        int result = instance.generarReporteC(ruta, co);
        assertEquals(expResult, result);
        // TODO review the generated test code and remove the default call to fail.
        fail("The test case is a prototype.");
    }
    
}
