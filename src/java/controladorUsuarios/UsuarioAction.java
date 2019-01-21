/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controladorUsuarios;

import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;
import java.sql.SQLException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import javax.mail.MessagingException;
import javax.servlet.http.HttpSession;
import modelo.EnviarMensaje;
import modelo.Perfiles;
import modelo.PerfilesDAO;
import modelo.UsuarioDAO;
import modelo.Usuarios;
import org.apache.struts2.ServletActionContext;

/**
 *
 * @author
 */
public class UsuarioAction extends ActionSupport implements ModelDriven<Usuarios> {

    private Usuarios usuario;
    private final UsuarioDAO uDAO;
    private String mensaje;
    private String style;
    private int rediret;
    private String estado;
    private final HttpSession session;
    private final List<Usuarios> listaUsuarios;
    private final List<Perfiles> listaPerfiles;
    private final PerfilesDAO pdao;
    private final EnviarMensaje em;

    public UsuarioAction() {
        usuario = new Usuarios();
        session = ServletActionContext.getRequest().getSession();
        listaUsuarios = new ArrayList<>();
        listaPerfiles = new ArrayList<>();
        uDAO = new UsuarioDAO(listaUsuarios);
        pdao = new PerfilesDAO();
        em = new EnviarMensaje();
    }

    @Override
    public String execute() {
        try {
            pdao.obtenerLista(listaPerfiles);
        } catch (SQLException e) {
            mensaje = e.getMessage();
            return ERROR;
        }
        return SUCCESS;
    }

    public String insertarUsuario() {
        try {
            int result = uDAO.insertarUsuario(usuario);
            pdao.obtenerLista(listaPerfiles);
            if (result > 0) {
                Usuarios user = (Usuarios) session.getAttribute("usuario");
                uDAO.obtenerListaAdmin(listaUsuarios, usuario);
                em.enviarConGMail(usuario.getEmail(), "Bienvenido al Sistema " + fechaActual(), "Hola, Usuario de Apícola Cannán: " + usuario.getFullname()
                        + " ya puedes usar tu cuenta de nuestro sistemas tu perfil es: " + usuario.getPerfil().getDescripcion());
                for (int i = 0; i < listaUsuarios.size(); i++) {
                    Usuarios get = listaUsuarios.get(i);
                    em.enviarConGMail(get.getEmail(), "Registro de nuevo usuario " + fechaActual(), "Hola, estimado administrador de Apícola Cannán: " + get.getFullname()
                            + ", te informamos que el usuario " + user.getFullname() + " ha registrado un nuevo usuario al sistema denominado" + usuario.getFullname());
                }
                style = "alert-success";
                estado = "ÉXITO";
                mensaje = "Usuario registrado";
                return SUCCESS;
            } else {
                mensaje = "Ha ocurrido un error inesperado";
                return ERROR;
            }
        } catch (SQLException | MessagingException e) {
            mensaje = e.getMessage();
            return ERROR;
        } finally {
            uDAO.cerrarConexion();
        }
    }

    public String actualizarUsuario() {
        try {
            int result = uDAO.actualizarUsuario(usuario);
            if (result > 0) {
                usuario = uDAO.obtenerUsusario(usuario);
                if (usuario != null) {
                    Usuarios u = (Usuarios) session.getAttribute("usuario");
                    if (u != null) {
                        if (u.getIdusuario() == usuario.getIdusuario()) {
                            session.setAttribute("usuario", usuario);
                        }
                    }
                    Usuarios user = (Usuarios) session.getAttribute("usuario");
                    uDAO.obtenerListaAdmin(listaUsuarios, usuario);
                    em.enviarConGMail(usuario.getEmail(), "Actualizacion de datos " + fechaActual(), "Hola, Usuario de Apícola Cannán: " + usuario.getFullname()
                            + " tus datos han sido hactualizados: " + usuario.getFullname());
                    for (int i = 0; i < listaUsuarios.size(); i++) {
                        Usuarios get = listaUsuarios.get(i);
                        em.enviarConGMail(get.getEmail(), "Actualizacion de datos de usuario " + fechaActual(), "Hola, estimado administrador de Apícola Cannán: " + get.getFullname()
                                + ", te informamos que el usuario " + user.getFullname() + " ha actualizado los datos de un usuario del sistema denominado " + usuario.getFullname());
                    }
                    pdao.obtenerLista(listaPerfiles);
                    mensaje = "Usuario actualizado";
                    style = "alert-success";
                    estado = "ÉXITO";
                    return SUCCESS;
                } else {
                    mensaje = "Ha ocurrido un error";
                    return ERROR;
                }
            } else {
                mensaje = "Ha ocurrido un error inesperado";
                return ERROR;
            }
        } catch (SQLException | MessagingException e) {
            mensaje = e.getMessage();
            return ERROR;
        } finally {
            uDAO.cerrarConexion();
        }
    }

    public String cambioEstado() {
        try {
            int result = uDAO.actualizarRegistro(usuario);
            usuario = uDAO.obtenerRegistro(usuario);
            System.out.println("aqui");
            if (result > 0) {
                if (usuario.getIdestado() == 1) {
                    mensaje = "Usuario activado";
                    style = "alert-success";
                } else {
                    mensaje = "Usuario desactivado";
                    style = "alert-danger";
                }
                String status;
                if (usuario.getIdestado() == 1) {
                    status = "Activad";
                } else {
                    status = "Desativad";
                }
                Usuarios user = (Usuarios) session.getAttribute("usuario");
                uDAO.obtenerListaAdmin(listaUsuarios, usuario);
                em.enviarConGMail(usuario.getEmail(), "Usuario " + status + "o " + fechaActual(), "Hola, Usuario de Apícola Cannán: " + usuario.getFullname()
                        + " tu cuenta ha sido " + status + "a por " + user.getFullname() + "");
                for (int i = 0; i < listaUsuarios.size(); i++) {
                    Usuarios get = listaUsuarios.get(i);
                    em.enviarConGMail(get.getEmail(), "Usuario "+status+ "o " + fechaActual(), "Hola, estimado administrador de Apícola Cannán: " + get.getFullname()
                            + ", te informamos que el usuario " + usuario.getFullname() + " ha sido " + status + "o por " + user.getFullname());
                }
                estado = "ÉXITO"; 
                return SUCCESS;
            } else {
                mensaje = "Ha ocurrido un error inesperado";
                return ERROR;
            }
        } catch (SQLException | MessagingException e) {
            mensaje = e.getMessage();
            return ERROR;
        } finally {
            uDAO.cerrarConexion();
        }
    }

    public String login() {
        try {
            usuario = uDAO.obtenerUsusario(usuario);
            if (usuario != null) {
                if (usuario.getIdestado() == 1) {
                    uDAO.obtenerListaAdmin(listaUsuarios, usuario);
                    em.enviarConGMail(usuario.getEmail(), "Inicio de sesión " + fechaActual(), "Hola, Usuario de Apícola Cannán: " + usuario.getFullname()
                            + " has iniciado correctamente sesión al sistema");
                    for (int i = 0; i < listaUsuarios.size(); i++) {
                        Usuarios get = listaUsuarios.get(i);
                        em.enviarConGMail(get.getEmail(), "Inicio de sesión " + fechaActual(), "Hola, estimado administrador de Apícola Cannán: " + get.getFullname()
                                + ", te informamos que el usuario " + usuario.getFullname() + " ha iniciado sesión al sistema");
                    }
                    session.setAttribute("usuario", usuario);
                    return SUCCESS;
                } else {
                    estado = "ERROR";
                    mensaje = "Usuario desactivado, consulta con un administrador";
                    style = "alert-danger";
                    return ERROR;
                }
            } else {
                mensaje = "Error de credenciales";
                style = "alert-danger";
                estado = "ERROR";
                return ERROR;
            }
        } catch (SQLException | MessagingException e) {
            mensaje = e.getMessage();
            return ERROR;
        } finally {
            uDAO.cerrarConexion();
        }
    }

    private String fechaActual() {
        SimpleDateFormat format = new SimpleDateFormat("EEEE, dd-MMMM-yyyy hh:mm:ss");
        return format.format(new Date());
    }

    public String obtenerUsuarios() {
        try {
            usuario = (Usuarios) session.getAttribute("usuario");

            if (usuario != null) {
                uDAO.obtenerLista(usuario);
                return SUCCESS;
            } else {
                mensaje = "No tienes permiso para ver esta página";
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
            pdao.obtenerLista(listaPerfiles);
            return SUCCESS;
        } catch (SQLException e) {
            mensaje = e.getMessage();
            return ERROR;
        } finally {
            uDAO.cerrarConexion();
        }
    }

    public String obteneruser() {
        try {
            usuario = uDAO.obtenerUsusario(usuario.getEmail());
            return SUCCESS;
        } catch (SQLException e) {
            mensaje = e.getMessage();
            return ERROR;
        } finally {
            uDAO.cerrarConexion();
        }
    }

    public String obtenerUsuario2() {
        try {
            usuario = uDAO.obtenerUsusario(usuario.getIdusuario());
            pdao.obtenerLista(listaPerfiles);
            mensaje = "Usuario actualizado";
            style = "alert-success";
            estado = "ÉXITO";
            return SUCCESS;
        } catch (SQLException e) {
            mensaje = e.getMessage();
            return ERROR;
        } finally {
            uDAO.cerrarConexion();
        }
    }

    public String obtenerUsuario3() {
        try {
            usuario = uDAO.obtenerUsusario(usuario.getIdusuario());
            if (usuario.getIdestado() == 1) {
                mensaje = "Usuario activado";
                style = "alert-success";
                rediret = 0;
            } else {
                Usuarios u = (Usuarios) session.getAttribute("usuario");
                System.out.println(u.getIdusuario());
                if (u.getIdusuario() == usuario.getIdusuario()) {
                    rediret = 1;
                }
                mensaje = "Usuario desactivados";
                style = "alert-warning";
            }
            estado = "ÉXITO";
            return SUCCESS;
        } catch (SQLException e) {
            mensaje = e.getMessage();
            return ERROR;
        } finally {
            uDAO.cerrarConexion();
        }
    }

    public String cambiarEstado() {
        try {
            int res = uDAO.actualizarRegistro(usuario);

            if (res > 0) {
                return SUCCESS;
            } else {
                return ERROR;
            }
        } catch (SQLException e) {
            mensaje = e.getMessage();
            return ERROR;
        } finally {
            uDAO.cerrarConexion();
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

    public List<Perfiles> getListaPerfiles() {
        return listaPerfiles;
    }

    public String getStyle() {
        return style;
    }

    public void setStyle(String style) {
        this.style = style;
    }

    public String getEstado() {
        return estado;
    }

    public void setEstado(String estado) {
        this.estado = estado;
    }

    public int getRediret() {
        return rediret;
    }

}
