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
public class ConexionMySQLIT {
    
    public ConexionMySQLIT() {
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
     * Test of abrirConexion method, of class ConexionMySQL.
     */
    @Test
    public void testAbrirConexion() throws Exception {
        System.out.println("abrirConexion");
        ConexionMySQL instance = new ConexionMySQL();
        instance.abrirConexion();
        // TODO review the generated test code and remove the default call to fail.
        fail("The test case is a prototype.");
    }

    /**
     * Test of cerrarConexion method, of class ConexionMySQL.
     */
    @Test
    public void testCerrarConexion() {
        System.out.println("cerrarConexion");
        ConexionMySQL instance = new ConexionMySQL();
        instance.cerrarConexion();
        // TODO review the generated test code and remove the default call to fail.
        fail("The test case is a prototype.");
    }

    /**
     * Test of insertarRegistro method, of class ConexionMySQL.
     */
    @Test
    public void testInsertarRegistro() throws Exception {
        System.out.println("insertarRegistro");
        Object registro = null;
        ConexionMySQL instance = new ConexionMySQL();
        int expResult = 0;
        int result = instance.insertarRegistro(registro);
        assertEquals(expResult, result);
        // TODO review the generated test code and remove the default call to fail.
        fail("The test case is a prototype.");
    }

    /**
     * Test of actualizarRegistro method, of class ConexionMySQL.
     */
    @Test
    public void testActualizarRegistro() throws Exception {
        System.out.println("actualizarRegistro");
        Object registro = null;
        ConexionMySQL instance = new ConexionMySQL();
        int expResult = 0;
        int result = instance.actualizarRegistro(registro);
        assertEquals(expResult, result);
        // TODO review the generated test code and remove the default call to fail.
        fail("The test case is a prototype.");
    }

    /**
     * Test of eliminarRegistro method, of class ConexionMySQL.
     */
    @Test
    public void testEliminarRegistro() throws Exception {
        System.out.println("eliminarRegistro");
        Object registro = null;
        ConexionMySQL instance = new ConexionMySQL();
        int expResult = 0;
        int result = instance.eliminarRegistro(registro);
        assertEquals(expResult, result);
        // TODO review the generated test code and remove the default call to fail.
        fail("The test case is a prototype.");
    }

    /**
     * Test of obtenerRegistro method, of class ConexionMySQL.
     */
    @Test
    public void testObtenerRegistro() throws Exception {
        System.out.println("obtenerRegistro");
        Object dato = null;
        ConexionMySQL instance = new ConexionMySQL();
        Object expResult = null;
        Object result = instance.obtenerRegistro(dato);
        assertEquals(expResult, result);
        // TODO review the generated test code and remove the default call to fail.
        fail("The test case is a prototype.");
    }

    /**
     * Test of obtenerLista method, of class ConexionMySQL.
     */
    @Test
    public void testObtenerLista_List() throws Exception {
        System.out.println("obtenerLista");
        ConexionMySQL instance = new ConexionMySQL();
        instance.obtenerLista(null);
        // TODO review the generated test code and remove the default call to fail.
        fail("The test case is a prototype.");
    }

    /**
     * Test of obtenerLista method, of class ConexionMySQL.
     */
    @Test
    public void testObtenerLista_List_GenericType() throws Exception {
        System.out.println("obtenerLista");
        ConexionMySQL instance = new ConexionMySQL();
        instance.obtenerLista(null);
        // TODO review the generated test code and remove the default call to fail.
        fail("The test case is a prototype.");
    }
    
}
