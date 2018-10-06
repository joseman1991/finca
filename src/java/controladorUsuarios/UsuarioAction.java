/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controladorUsuarios;

import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.http.HttpSession;
import modelo.UsuarioDAO;
import modelo.Usuarios;
import org.apache.struts2.ServletActionContext;

/**
 *
 * @author JOSE
 */
public class UsuarioAction extends ActionSupport implements ModelDriven<Usuarios> {

    private Usuarios usuario;
    private final UsuarioDAO uDAO;
    private String mensaje;    
    private final HttpSession session;
    private final List<Usuarios> listaUsuarios;

    public UsuarioAction() {        
        usuario = new Usuarios();
        session = ServletActionContext.getRequest().getSession();
        listaUsuarios = new ArrayList<>();
        uDAO = new UsuarioDAO(listaUsuarios);
    }

    @Override
    public String execute() {
        return SUCCESS;
    }

    public String insertarUsuario() {
        try {
             
            int result = uDAO.insertarUsuario(usuario);
            if (result > 0) {
                mensaje = "Usuario registrado";
                return SUCCESS;
            } else {
                mensaje = "Ha ocurrido un error inesperado";
                return ERROR;
            }
        } catch (SQLException e) {
            mensaje = e.getMessage();
            return ERROR;
        } finally {
          uDAO.  cerrarConexion();
        }
    }
    
    public String actualizarUsuario() {
        try {
            
            int result = uDAO.actualizarUsuario(usuario);
            if (result > 0) {
                mensaje = "Usuario actualizado";
                return SUCCESS;
            } else {
                mensaje = "Ha ocurrido un error inesperado";
                return ERROR;
            }
        } catch (SQLException e) {
            mensaje = e.getMessage();
            return ERROR;
        } finally {
           uDAO. cerrarConexion();
        }
    }

    public String login() {
        try {
            
            usuario = uDAO.obtenerUsusario(usuario);
            if (usuario != null) {
                session.setAttribute("usuario", usuario);
                return SUCCESS;
            } else {
                mensaje = "Error de credenciales";
                return ERROR;
            }
        } catch (SQLException e) {
            mensaje = e.getMessage();
            return ERROR;
        } finally {
           uDAO. cerrarConexion();
        }
    }

    public String obtenerUsuarios() {
        try {
            usuario = (Usuarios) session.getAttribute("usuario");
          
            if (usuario != null) {
                uDAO.obtenerLista(usuario);
                return SUCCESS;
            } else {
                mensaje="No tienes permiso para ver esta página";
                return ERROR;
            }
        } catch (SQLException e) {
            mensaje = e.getMessage();
            return ERROR;
        } finally {
            uDAO.cerrarConexion();
        }
    }

    public String obtenerUsuario() {
        try {
             
            usuario = uDAO.obtenerUsusario(usuario.getIdusuario());
            return SUCCESS;
        } catch (SQLException e) {
            mensaje = e.getMessage();
            return ERROR;
        } finally {
           uDAO. cerrarConexion();
        }
    }

   

    @Override
    public Usuarios getModel() {
        return usuario;
    }

    public Usuarios getUsuario() {
        return usuario;
    }

    public void setUsuario(Usuarios usuario) {
        this.usuario = usuario;
    }

    public String getMensaje() {
        return mensaje;
    }

    public void setMensaje(String mensaje) {
        this.mensaje = mensaje;
    }

    public List<Usuarios> getListaUsuarios() {
        return listaUsuarios;
    }

}
