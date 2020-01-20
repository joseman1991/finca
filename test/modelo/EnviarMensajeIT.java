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
public class EnviarMensajeIT {
    
    public EnviarMensajeIT() {
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
     * Test of enviarConGMail method, of class EnviarMensaje.
     */
    @Test
    public void testEnviarConGMail() throws Exception {
        System.out.println("enviarConGMail");
        String destinatario = "";
        String asunto = "";
        String cuerpo = "";
        EnviarMensaje instance = new EnviarMensaje();
        instance.enviarConGMail(destinatario, asunto, cuerpo);
        // TODO review the generated test code and remove the default call to fail.
        fail("The test case is a prototype.");
    }

    /**
     * Test of enviarConGMailAdjunto method, of class EnviarMensaje.
     */
    @Test
    public void testEnviarConGMailAdjunto() throws Exception {
        System.out.println("enviarConGMailAdjunto");
        String destinatario = "";
        String asunto = "";
        String cuerpo = "";
        String ruta = "";
        EnviarMensaje instance = new EnviarMensaje();
        instance.enviarConGMailAdjunto(destinatario, asunto, cuerpo, ruta);
        // TODO review the generated test code and remove the default call to fail.
        fail("The test case is a prototype.");
    }
    
}
