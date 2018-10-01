/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controladorUsuarios;

import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;
import java.sql.Connection;
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
    private Connection conexion;
    private final HttpSession session;
    private final List<Usuarios> listaUsuarios;

    public UsuarioAction() {
        this.conexion = null;
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
            conexion = uDAO.getConexion();
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
            cerrarConexion();
        }
    }
    
    public String actualizarUsuario() {
        try {
            conexion = uDAO.getConexion();
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
            cerrarConexion();
        }
    }

    public String login() {
        try {
            conexion = uDAO.getConexion();
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
            cerrarConexion();
        }
    }

    public String obtenerUsuarios() {
        try {
            usuario = (Usuarios) session.getAttribute("usuario");
            conexion = uDAO.getConexion();
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
            cerrarConexion();
        }
    }

    public String obtenerUsuario() {
        try {
            conexion = uDAO.getConexion();
            usuario = uDAO.obtenerUsusario(usuario.getIdusuario());
            return SUCCESS;
        } catch (SQLException e) {
            mensaje = e.getMessage();
            return ERROR;
        } finally {
            cerrarConexion();
        }
    }

    private void cerrarConexion() {
        try {
            if (conexion != null) {
                conexion.close();
            }
        } catch (SQLException e) {
            mensaje = e.getMessage();
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
