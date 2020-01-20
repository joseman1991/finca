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
public class CosechaIT {
    
    public CosechaIT() {
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
     * Test of getIdcolmena method, of class Cosecha.
     */
    @Test
    public void testGetIdcolmena() {
        System.out.println("getIdcolmena");
        Cosecha instance = new Cosecha();
        int expResult = 0;
        int result = instance.getIdcolmena();
        assertEquals(expResult, result);
        // TODO review the generated test code and remove the default call to fail.
        fail("The test case is a prototype.");
    }

    /**
     * Test of setIdcolmena method, of class Cosecha.
     */
    @Test
    public void testSetIdcolmena() throws Exception {
        System.out.println("setIdcolmena");
        int idcolmena = 0;
        Cosecha instance = new Cosecha();
        instance.setIdcolmena(idcolmena);
        // TODO review the generated test code and remove the default call to fail.
        fail("The test case is a prototype.");
    }

    /**
     * Test of getIdobrero method, of class Cosecha.
     */
    @Test
    public void testGetIdobrero() {
        System.out.println("getIdobrero");
        Cosecha instance = new Cosecha();
        int expResult = 0;
        int result = instance.getIdobrero();
        assertEquals(expResult, result);
        // TODO review the generated test code and remove the default call to fail.
        fail("The test case is a prototype.");
    }

    /**
     * Test of setIdobrero method, of class Cosecha.
     */
    @Test
    public void testSetIdobrero() throws Exception {
        System.out.println("setIdobrero");
        int idobrero = 0;
        Cosecha instance = new Cosecha();
        instance.setIdobrero(idobrero);
        // TODO review the generated test code and remove the default call to fail.
        fail("The test case is a prototype.");
    }

    /**
     * Test of getMarcos method, of class Cosecha.
     */
    @Test
    public void testGetMarcos() {
        System.out.println("getMarcos");
        Cosecha instance = new Cosecha();
        int expResult = 0;
        int result = instance.getMarcos();
        assertEquals(expResult, result);
        // TODO review the generated test code and remove the default call to fail.
        fail("The test case is a prototype.");
    }

    /**
     * Test of setMarcos method, of class Cosecha.
     */
    @Test
    public void testSetMarcos() {
        System.out.println("setMarcos");
        int marcos = 0;
        Cosecha instance = new Cosecha();
        instance.setMarcos(marcos);
        // TODO review the generated test code and remove the default call to fail.
        fail("The test case is a prototype.");
    }

    /**
     * Test of getPesovacio method, of class Cosecha.
     */
    @Test
    public void testGetPesovacio() {
        System.out.println("getPesovacio");
        Cosecha instance = new Cosecha();
        float expResult = 0.0F;
        float result = instance.getPesovacio();
        assertEquals(expResult, result, 0.0);
        // TODO review the generated test code and remove the default call to fail.
        fail("The test case is a prototype.");
    }

    /**
     * Test of setPesovacio method, of class Cosecha.
     */
    @Test
    public void testSetPesovacio() {
        System.out.println("setPesovacio");
        float pesovacio = 0.0F;
        Cosecha instance = new Cosecha();
        instance.setPesovacio(pesovacio);
        // TODO review the generated test code and remove the default call to fail.
        fail("The test case is a prototype.");
    }

    /**
     * Test of getPesolleno method, of class Cosecha.
     */
    @Test
    public void testGetPesolleno() {
        System.out.println("getPesolleno");
        Cosecha instance = new Cosecha();
        float expResult = 0.0F;
        float result = instance.getPesolleno();
        assertEquals(expResult, result, 0.0);
        // TODO review the generated test code and remove the default call to fail.
        fail("The test case is a prototype.");
    }

    /**
     * Test of setPesolleno method, of class Cosecha.
     */
    @Test
    public void testSetPesolleno() {
        System.out.println("setPesolleno");
        float pesolleno = 0.0F;
        Cosecha instance = new Cosecha();
        instance.setPesolleno(pesolleno);
        // TODO review the generated test code and remove the default call to fail.
        fail("The test case is a prototype.");
    }

    /**
     * Test of getFecha method, of class Cosecha.
     */
    @Test
    public void testGetFecha() {
        System.out.println("getFecha");
        Cosecha instance = new Cosecha();
        Date expResult = null;
        Date result = instance.getFecha();
        assertEquals(expResult, result);
        // TODO review the generated test code and remove the default call to fail.
        fail("The test case is a prototype.");
    }

    /**
     * Test of setFecha method, of class Cosecha.
     */
    @Test
    public void testSetFecha() {
        System.out.println("setFecha");
        String fecha = "";
        Cosecha instance = new Cosecha();
        instance.setFecha(fecha);
        // TODO review the generated test code and remove the default call to fail.
        fail("The test case is a prototype.");
    }

    /**
     * Test of getColmena method, of class Cosecha.
     */
    @Test
    public void testGetColmena() {
        System.out.println("getColmena");
        Cosecha instance = new Cosecha();
        Colmenas expResult = null;
        Colmenas result = instance.getColmena();
        assertEquals(expResult, result);
        // TODO review the generated test code and remove the default call to fail.
        fail("The test case is a prototype.");
    }

    /**
     * Test of setColmena method, of class Cosecha.
     */
    @Test
    public void testSetColmena() {
        System.out.println("setColmena");
        Colmenas colmena = null;
        Cosecha instance = new Cosecha();
        instance.setColmena(colmena);
        // TODO review the generated test code and remove the default call to fail.
        fail("The test case is a prototype.");
    }

    /**
     * Test of getIdcosecha method, of class Cosecha.
     */
    @Test
    public void testGetIdcosecha() {
        System.out.println("getIdcosecha");
        Cosecha instance = new Cosecha();
        int expResult = 0;
        int result = instance.getIdcosecha();
        assertEquals(expResult, result);
        // TODO review the generated test code and remove the default call to fail.
        fail("The test case is a prototype.");
    }

    /**
     * Test of setIdcosecha method, of class Cosecha.
     */
    @Test
    public void testSetIdcosecha() {
        System.out.println("setIdcosecha");
        int idcosecha = 0;
        Cosecha instance = new Cosecha();
        instance.setIdcosecha(idcosecha);
        // TODO review the generated test code and remove the default call to fail.
        fail("The test case is a prototype.");
    }

    /**
     * Test of getObrero method, of class Cosecha.
     */
    @Test
    public void testGetObrero() {
        System.out.println("getObrero");
        Cosecha instance = new Cosecha();
        Usuarios expResult = null;
        Usuarios result = instance.getObrero();
        assertEquals(expResult, result);
        // TODO review the generated test code and remove the default call to fail.
        fail("The test case is a prototype.");
    }

    /**
     * Test of setObrero method, of class Cosecha.
     */
    @Test
    public void testSetObrero() {
        System.out.println("setObrero");
        Usuarios obrero = null;
        Cosecha instance = new Cosecha();
        instance.setObrero(obrero);
        // TODO review the generated test code and remove the default call to fail.
        fail("The test case is a prototype.");
    }

    /**
     * Test of getFecha1 method, of class Cosecha.
     */
    @Test
    public void testGetFecha1() {
        System.out.println("getFecha1");
        Cosecha instance = new Cosecha();
        Date expResult = null;
        Date result = instance.getFecha1();
        assertEquals(expResult, result);
        // TODO review the generated test code and remove the default call to fail.
        fail("The test case is a prototype.");
    }

    /**
     * Test of setFecha1 method, of class Cosecha.
     */
    @Test
    public void testSetFecha1() {
        System.out.println("setFecha1");
        String fecha1 = "";
        Cosecha instance = new Cosecha();
        instance.setFecha1(fecha1);
        // TODO review the generated test code and remove the default call to fail.
        fail("The test case is a prototype.");
    }

    /**
     * Test of getFech method, of class Cosecha.
     */
    @Test
    public void testGetFech() {
        System.out.println("getFech");
        Cosecha instance = new Cosecha();
        String expResult = "";
        String result = instance.getFech();
        assertEquals(expResult, result);
        // TODO review the generated test code and remove the default call to fail.
        fail("The test case is a prototype.");
    }

    /**
     * Test of setFech method, of class Cosecha.
     */
    @Test
    public void testSetFech() {
        System.out.println("setFech");
        String fech = "";
        Cosecha instance = new Cosecha();
        instance.setFech(fech);
        // TODO review the generated test code and remove the default call to fail.
        fail("The test case is a prototype.");
    }

    /**
     * Test of getFech1 method, of class Cosecha.
     */
    @Test
    public void testGetFech1() {
        System.out.println("getFech1");
        Cosecha instance = new Cosecha();
        String expResult = "";
        String result = instance.getFech1();
        assertEquals(expResult, result);
        // TODO review the generated test code and remove the default call to fail.
        fail("The test case is a prototype.");
    }

    /**
     * Test of setFech1 method, of class Cosecha.
     */
    @Test
    public void testSetFech1() {
        System.out.println("setFech1");
        String fech1 = "";
        Cosecha instance = new Cosecha();
        instance.setFech1(fech1);
        // TODO review the generated test code and remove the default call to fail.
        fail("The test case is a prototype.");
    }
    
}
