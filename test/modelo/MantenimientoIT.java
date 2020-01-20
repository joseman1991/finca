/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package modelo;

import java.sql.Date;
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
public class MantenimientoIT {
    
    public MantenimientoIT() {
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
     * Test of getIdmantenimiento method, of class Mantenimiento.
     */
    @Test
    public void testGetIdmantenimiento() {
        System.out.println("getIdmantenimiento");
        Mantenimiento instance = new Mantenimiento();
        int expResult = 0;
        int result = instance.getIdmantenimiento();
        assertEquals(expResult, result);
        // TODO review the generated test code and remove the default call to fail.
        fail("The test case is a prototype.");
    }

    /**
     * Test of setIdmantenimiento method, of class Mantenimiento.
     */
    @Test
    public void testSetIdmantenimiento() {
        System.out.println("setIdmantenimiento");
        int idmantenimiento = 0;
        Mantenimiento instance = new Mantenimiento();
        instance.setIdmantenimiento(idmantenimiento);
        // TODO review the generated test code and remove the default call to fail.
        fail("The test case is a prototype.");
    }

    /**
     * Test of getIdtipo method, of class Mantenimiento.
     */
    @Test
    public void testGetIdtipo() {
        System.out.println("getIdtipo");
        Mantenimiento instance = new Mantenimiento();
        int expResult = 0;
        int result = instance.getIdtipo();
        assertEquals(expResult, result);
        // TODO review the generated test code and remove the default call to fail.
        fail("The test case is a prototype.");
    }

    /**
     * Test of setIdtipo method, of class Mantenimiento.
     */
    @Test
    public void testSetIdtipo() throws Exception {
        System.out.println("setIdtipo");
        int idtipo = 0;
        Mantenimiento instance = new Mantenimiento();
        instance.setIdtipo(idtipo);
        // TODO review the generated test code and remove the default call to fail.
        fail("The test case is a prototype.");
    }

    /**
     * Test of getFecha method, of class Mantenimiento.
     */
    @Test
    public void testGetFecha() {
        System.out.println("getFecha");
        Mantenimiento instance = new Mantenimiento();
        Date expResult = null;
        Date result = instance.getFecha();
        assertEquals(expResult, result);
        // TODO review the generated test code and remove the default call to fail.
        fail("The test case is a prototype.");
    }

    /**
     * Test of setFecha method, of class Mantenimiento.
     */
    @Test
    public void testSetFecha() {
        System.out.println("setFecha");
        String fecha = "";
        Mantenimiento instance = new Mantenimiento();
        instance.setFecha(fecha);
        // TODO review the generated test code and remove the default call to fail.
        fail("The test case is a prototype.");
    }

    /**
     * Test of getIdobrero method, of class Mantenimiento.
     */
    @Test
    public void testGetIdobrero() {
        System.out.println("getIdobrero");
        Mantenimiento instance = new Mantenimiento();
        int expResult = 0;
        int result = instance.getIdobrero();
        assertEquals(expResult, result);
        // TODO review the generated test code and remove the default call to fail.
        fail("The test case is a prototype.");
    }

    /**
     * Test of setIdobrero method, of class Mantenimiento.
     */
    @Test
    public void testSetIdobrero() throws Exception {
        System.out.println("setIdobrero");
        int idobrero = 0;
        Mantenimiento instance = new Mantenimiento();
        instance.setIdobrero(idobrero);
        // TODO review the generated test code and remove the default call to fail.
        fail("The test case is a prototype.");
    }

    /**
     * Test of getIdcolmena method, of class Mantenimiento.
     */
    @Test
    public void testGetIdcolmena() {
        System.out.println("getIdcolmena");
        Mantenimiento instance = new Mantenimiento();
        int expResult = 0;
        int result = instance.getIdcolmena();
        assertEquals(expResult, result);
        // TODO review the generated test code and remove the default call to fail.
        fail("The test case is a prototype.");
    }

    /**
     * Test of setIdcolmena method, of class Mantenimiento.
     */
    @Test
    public void testSetIdcolmena() throws Exception {
        System.out.println("setIdcolmena");
        int idcolmena = 0;
        Mantenimiento instance = new Mantenimiento();
        instance.setIdcolmena(idcolmena);
        // TODO review the generated test code and remove the default call to fail.
        fail("The test case is a prototype.");
    }

    /**
     * Test of getAlimentacion method, of class Mantenimiento.
     */
    @Test
    public void testGetAlimentacion() {
        System.out.println("getAlimentacion");
        Mantenimiento instance = new Mantenimiento();
        int expResult = 0;
        int result = instance.getAlimentacion();
        assertEquals(expResult, result);
        // TODO review the generated test code and remove the default call to fail.
        fail("The test case is a prototype.");
    }

    /**
     * Test of setAlimentacion method, of class Mantenimiento.
     */
    @Test
    public void testSetAlimentacion() {
        System.out.println("setAlimentacion");
        int alimentacion = 0;
        Mantenimiento instance = new Mantenimiento();
        instance.setAlimentacion(alimentacion);
        // TODO review the generated test code and remove the default call to fail.
        fail("The test case is a prototype.");
    }

    /**
     * Test of getColmena method, of class Mantenimiento.
     */
    @Test
    public void testGetColmena() {
        System.out.println("getColmena");
        Mantenimiento instance = new Mantenimiento();
        Colmenas expResult = null;
        Colmenas result = instance.getColmena();
        assertEquals(expResult, result);
        // TODO review the generated test code and remove the default call to fail.
        fail("The test case is a prototype.");
    }

    /**
     * Test of getObrero method, of class Mantenimiento.
     */
    @Test
    public void testGetObrero() {
        System.out.println("getObrero");
        Mantenimiento instance = new Mantenimiento();
        Usuarios expResult = null;
        Usuarios result = instance.getObrero();
        assertEquals(expResult, result);
        // TODO review the generated test code and remove the default call to fail.
        fail("The test case is a prototype.");
    }

    /**
     * Test of setObrero method, of class Mantenimiento.
     */
    @Test
    public void testSetObrero() {
        System.out.println("setObrero");
        Usuarios obrero = null;
        Mantenimiento instance = new Mantenimiento();
        instance.setObrero(obrero);
        // TODO review the generated test code and remove the default call to fail.
        fail("The test case is a prototype.");
    }

    /**
     * Test of getFecha2 method, of class Mantenimiento.
     */
    @Test
    public void testGetFecha2() {
        System.out.println("getFecha2");
        Mantenimiento instance = new Mantenimiento();
        Date expResult = null;
        Date result = instance.getFecha2();
        assertEquals(expResult, result);
        // TODO review the generated test code and remove the default call to fail.
        fail("The test case is a prototype.");
    }

    /**
     * Test of setFecha2 method, of class Mantenimiento.
     */
    @Test
    public void testSetFecha2() {
        System.out.println("setFecha2");
        String fecha2 = "";
        Mantenimiento instance = new Mantenimiento();
        instance.setFecha2(fecha2);
        // TODO review the generated test code and remove the default call to fail.
        fail("The test case is a prototype.");
    }

    /**
     * Test of getFech method, of class Mantenimiento.
     */
    @Test
    public void testGetFech() {
        System.out.println("getFech");
        Mantenimiento instance = new Mantenimiento();
        String expResult = "";
        String result = instance.getFech();
        assertEquals(expResult, result);
        // TODO review the generated test code and remove the default call to fail.
        fail("The test case is a prototype.");
    }

    /**
     * Test of setFech method, of class Mantenimiento.
     */
    @Test
    public void testSetFech() {
        System.out.println("setFech");
        String fech = "";
        Mantenimiento instance = new Mantenimiento();
        instance.setFech(fech);
        // TODO review the generated test code and remove the default call to fail.
        fail("The test case is a prototype.");
    }

    /**
     * Test of getFech2 method, of class Mantenimiento.
     */
    @Test
    public void testGetFech2() {
        System.out.println("getFech2");
        Mantenimiento instance = new Mantenimiento();
        String expResult = "";
        String result = instance.getFech2();
        assertEquals(expResult, result);
        // TODO review the generated test code and remove the default call to fail.
        fail("The test case is a prototype.");
    }

    /**
     * Test of setFech2 method, of class Mantenimiento.
     */
    @Test
    public void testSetFech2() {
        System.out.println("setFech2");
        String fech2 = "";
        Mantenimiento instance = new Mantenimiento();
        instance.setFech2(fech2);
        // TODO review the generated test code and remove the default call to fail.
        fail("The test case is a prototype.");
    }

    /**
     * Test of getTipo method, of class Mantenimiento.
     */
    @Test
    public void testGetTipo() {
        System.out.println("getTipo");
        Mantenimiento instance = new Mantenimiento();
        Tipo expResult = null;
        Tipo result = instance.getTipo();
        assertEquals(expResult, result);
        // TODO review the generated test code and remove the default call to fail.
        fail("The test case is a prototype.");
    }

    /**
     * Test of setTipo method, of class Mantenimiento.
     */
    @Test
    public void testSetTipo() {
        System.out.println("setTipo");
        Tipo tipo = null;
        Mantenimiento instance = new Mantenimiento();
        instance.setTipo(tipo);
        // TODO review the generated test code and remove the default call to fail.
        fail("The test case is a prototype.");
    }
    
}
