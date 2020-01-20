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
public class MantenimientoDAOIT {
    
    public MantenimientoDAOIT() {
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
     * Test of insertarMantenimiento method, of class MantenimientoDAO.
     */
    @Test
    public void testInsertarMantenimiento() throws Exception {
        System.out.println("insertarMantenimiento");
        Mantenimiento m = null;
        MantenimientoDAO instance = new MantenimientoDAO();
        int expResult = 0;
        int result = instance.insertarMantenimiento(m);
        assertEquals(expResult, result);
        // TODO review the generated test code and remove the default call to fail.
        fail("The test case is a prototype.");
    }

    /**
     * Test of obtenerMantenimiento method, of class MantenimientoDAO.
     */
    @Test
    public void testObtenerMantenimiento() throws Exception {
        System.out.println("obtenerMantenimiento");
        int idmantenimiento = 0;
        MantenimientoDAO instance = new MantenimientoDAO();
        Mantenimiento expResult = null;
        Mantenimiento result = instance.obtenerMantenimiento(idmantenimiento);
        assertEquals(expResult, result);
        // TODO review the generated test code and remove the default call to fail.
        fail("The test case is a prototype.");
    }

    /**
     * Test of obtenerLista method, of class MantenimientoDAO.
     */
    @Test
    public void testObtenerLista_List() throws Exception {
        System.out.println("obtenerLista");
        List lista = null;
        MantenimientoDAO instance = new MantenimientoDAO();
        instance.obtenerLista(lista);
        // TODO review the generated test code and remove the default call to fail.
        fail("The test case is a prototype.");
    }

    /**
     * Test of actualizarRegistro method, of class MantenimientoDAO.
     */
    @Test
    public void testActualizarRegistro() throws Exception {
        System.out.println("actualizarRegistro");
        Mantenimiento registro = null;
        MantenimientoDAO instance = new MantenimientoDAO();
        int expResult = 0;
        int result = instance.actualizarRegistro(registro);
        assertEquals(expResult, result);
        // TODO review the generated test code and remove the default call to fail.
        fail("The test case is a prototype.");
    }

    /**
     * Test of obtenerListaMantenimiento method, of class MantenimientoDAO.
     */
    @Test
    public void testObtenerListaMantenimiento() throws Exception {
        System.out.println("obtenerListaMantenimiento");
        MantenimientoDAO instance = new MantenimientoDAO();
        instance.obtenerListaMantenimiento();
        // TODO review the generated test code and remove the default call to fail.
        fail("The test case is a prototype.");
    }

    /**
     * Test of obtenerLista method, of class MantenimientoDAO.
     */
    @Test
    public void testObtenerLista_List_Mantenimiento() throws Exception {
        System.out.println("obtenerLista");
        List<Mantenimiento> lista = null;
        Mantenimiento dato = null;
        MantenimientoDAO instance = new MantenimientoDAO();
        instance.obtenerLista(lista, dato);
        // TODO review the generated test code and remove the default call to fail.
        fail("The test case is a prototype.");
    }

    /**
     * Test of obtenerListaPorColmena method, of class MantenimientoDAO.
     */
    @Test
    public void testObtenerListaPorColmena() throws Exception {
        System.out.println("obtenerListaPorColmena");
        List<Mantenimiento> lista = null;
        Mantenimiento c = null;
        MantenimientoDAO instance = new MantenimientoDAO();
        instance.obtenerListaPorColmena(lista, c);
        // TODO review the generated test code and remove the default call to fail.
        fail("The test case is a prototype.");
    }

    /**
     * Test of obtenerListaPorColmenaFecha method, of class MantenimientoDAO.
     */
    @Test
    public void testObtenerListaPorColmenaFecha() throws Exception {
        System.out.println("obtenerListaPorColmenaFecha");
        List<Mantenimiento> lista = null;
        Mantenimiento c = null;
        MantenimientoDAO instance = new MantenimientoDAO();
        instance.obtenerListaPorColmenaFecha(lista, c);
        // TODO review the generated test code and remove the default call to fail.
        fail("The test case is a prototype.");
    }

    /**
     * Test of generarReporte method, of class MantenimientoDAO.
     */
    @Test
    public void testGenerarReporte() throws Exception {
        System.out.println("generarReporte");
        String ruta = "";
        Mantenimiento co = null;
        MantenimientoDAO instance = new MantenimientoDAO();
        int expResult = 0;
        int result = instance.generarReporte(ruta, co);
        assertEquals(expResult, result);
        // TODO review the generated test code and remove the default call to fail.
        fail("The test case is a prototype.");
    }

    /**
     * Test of generarReporteM method, of class MantenimientoDAO.
     */
    @Test
    public void testGenerarReporteM() throws Exception {
        System.out.println("generarReporteM");
        String ruta = "";
        Mantenimiento co = null;
        MantenimientoDAO instance = new MantenimientoDAO();
        int expResult = 0;
        int result = instance.generarReporteM(ruta, co);
        assertEquals(expResult, result);
        // TODO review the generated test code and remove the default call to fail.
        fail("The test case is a prototype.");
    }
    
}
