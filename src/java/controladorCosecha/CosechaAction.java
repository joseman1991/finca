/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controladorCosecha;

import com.google.gson.Gson;
import controlador.Action;
import java.io.FileNotFoundException;
import java.sql.SQLException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import javax.mail.MessagingException;
import modelo.Colmenas;
import modelo.ColmenasDAO;
import modelo.Cosecha;
import modelo.CosechaDAO;
import modelo.EnviarMensaje;
import modelo.UsuarioDAO;
import modelo.Usuarios;
import net.sf.jasperreports.engine.JRException;

/**
 *
 * @author
 */
public class CosechaAction extends Action<Cosecha> {

    private final UsuarioDAO uDAO;
    private final List<Usuarios> listaUsuarios;
    private final ColmenasDAO cdao2;
    private final List<Colmenas> listaColmenas;
    private Cosecha cos;
    private String json;
    private final Gson gson;
    private final String ruta;
    private String archivo;
    private String style, estado;

    private final EnviarMensaje em;

    public CosechaAction() {
        objeto = new Cosecha();
        listaColmenas = new ArrayList<>();
        cdao2 = new ColmenasDAO(listaColmenas);
        cos = new Cosecha();
        gson = new Gson();
        this.ruta = session.getServletContext().getRealPath("/reportes");
        archivo = "";
        em = new EnviarMensaje();
        listaUsuarios = new ArrayList<>();
        uDAO = new UsuarioDAO(listaUsuarios);
    }

    public String obtenerColmenas() {
        try {
            cdao2.obtenerListaColmenas();
            conexion = new CosechaDAO();
            objeto = (Cosecha) conexion.obtenerRegistro(objeto);
            return SUCCESS;
        } catch (SQLException e) {
            mensaje = e.getMessage();
            return ERROR;
        } finally {
            cdao2.cerrarConexion();
            conexion.cerrarConexion();
        }
    }

    public String obtenerLista() {
        try {
//            cdao2.obtenerListaColmenas();
            conexion = new CosechaDAO();
            conexion.obtenerLista(lista);
            return SUCCESS;
        } catch (SQLException e) {
            mensaje = e.getMessage();
            return ERROR;
        } finally {
            cdao2.cerrarConexion();
        }
    }

    public String obtenerReporte() {
        CosechaDAO c = new CosechaDAO();
        try {
            archivo = c.generarReporte(ruta, objeto) + ".pdf";
            Usuarios u = (Usuarios) session.getAttribute("usuario");
            em.enviarConGMailAdjunto(u.getEmail(), "Reporte de cosechas generado " + fechaActual(), "Hola, usuario" + u.getFullname()
                    + " tu reporte de cosechas ha sido genereado con éxito", ruta + "/" + archivo);
            uDAO.obtenerListaAdmin(listaUsuarios, u);
            for (int i = 0; i < listaUsuarios.size(); i++) {
                Usuarios get = listaUsuarios.get(i);
                em.enviarConGMailAdjunto(get.getEmail(), "Reporte de cosechas generado " + fechaActual(), "Hola, estimado administrador de Apícola Cannán: " + get.getFullname()
                        + ", te informamos que el usuario " + u.getFullname() + " ha generado un reporte de las cosechas \nNota: "
                        + "Se adjunta el archivo generado", ruta + "/" + archivo);
            }
            return SUCCESS;
        } catch (FileNotFoundException | SQLException | JRException | MessagingException e) {
            mensaje = e.getMessage();
            return ERROR;
        } finally {
            c.cerrarConexion();
        }
    }

    public String obtenerReporteC() {
        CosechaDAO c = new CosechaDAO();
        try {
            archivo = c.generarReporteC(ruta, objeto) + ".pdf";
            Usuarios u = (Usuarios) session.getAttribute("usuario");
            em.enviarConGMailAdjunto(u.getEmail(), "Reporte de cosechas generado " + fechaActual(), "Hola, usuario" + u.getFullname()
                    + " tu reporte de cosechas ha sido genereado con éxito", ruta + "/" + archivo);
            uDAO.obtenerListaAdmin(listaUsuarios, u);
            for (int i = 0; i < listaUsuarios.size(); i++) {
                Usuarios get = listaUsuarios.get(i);
                em.enviarConGMailAdjunto(get.getEmail(), "Reporte de cosechas generado " + fechaActual(), "Hola, estimado administrador de Apícola Cannán: " + get.getFullname()
                        + ", te informamos que el usuario " + u.getFullname() + " ha generado un reporte de las cosechas \nNota: "
                        + "Se adjunta el archivo generado", ruta + "/" + archivo);
            }
            return SUCCESS;
        } catch (FileNotFoundException | SQLException | JRException | MessagingException e) {
            mensaje = e.getMessage();
            return ERROR;
        } finally {
            c.cerrarConexion();
        }
    }

    public String obtenerListaCosechaColmena() {
        CosechaDAO c = new CosechaDAO();
        try {
            c.obtenerListaPorColmena(lista, objeto);
            return SUCCESS;
        } catch (SQLException e) {
            mensaje = e.getMessage();
            return ERROR;
        } finally {
            c.cerrarConexion();
        }
    }

    public String obtenerListaCosechaColmenaFecha() {
        CosechaDAO c = new CosechaDAO();
        try {
            c.obtenerListaPorColmenaFecha(lista, cos);
            json = gson.toJson(lista);
            return SUCCESS;
        } catch (SQLException e) {
            mensaje = e.getMessage();
            return ERROR;
        } finally {
            c.cerrarConexion();
        }
    }

    public String obtenerListaPorFecha() {
        try {
            conexion = new CosechaDAO();
            conexion.obtenerLista(lista, cos);
            json = gson.toJson(lista);
            System.out.println(json);
            return SUCCESS;
        } catch (SQLException e) {
            mensaje = e.getMessage();
            return ERROR;
        } finally {
            cdao2.cerrarConexion();
            conexion.cerrarConexion();
        }
        /*SQL*/
    }

    private String fechaActual() {
        SimpleDateFormat format = new SimpleDateFormat("EEEE, dd-MMMM-yyyy hh:mm:ss");
        return format.format(new Date());
    }

    public String insertar() {
        try {
            cdao2.obtenerListaColmenas();
            conexion = new CosechaDAO();
            int res = conexion.insertarRegistro(objeto);
            if (res > 0) {

                Usuarios u = (Usuarios) session.getAttribute("usuario");
                em.enviarConGMail(u.getEmail(), "Cosecha realizada " + fechaActual(), "Hola, usuario" + u.getFullname()
                        + " la cosecha ha sido registrada correctamente");
                uDAO.obtenerListaAdmin(listaUsuarios, u);
                for (int i = 0; i < listaUsuarios.size(); i++) {
                    Usuarios get = listaUsuarios.get(i);
                    em.enviarConGMail(get.getEmail(), "Colmena cosechada " + fechaActual(), "Hola, estimado administrador de Apícola Cannán: " + get.getFullname()
                            + ", te informamos que el usuario " + u.getFullname() + " ha cosechado la colmena " + objeto.getColmena().getDescripcion()
                            + " del sector " + objeto.getColmena().getSector().getDireccion() + " del recinto " + objeto.getColmena().getSector().getRcto()
                            + " de la parroquia " + objeto.getColmena().getSector().getParroquia().getDescripcion() + ", cantón " + objeto.getColmena().getSector().getParroquia().getCanton().getNombrecanton()
                            + ", provincia de " + objeto.getColmena().getSector().getParroquia().getCanton().getProvincia().getNombreprovincia());
                }
                style = "alert-success";
                estado = "ÉXITO";
                mensaje = "Cosecha realizada con éxito";
            }
        } catch (SQLException | MessagingException e) {
            mensaje = e.getMessage();
        } finally {
            cdao2.cerrarConexion();
            conexion.cerrarConexion();
        }
        return SUCCESS;
    }

    public String actualizar() {
        try {
            cdao2.obtenerListaColmenas();
            CosechaDAO c = new CosechaDAO();
            int res = c.actualizarRegistro(objeto);
            if (res > 0) {
                cos = c.obtenerRegistro(objeto);
                Usuarios u = (Usuarios) session.getAttribute("usuario");
                em.enviarConGMail(u.getEmail(), "Cosecha Actualizada " + fechaActual(), "hola usuario" + u.getFullname()
                        + " la cosecha" + objeto.getIdcosecha() + " ha sido actualizada correctamente");
                uDAO.obtenerListaAdmin(listaUsuarios, u);
                for (int i = 0; i < listaUsuarios.size(); i++) {
                    Usuarios get = listaUsuarios.get(i);
                    em.enviarConGMail(get.getEmail(), "Cosecha Actualizada " + fechaActual(), "Hola, estimado administrador de Apícola Cannán: " + get.getFullname()
                            + ", te informamos que el usuario " + u.getFullname() + " ha actualizado la cosecha de la colmena " + objeto.getColmena().getDescripcion()
                            + " del sector " + objeto.getColmena().getSector().getDireccion() + " del recinto " + objeto.getColmena().getSector().getRcto()
                            + " de la parroquia " + objeto.getColmena().getSector().getParroquia().getDescripcion() + ", cantón " + objeto.getColmena().getSector().getParroquia().getCanton().getNombrecanton()
                            + ", provincia de " + objeto.getColmena().getSector().getParroquia().getCanton().getProvincia().getNombreprovincia());
                }
                style = "alert-success";
                estado = "ÉXITO";
                mensaje = "Cosecha actualizada con éxito";
                return SUCCESS;
            } else {
                mensaje = "Un error ha ocurrido";
                return ERROR;
            }

        } catch (SQLException | MessagingException e) {
            mensaje = e.getMessage();
            return ERROR;
        } finally {
            cdao2.cerrarConexion();
//            conexion.cerrarConexion();
        }
    }

    public List<Colmenas> getListaColmenas() {
        return listaColmenas;
    }

    public void setCos(Cosecha cos) {
        this.cos = cos;
    }

    public Cosecha getCos() {
        return cos;
    }

    public String getJson() {
        return json;
    }

    public String getArchivo() {
        return archivo;
    }

    public void setArchivo(String archivo) {
        this.archivo = archivo;
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

}
