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
public class UsuariosIT {
    
    public UsuariosIT() {
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
     * Test of getClave method, of class Usuarios.
     */
    @Test
    public void testGetClave() {
        System.out.println("getClave");
        Usuarios instance = new Usuarios();
        String expResult = "";
        String result = instance.getClave();
        assertEquals(expResult, result);
        // TODO review the generated test code and remove the default call to fail.
        fail("The test case is a prototype.");
    }

    /**
     * Test of setClave method, of class Usuarios.
     */
    @Test
    public void testSetClave() {
        System.out.println("setClave");
        String clave = "";
        Usuarios instance = new Usuarios();
        instance.setClave(clave);
        // TODO review the generated test code and remove the default call to fail.
        fail("The test case is a prototype.");
    }

    /**
     * Test of getNombre method, of class Usuarios.
     */
    @Test
    public void testGetNombre() {
        System.out.println("getNombre");
        Usuarios instance = new Usuarios();
        String expResult = "";
        String result = instance.getNombre();
        assertEquals(expResult, result);
        // TODO review the generated test code and remove the default call to fail.
        fail("The test case is a prototype.");
    }

    /**
     * Test of setNombre method, of class Usuarios.
     */
    @Test
    public void testSetNombre() {
        System.out.println("setNombre");
        String nombre = "";
        Usuarios instance = new Usuarios();
        instance.setNombre(nombre);
        // TODO review the generated test code and remove the default call to fail.
        fail("The test case is a prototype.");
    }

    /**
     * Test of getApellido method, of class Usuarios.
     */
    @Test
    public void testGetApellido() {
        System.out.println("getApellido");
        Usuarios instance = new Usuarios();
        String expResult = "";
        String result = instance.getApellido();
        assertEquals(expResult, result);
        // TODO review the generated test code and remove the default call to fail.
        fail("The test case is a prototype.");
    }

    /**
     * Test of setApellido method, of class Usuarios.
     */
    @Test
    public void testSetApellido() {
        System.out.println("setApellido");
        String apellido = "";
        Usuarios instance = new Usuarios();
        instance.setApellido(apellido);
        // TODO review the generated test code and remove the default call to fail.
        fail("The test case is a prototype.");
    }

    /**
     * Test of getEmail method, of class Usuarios.
     */
    @Test
    public void testGetEmail() {
        System.out.println("getEmail");
        Usuarios instance = new Usuarios();
        String expResult = "";
        String result = instance.getEmail();
        assertEquals(expResult, result);
        // TODO review the generated test code and remove the default call to fail.
        fail("The test case is a prototype.");
    }

    /**
     * Test of setEmail method, of class Usuarios.
     */
    @Test
    public void testSetEmail() {
        System.out.println("setEmail");
        String email = "";
        Usuarios instance = new Usuarios();
        instance.setEmail(email);
        // TODO review the generated test code and remove the default call to fail.
        fail("The test case is a prototype.");
    }

    /**
     * Test of getIdusuario method, of class Usuarios.
     */
    @Test
    public void testGetIdusuario() {
        System.out.println("getIdusuario");
        Usuarios instance = new Usuarios();
        int expResult = 0;
        int result = instance.getIdusuario();
        assertEquals(expResult, result);
        // TODO review the generated test code and remove the default call to fail.
        fail("The test case is a prototype.");
    }

    /**
     * Test of setIdusuario method, of class Usuarios.
     */
    @Test
    public void testSetIdusuario() {
        System.out.println("setIdusuario");
        int idusuario = 0;
        Usuarios instance = new Usuarios();
        instance.setIdusuario(idusuario);
        // TODO review the generated test code and remove the default call to fail.
        fail("The test case is a prototype.");
    }

    /**
     * Test of getIdperfil method, of class Usuarios.
     */
    @Test
    public void testGetIdperfil() {
        System.out.println("getIdperfil");
        Usuarios instance = new Usuarios();
        int expResult = 0;
        int result = instance.getIdperfil();
        assertEquals(expResult, result);
        // TODO review the generated test code and remove the default call to fail.
        fail("The test case is a prototype.");
    }

    /**
     * Test of setIdperfil method, of class Usuarios.
     */
    @Test
    public void testSetIdperfil() throws Exception {
        System.out.println("setIdperfil");
        int idperfil = 0;
        Usuarios instance = new Usuarios();
        instance.setIdperfil(idperfil);
        // TODO review the generated test code and remove the default call to fail.
        fail("The test case is a prototype.");
    }

    /**
     * Test of getPerfil method, of class Usuarios.
     */
    @Test
    public void testGetPerfil() {
        System.out.println("getPerfil");
        Usuarios instance = new Usuarios();
        Perfiles expResult = null;
        Perfiles result = instance.getPerfil();
        assertEquals(expResult, result);
        // TODO review the generated test code and remove the default call to fail.
        fail("The test case is a prototype.");
    }

    /**
     * Test of setPerfil method, of class Usuarios.
     */
    @Test
    public void testSetPerfil() {
        System.out.println("setPerfil");
        Perfiles perfil = null;
        Usuarios instance = new Usuarios();
        instance.setPerfil(perfil);
        // TODO review the generated test code and remove the default call to fail.
        fail("The test case is a prototype.");
    }

    /**
     * Test of getFullname method, of class Usuarios.
     */
    @Test
    public void testGetFullname() {
        System.out.println("getFullname");
        Usuarios instance = new Usuarios();
        String expResult = "";
        String result = instance.getFullname();
        assertEquals(expResult, result);
        // TODO review the generated test code and remove the default call to fail.
        fail("The test case is a prototype.");
    }

    /**
     * Test of getNombre2 method, of class Usuarios.
     */
    @Test
    public void testGetNombre2() {
        System.out.println("getNombre2");
        Usuarios instance = new Usuarios();
        String expResult = "";
        String result = instance.getNombre2();
        assertEquals(expResult, result);
        // TODO review the generated test code and remove the default call to fail.
        fail("The test case is a prototype.");
    }

    /**
     * Test of setNombre2 method, of class Usuarios.
     */
    @Test
    public void testSetNombre2() {
        System.out.println("setNombre2");
        String nombre2 = "";
        Usuarios instance = new Usuarios();
        instance.setNombre2(nombre2);
        // TODO review the generated test code and remove the default call to fail.
        fail("The test case is a prototype.");
    }

    /**
     * Test of getApellido2 method, of class Usuarios.
     */
    @Test
    public void testGetApellido2() {
        System.out.println("getApellido2");
        Usuarios instance = new Usuarios();
        String expResult = "";
        String result = instance.getApellido2();
        assertEquals(expResult, result);
        // TODO review the generated test code and remove the default call to fail.
        fail("The test case is a prototype.");
    }

    /**
     * Test of setApellido2 method, of class Usuarios.
     */
    @Test
    public void testSetApellido2() {
        System.out.println("setApellido2");
        String apellido2 = "";
        Usuarios instance = new Usuarios();
        instance.setApellido2(apellido2);
        // TODO review the generated test code and remove the default call to fail.
        fail("The test case is a prototype.");
    }

    /**
     * Test of getCedula method, of class Usuarios.
     */
    @Test
    public void testGetCedula() {
        System.out.println("getCedula");
        Usuarios instance = new Usuarios();
        String expResult = "";
        String result = instance.getCedula();
        assertEquals(expResult, result);
        // TODO review the generated test code and remove the default call to fail.
        fail("The test case is a prototype.");
    }

    /**
     * Test of setCedula method, of class Usuarios.
     */
    @Test
    public void testSetCedula() {
        System.out.println("setCedula");
        String cedula = "";
        Usuarios instance = new Usuarios();
        instance.setCedula(cedula);
        // TODO review the generated test code and remove the default call to fail.
        fail("The test case is a prototype.");
    }

    /**
     * Test of getDireccion method, of class Usuarios.
     */
    @Test
    public void testGetDireccion() {
        System.out.println("getDireccion");
        Usuarios instance = new Usuarios();
        String expResult = "";
        String result = instance.getDireccion();
        assertEquals(expResult, result);
        // TODO review the generated test code and remove the default call to fail.
        fail("The test case is a prototype.");
    }

    /**
     * Test of setDireccion method, of class Usuarios.
     */
    @Test
    public void testSetDireccion() {
        System.out.println("setDireccion");
        String direccion = "";
        Usuarios instance = new Usuarios();
        instance.setDireccion(direccion);
        // TODO review the generated test code and remove the default call to fail.
        fail("The test case is a prototype.");
    }

    /**
     * Test of getTelefono method, of class Usuarios.
     */
    @Test
    public void testGetTelefono() {
        System.out.println("getTelefono");
        Usuarios instance = new Usuarios();
        String expResult = "";
        String result = instance.getTelefono();
        assertEquals(expResult, result);
        // TODO review the generated test code and remove the default call to fail.
        fail("The test case is a prototype.");
    }

    /**
     * Test of setTelefono method, of class Usuarios.
     */
    @Test
    public void testSetTelefono() {
        System.out.println("setTelefono");
        String telefono = "";
        Usuarios instance = new Usuarios();
        instance.setTelefono(telefono);
        // TODO review the generated test code and remove the default call to fail.
        fail("The test case is a prototype.");
    }

    /**
     * Test of getIdestado method, of class Usuarios.
     */
    @Test
    public void testGetIdestado() {
        System.out.println("getIdestado");
        Usuarios instance = new Usuarios();
        int expResult = 0;
        int result = instance.getIdestado();
        assertEquals(expResult, result);
        // TODO review the generated test code and remove the default call to fail.
        fail("The test case is a prototype.");
    }

    /**
     * Test of setIdestado method, of class Usuarios.
     */
    @Test
    public void testSetIdestado() throws Exception {
        System.out.println("setIdestado");
        int idestado = 0;
        Usuarios instance = new Usuarios();
        instance.setIdestado(idestado);
        // TODO review the generated test code and remove the default call to fail.
        fail("The test case is a prototype.");
    }

    /**
     * Test of getEstados method, of class Usuarios.
     */
    @Test
    public void testGetEstados() {
        System.out.println("getEstados");
        Usuarios instance = new Usuarios();
        Estados expResult = null;
        Estados result = instance.getEstados();
        assertEquals(expResult, result);
        // TODO review the generated test code and remove the default call to fail.
        fail("The test case is a prototype.");
    }

    /**
     * Test of setEstados method, of class Usuarios.
     */
    @Test
    public void testSetEstados() {
        System.out.println("setEstados");
        Estados estados = null;
        Usuarios instance = new Usuarios();
        instance.setEstados(estados);
        // TODO review the generated test code and remove the default call to fail.
        fail("The test case is a prototype.");
    }
    
}
