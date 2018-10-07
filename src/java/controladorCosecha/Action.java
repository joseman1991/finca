/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controladorCosecha;

import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;
import javax.servlet.http.HttpSession;
import modelo.ConexionMySQL;
import org.apache.struts2.ServletActionContext;

/**
 *
 * @author JOSE
 * @param <T>
 */
public class Action<T extends Object> extends ActionSupport implements ModelDriven<T>{
    
    
    protected final HttpSession session;
    protected T objeto;
    protected String mensaje;
    protected ConexionMySQL conexion;   

    public Action() {
        session = ServletActionContext.getRequest().getSession();
    }
    

    public String getMensaje() {
        return mensaje;
    }

    public void setMensaje(String mensaje) {
        this.mensaje = mensaje;
    }

    @Override
    public T getModel() {
       return objeto;
    }

    public T getObjeto() {
        return objeto;
    }

    public void setObjeto(T objeto) {
        this.objeto = objeto;
    }
    
    
    
}
