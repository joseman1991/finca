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
public class UsuarioDAOIT {
    
    public UsuarioDAOIT() {
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
     * Test of obtenerLista method, of class UsuarioDAO.
     */
    @Test
    public void testObtenerLista() throws Exception {
        System.out.println("obtenerLista");
        Usuarios u = null;
        UsuarioDAO instance = new UsuarioDAO();
        instance.obtenerLista(u);
        // TODO review the generated test code and remove the default call to fail.
        fail("The test case is a prototype.");
    }

    /**
     * Test of obtenerListaAdmin method, of class UsuarioDAO.
     */
    @Test
    public void testObtenerListaAdmin() throws Exception {
        System.out.println("obtenerListaAdmin");
        List<Usuarios> lista = null;
        Usuarios u = null;
        UsuarioDAO instance = new UsuarioDAO();
        instance.obtenerListaAdmin(lista, u);
        // TODO review the generated test code and remove the default call to fail.
        fail("The test case is a prototype.");
    }

    /**
     * Test of insertarUsuario method, of class UsuarioDAO.
     */
    @Test
    public void testInsertarUsuario() throws Exception {
        System.out.println("insertarUsuario");
        Usuarios usuario = null;
        UsuarioDAO instance = new UsuarioDAO();
        int expResult = 0;
        int result = instance.insertarUsuario(usuario);
        assertEquals(expResult, result);
        // TODO review the generated test code and remove the default call to fail.
        fail("The test case is a prototype.");
    }

    /**
     * Test of actualizarUsuario method, of class UsuarioDAO.
     */
    @Test
    public void testActualizarUsuario() throws Exception {
        System.out.println("actualizarUsuario");
        Usuarios usuario = null;
        UsuarioDAO instance = new UsuarioDAO();
        int expResult = 0;
        int result = instance.actualizarUsuario(usuario);
        assertEquals(expResult, result);
        // TODO review the generated test code and remove the default call to fail.
        fail("The test case is a prototype.");
    }

    /**
     * Test of actualizarRegistro method, of class UsuarioDAO.
     */
    @Test
    public void testActualizarRegistro() throws Exception {
        System.out.println("actualizarRegistro");
        Usuarios registro = null;
        UsuarioDAO instance = new UsuarioDAO();
        int expResult = 0;
        int result = instance.actualizarRegistro(registro);
        assertEquals(expResult, result);
        // TODO review the generated test code and remove the default call to fail.
        fail("The test case is a prototype.");
    }

    /**
     * Test of obtenerRegistro method, of class UsuarioDAO.
     */
    @Test
    public void testObtenerRegistro() throws Exception {
        System.out.println("obtenerRegistro");
        Usuarios user = null;
        UsuarioDAO instance = new UsuarioDAO();
        Usuarios expResult = null;
        Usuarios result = instance.obtenerRegistro(user);
        assertEquals(expResult, result);
        // TODO review the generated test code and remove the default call to fail.
        fail("The test case is a prototype.");
    }

    /**
     * Test of obtenerUsusario method, of class UsuarioDAO.
     */
    @Test
    public void testObtenerUsusario_Usuarios() throws Exception {
        System.out.println("obtenerUsusario");
        Usuarios user = null;
        UsuarioDAO instance = new UsuarioDAO();
        Usuarios expResult = null;
        Usuarios result = instance.obtenerUsusario(user);
        assertEquals(expResult, result);
        // TODO review the generated test code and remove the default call to fail.
        fail("The test case is a prototype.");
    }

    /**
     * Test of obtenerUsusario method, of class UsuarioDAO.
     */
    @Test
    public void testObtenerUsusario_int() throws Exception {
        System.out.println("obtenerUsusario");
        int idusuario = 0;
        UsuarioDAO instance = new UsuarioDAO();
        Usuarios expResult = null;
        Usuarios result = instance.obtenerUsusario(idusuario);
        assertEquals(expResult, result);
        // TODO review the generated test code and remove the default call to fail.
        fail("The test case is a prototype.");
    }

    /**
     * Test of obtenerUsusario method, of class UsuarioDAO.
     */
    @Test
    public void testObtenerUsusario_String() throws Exception {
        System.out.println("obtenerUsusario");
        String email = "";
        UsuarioDAO instance = new UsuarioDAO();
        Usuarios expResult = null;
        Usuarios result = instance.obtenerUsusario(email);
        assertEquals(expResult, result);
        // TODO review the generated test code and remove the default call to fail.
        fail("The test case is a prototype.");
    }
    
}
