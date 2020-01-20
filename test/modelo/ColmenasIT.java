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
public class ColmenasIT {
    
    public ColmenasIT() {
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
     * Test of getIdcolmena method, of class Colmenas.
     */
    @Test
    public void testGetIdcolmena() {
        System.out.println("getIdcolmena");
        Colmenas instance = new Colmenas();
        int expResult = 0;
        int result = instance.getIdcolmena();
        assertEquals(expResult, result);
        // TODO review the generated test code and remove the default call to fail.
    }

    /**
     * Test of setIdcolmena method, of class Colmenas.
     */
    @Test
    public void testSetIdcolmena() {
        System.out.println("setIdcolmena");
        int idcolmena = 0;
        Colmenas instance = new Colmenas();
        instance.setIdcolmena(idcolmena);
        // TODO review the generated test code and remove the default call to fail.
    }

    /**
     * Test of getIdarea method, of class Colmenas.
     */
    @Test
    public void testGetIdarea() {
        System.out.println("getIdarea");
        Colmenas instance = new Colmenas();
        int expResult = 0;
        int result = instance.getIdarea();
        assertEquals(expResult, result);
        // TODO review the generated test code and remove the default call to fail.
    }

    /**
     * Test of setIdarea method, of class Colmenas.
     */
    @Test
    public void testSetIdarea() throws Exception {
        System.out.println("setIdarea");
        int idarea = 0;
        Colmenas instance = new Colmenas();
        instance.setIdarea(idarea);
        // TODO review the generated test code and remove the default call to fail.
    }

    /**
     * Test of getNmarcos method, of class Colmenas.
     */
    @Test
    public void testGetNmarcos() {
        System.out.println("getNmarcos");
        Colmenas instance = new Colmenas();
        int expResult = 0;
        int result = instance.getNmarcos();
        assertEquals(expResult, result);
        // TODO review the generated test code and remove the default call to fail.
    }

    /**
     * Test of setNmarcos method, of class Colmenas.
     */
    @Test
    public void testSetNmarcos() {
        System.out.println("setNmarcos");
        int nmarcos = 0;
        Colmenas instance = new Colmenas();
        instance.setNmarcos(nmarcos);
        // TODO review the generated test code and remove the default call to fail.
    }

    /**
     * Test of getNalza method, of class Colmenas.
     */
    @Test
    public void testGetNalza() {
        System.out.println("getNalza");
        Colmenas instance = new Colmenas();
        int expResult = 0;
        int result = instance.getNalza();
        assertEquals(expResult, result);
        // TODO review the generated test code and remove the default call to fail.
    }

    /**
     * Test of setNalza method, of class Colmenas.
     */
    @Test
    public void testSetNalza() {
        System.out.println("setNalza");
        int nalza = 0;
        Colmenas instance = new Colmenas();
        instance.setNalza(nalza);
        // TODO review the generated test code and remove the default call to fail.
    }

    /**
     * Test of getIdorigen method, of class Colmenas.
     */
    @Test
    public void testGetIdorigen() {
        System.out.println("getIdorigen");
        Colmenas instance = new Colmenas();
        int expResult = 0;
        int result = instance.getIdorigen();
        assertEquals(expResult, result);
        // TODO review the generated test code and remove the default call to fail.
    }

    /**
     * Test of setIdorigen method, of class Colmenas.
     */
    @Test
    public void testSetIdorigen() throws Exception {
        System.out.println("setIdorigen");
        int idorigen = 0;
        Colmenas instance = new Colmenas();
        instance.setIdorigen(idorigen);
        // TODO review the generated test code and remove the default call to fail.
    }

    /**
     * Test of getPrecio method, of class Colmenas.
     */
    @Test
    public void testGetPrecio() {
        System.out.println("getPrecio");
        Colmenas instance = new Colmenas();
        float expResult = 0.0F;
        float result = instance.getPrecio();
        assertEquals(expResult, result, 0.0);
        // TODO review the generated test code and remove the default call to fail.
    }

    /**
     * Test of setPrecio method, of class Colmenas.
     */
    @Test
    public void testSetPrecio() {
        System.out.println("setPrecio");
        float precio = 0.0F;
        Colmenas instance = new Colmenas();
        instance.setPrecio(precio);
        // TODO review the generated test code and remove the default call to fail.
    }

    /**
     * Test of getFecha method, of class Colmenas.
     */
    @Test
    public void testGetFecha() {
        System.out.println("getFecha");
        Colmenas instance = new Colmenas();
        Date expResult = null;
        Date result = instance.getFecha();
        assertEquals(expResult, result);
        // TODO review the generated test code and remove the default call to fail.
    }

    /**
     * Test of setFecha method, of class Colmenas.
     */
    @Test
    public void testSetFecha() {
        System.out.println("setFecha");
        String fecha = "2019-01-01";
        Colmenas instance = new Colmenas();
        instance.setFecha(fecha);
        // TODO review the generated test code and remove the default call to fail.
    }

    /**
     * Test of getIdreina method, of class Colmenas.
     */
    @Test
    public void testGetIdreina() {
        System.out.println("getIdreina");
        Colmenas instance = new Colmenas();
        int expResult = 0;
        int result = instance.getIdreina();
        assertEquals(expResult, result);
        // TODO review the generated test code and remove the default call to fail.
    }

    /**
     * Test of setIdreina method, of class Colmenas.
     */
    @Test
    public void testSetIdreina() throws Exception {
        System.out.println("setIdreina");
        int idreina = 0;
        Colmenas instance = new Colmenas();
        instance.setIdreina(idreina);
        // TODO review the generated test code and remove the default call to fail.
    }

    /**
     * Test of getFechareina method, of class Colmenas.
     */
    @Test
    public void testGetFechareina() {
        System.out.println("getFechareina");
        Colmenas instance = new Colmenas();
        Date expResult = null;
        Date result = instance.getFechareina();
        assertEquals(expResult, result);
        // TODO review the generated test code and remove the default call to fail.
    }

    /**
     * Test of setFechareina method, of class Colmenas.
     */
    @Test
    public void testSetFechareina() {
        System.out.println("setFechareina");
        String fechareina = "2019-01-01";
        Colmenas instance = new Colmenas();
        instance.setFechareina(fechareina);
        // TODO review the generated test code and remove the default call to fail.
    }

    /**
     * Test of getNpisos method, of class Colmenas.
     */
    @Test
    public void testGetNpisos() {
        System.out.println("getNpisos");
        Colmenas instance = new Colmenas();
        int expResult = 0;
        int result = instance.getNpisos();
        assertEquals(expResult, result);
        // TODO review the generated test code and remove the default call to fail.
    }

    /**
     * Test of setNpisos method, of class Colmenas.
     */
    @Test
    public void testSetNpisos() {
        System.out.println("setNpisos");
        int npisos = 0;
        Colmenas instance = new Colmenas();
        instance.setNpisos(npisos);
        // TODO review the generated test code and remove the default call to fail.
    }

    /**
     * Test of getDescripcion method, of class Colmenas.
     */
    @Test
    public void testGetDescripcion() {
        System.out.println("getDescripcion");
        Colmenas instance = new Colmenas();
        String expResult = null;
        String result = instance.getDescripcion();
        assertEquals(expResult, result);
        // TODO review the generated test code and remove the default call to fail.
    }

    /**
     * Test of setDescripcion method, of class Colmenas.
     */
    @Test
    public void testSetDescripcion() {
        System.out.println("setDescripcion");
        String descripcion = "";
        Colmenas instance = new Colmenas();
        instance.setDescripcion(descripcion);
        // TODO review the generated test code and remove the default call to fail.
    }

    /**
     * Test of getFecha2 method, of class Colmenas.
     */
    @Test
    public void testGetFecha2() {
        System.out.println("getFecha2");
        Colmenas instance = new Colmenas();
        java.util.Date expResult = null;
        instance.setFecha("2019-01-01");
        java.util.Date result = instance.getFecha2();
        assertNotEquals(expResult, result);
        // TODO review the generated test code and remove the default call to fail.
    }

    /**
     * Test of getSector method, of class Colmenas.
     */
    @Test
    public void testGetSector() {
        System.out.println("getSector");
        Colmenas instance = new Colmenas();
        Sectores expResult = null;
        Sectores result = instance.getSector();
        assertEquals(expResult, result);
        // TODO review the generated test code and remove the default call to fail.
    }

    /**
     * Test of setSector method, of class Colmenas.
     */
    @Test
    public void testSetSector() {
        System.out.println("setSector");
        Sectores sector = null;
        Colmenas instance = new Colmenas();
        instance.setSector(sector);
        // TODO review the generated test code and remove the default call to fail.
    }

    /**
     * Test of getOrigen method, of class Colmenas.
     */
    @Test
    public void testGetOrigen() {
        System.out.println("getOrigen");
        Colmenas instance = new Colmenas();
        Origen expResult = null;
        Origen result = instance.getOrigen();
        assertEquals(expResult, result);
        // TODO review the generated test code and remove the default call to fail.
    }

    /**
     * Test of setOrigen method, of class Colmenas.
     */
    @Test
    public void testSetOrigen() {
        System.out.println("setOrigen");
        Origen origen = null;
        Colmenas instance = new Colmenas();
        instance.setOrigen(origen);
        // TODO review the generated test code and remove the default call to fail.
    }

    /**
     * Test of getReinas method, of class Colmenas.
     */
    @Test
    public void testGetReinas() {
        System.out.println("getReinas");
        Colmenas instance = new Colmenas();
        Reinas expResult = null;
        Reinas result = instance.getReinas();
        assertEquals(expResult, result);
        // TODO review the generated test code and remove the default call to fail.
    }

    /**
     * Test of setReinas method, of class Colmenas.
     */
    @Test
    public void testSetReinas() {
        System.out.println("setReinas");
        Reinas reinas = null;
        Colmenas instance = new Colmenas();
        instance.setReinas(reinas);
        // TODO review the generated test code and remove the default call to fail.
    }
    
}
