/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controlador;

import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.http.HttpSession;
import modelo.ConexionMySQL;
import org.apache.struts2.ServletActionContext;

/**
 *
 * @author JOSE
 * @param <T>
 */
public class Action<T extends Object> extends ActionSupport implements ModelDriven<T> {

    protected List<T> lista;
    protected final HttpSession session;
    protected T objeto;
    protected String mensaje;
    protected ConexionMySQL conexion;

    public Action() {
        lista = new ArrayList<>();
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

    public List<T> getLista() {
        return lista;
    }

}
