/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controladorMantenimiento;

import com.google.gson.Gson;
import static com.opensymphony.xwork2.Action.ERROR;
import static com.opensymphony.xwork2.Action.SUCCESS;
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
import modelo.ConexionMySQL;
import modelo.Cosechas;
import modelo.CosechasDAO;
import modelo.EnviarMensaje;
import modelo.Ganado;
import modelo.GanadoDAO;
import modelo.Mantenimiento;
import modelo.MantenimientoDAO;
import modelo.Tipo;
import modelo.TipoDAO;
import modelo.UsuarioDAO;
import modelo.Usuarios;
import net.sf.jasperreports.engine.JRException;

/**
 *
 * @author
 */
public class MantenimientoAction extends Action<Mantenimiento> {

    private final MantenimientoDAO mdao;
    private final UsuarioDAO uDAO;
    private final List<Usuarios> listaUsuarios;
    private Mantenimiento mantenimiento;
    private final List<Mantenimiento> listaMantenimientos;
    private final ColmenasDAO cdao;
    private final List<Colmenas> listaColmenas;
    private final List<Tipo> listaTipos;
    private final EnviarMensaje em;
    private final TipoDAO tdao;

    private final Gson gson;
    private final String ruta;
    private String archivo;
    private String json;

    public MantenimientoAction() {
        listaMantenimientos = new ArrayList<>();
        listaTipos = new ArrayList<>();
        tdao = new TipoDAO();
        mdao = new MantenimientoDAO(listaMantenimientos);
        mantenimiento = new Mantenimiento();
        listaColmenas = new ArrayList<>();
        cdao = new ColmenasDAO(listaColmenas);
        gson = new Gson();
        this.ruta = session.getServletContext().getRealPath("/reportes");
        archivo = "";
        em = new EnviarMensaje();
        listaUsuarios = new ArrayList<>();
        uDAO = new UsuarioDAO(listaUsuarios);
    }

    public String insertarMantenimiento() {
        try {
            mdao.insertarMantenimiento(mantenimiento);
            tdao.obtenerLista(listaTipos);
            cdao.obtenerListaColmenas();
            mensaje = "Mantenimiento correctamente registrado";
            style = "alert-success";
            estado = "ÉXITO";
            Usuarios u = (Usuarios) session.getAttribute("usuario");
            em.enviarConGMail(u.getEmail(), "Mantenimiento realizado " + fechaActual(), "Hola, usuario" + u.getFullname()
                    + " el mantenimiento ha sido registrada correctamente");
            uDAO.obtenerListaAdmin(listaUsuarios, u);
            for (int i = 0; i < listaUsuarios.size(); i++) {
                Usuarios get = listaUsuarios.get(i);
                em.enviarConGMail(get.getEmail(), "Mantenimiento a colmena " + fechaActual(), "Hola, estimado administrador de Apícola Cannán: " + get.getFullname()
                        + ", te informamos que el usuario " + u.getFullname() + " ha dado mantenimiento a la colmena " + mantenimiento.getColmena().getDescripcion()
                        + " del sector " + mantenimiento.getColmena().getSector().getDireccion() + " del recinto " + mantenimiento.getColmena().getSector().getRcto()
                        + " de la parroquia " + mantenimiento.getColmena().getSector().getParroquia().getDescripcion() + ", cantón " + mantenimiento.getColmena().getSector().getParroquia().getCanton().getNombrecanton()
                        + ", provincia de " + mantenimiento.getColmena().getSector().getParroquia().getCanton().getProvincia().getNombreprovincia());
            }
            return SUCCESS;
        } catch (SQLException | MessagingException e) {
            mensaje = e.getMessage();
            return ERROR;
        } finally {
            mdao.cerrarConexion();
            cdao.cerrarConexion();
        }
    }

    private String fechaActual() {
        SimpleDateFormat format = new SimpleDateFormat("EEEE, dd-MMMM-yyyy hh:mm:ss");
        return format.format(new Date());
    }

    public String obtenerReporte() {
        MantenimientoDAO c = new MantenimientoDAO();
        try {
            archivo = c.generarReporte(ruta, mantenimiento) + ".pdf";
            Usuarios u = (Usuarios) session.getAttribute("usuario");
            em.enviarConGMailAdjunto(u.getEmail(), "Reporte de mantenimiento generado " + fechaActual(), "Hola, usuario" + u.getFullname()
                    + " tu reporte de mantenimiento ha sido genereado con éxito", ruta + "/" + archivo);
            uDAO.obtenerListaAdmin(listaUsuarios, u);
            for (int i = 0; i < listaUsuarios.size(); i++) {
                Usuarios get = listaUsuarios.get(i);
                em.enviarConGMailAdjunto(get.getEmail(), "Reporte de mantenimiento generado" + fechaActual(), "Hola, estimado administrador de Apícola Cannán: " + get.getFullname()
                        + ", te informamos que el usuario " + u.getFullname() + " ha generado un reporte de los mantenimientos \nNota "
                        + "Se adjunta el archivo generado", ruta + "/" + archivo );
            }
            return SUCCESS;
        } catch (FileNotFoundException | SQLException | JRException | MessagingException e) {
            mensaje = e.getMessage();
            return ERROR;
        }finally{
            c.cerrarConexion();
        }
    }

    public String obtenerReporteM() {
        MantenimientoDAO c = new MantenimientoDAO();
        try {
            archivo = c.generarReporteM(ruta, mantenimiento) + ".pdf";
            Usuarios u = (Usuarios) session.getAttribute("usuario");
            em.enviarConGMailAdjunto(u.getEmail(), "Reporte de mantenimiento generado " + fechaActual(), "Hola, usuario" + u.getFullname()
                    + " tu reporte de mantenimiento ha sido genereado con éxito", ruta + "/" + archivo);
            uDAO.obtenerListaAdmin(listaUsuarios, u);
            for (int i = 0; i < listaUsuarios.size(); i++) {
                Usuarios get = listaUsuarios.get(i);
                em.enviarConGMailAdjunto(get.getEmail(), "Reporte de mantenimiento generado" + fechaActual(), "Hola, estimado administrador de Apícola Cannán: " + get.getFullname()
                        + ", te informamos que el usuario " + u.getFullname() + " ha generado un reporte de los mantenimiento \nNota: "
                        + "Se adjunta el archivo generado", ruta + "/" + archivo);
            }
            return SUCCESS;
        } catch (FileNotFoundException | SQLException | JRException | MessagingException e) {
            mensaje = e.getMessage();
            return ERROR;
        }finally{
            c.cerrarConexion();
        }
    }

    public String obtenerListaPorFecha() {
        try {
            conexion = new MantenimientoDAO();
            conexion.obtenerLista(lista, mantenimiento);
            json = gson.toJson(lista);
            System.out.println(json);
            return SUCCESS;
        } catch (SQLException e) {
            mensaje = e.getMessage();
            return ERROR;
        } finally {
            conexion.cerrarConexion();
        }
    }

    private String style, estado;

    public String actualizarMantenimiento() {
        try {
            mdao.actualizarRegistro(mantenimiento);
            mantenimiento = mdao.obtenerMantenimiento(mantenimiento.getIdmantenimiento());
            mensaje = "Mantenimiento correctamente actualizado";
            style = "alert-success";
            estado = "ÉXITO";
            Usuarios u = (Usuarios) session.getAttribute("usuario");
            em.enviarConGMail(u.getEmail(), "Mantenimiento Actualizado " + fechaActual(), "Hola, usuario" + u.getFullname()
                    + " el mantenimiento " + mantenimiento.getIdmantenimiento() + " ha sido actualizada correctamente");
            uDAO.obtenerListaAdmin(listaUsuarios, u);
            for (int i = 0; i < listaUsuarios.size(); i++) {
                Usuarios get = listaUsuarios.get(i);
                em.enviarConGMail(get.getEmail(), "Mantenimiento Actualizado " + fechaActual(), "Hola, estimado administrador de Apícola Cannán: " + get.getFullname()
                        + ", te informamos que el usuario " + u.getFullname() + " ha actualizado el mantenimiento de la colmena " + mantenimiento.getColmena().getDescripcion()
                        + " del sector " + mantenimiento.getColmena().getSector().getDireccion() + " del recinto " + mantenimiento.getColmena().getSector().getRcto()
                        + " de la parroquia " + mantenimiento.getColmena().getSector().getParroquia().getDescripcion() + ", cantón " + mantenimiento.getColmena().getSector().getParroquia().getCanton().getNombrecanton()
                        + ", provincia de " + mantenimiento.getColmena().getSector().getParroquia().getCanton().getProvincia().getNombreprovincia());
            }
            return SUCCESS;
        } catch (SQLException | MessagingException e) {
            mensaje = e.getMessage();
            return ERROR;
        } finally {
            mdao.cerrarConexion();
            cdao.cerrarConexion();
        }
    }

    public String obtenerListaMantenimiento() {
        try {
            conexion = new MantenimientoDAO();
            conexion.obtenerLista(listaMantenimientos);
            return SUCCESS;
        } catch (SQLException e) {
            mensaje = e.getMessage();
            return ERROR;
        } finally {
            conexion.cerrarConexion();
        }
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

    public String obtenerListaMantenimientoColmena() {
        try {
            mdao.obtenerListaPorColmena(listaMantenimientos, mantenimiento);
            return SUCCESS;
        } catch (SQLException e) {
            mensaje = e.getMessage();
            return ERROR;
        } finally {
            mdao.cerrarConexion();
        }
    }
    
    private final List<Cosechas> listaCosechas=new ArrayList<>();
    private final CosechasDAO cdao1=new CosechasDAO();
    private Cosechas cosecha=new Cosechas();
    
    public String obtnerCosechas(){
        try {
           cdao1.obtenerLista(listaCosechas, cosecha);
            json = gson.toJson(listaCosechas);
            return SUCCESS;
        } catch (SQLException e) {
            mensaje = e.getMessage();
            return ERROR;
        } finally {
            cdao1.cerrarConexion();
        }
        
    }
    private final List<Ganado> listaGanados=new ArrayList<>();
    private final GanadoDAO gdao1=new GanadoDAO();
    private Ganado ganado=new Ganado();
    
    public String obtnerGanado(){
        try {
           gdao1.obtenerLista(listaGanados, ganado);
            json = gson.toJson(listaGanados);
            return SUCCESS;
        } catch (SQLException e) {
            mensaje = e.getMessage();
            return ERROR;
        } finally {
            gdao1.cerrarConexion();
        }
        
    }

    public Ganado getGanado() {
        return ganado;
    }

    public void setGanado(Ganado ganado) {
        this.ganado = ganado;
    }
    
    

    public Cosechas getCosecha() {
        return cosecha;
    }

    public void setCosecha(Cosechas cosecha) {
        this.cosecha = cosecha;
    }
    
    

    public String obtenerListaMantenimientoColmenaFecha() {
        try {
            mdao.obtenerListaPorColmenaFecha(lista, mantenimiento);
            json = gson.toJson(lista);
            return SUCCESS;
        } catch (SQLException e) {
            mensaje = e.getMessage();
            return ERROR;
        } finally {
            mdao.cerrarConexion();
        }
    }

    public String obtenerMantenimiento() {
        try {
            mantenimiento = mdao.obtenerMantenimiento(mantenimiento.getIdmantenimiento());
            tdao.obtenerLista(listaTipos);
            return SUCCESS;
        } catch (SQLException e) {
            mensaje = e.getMessage();
            return ERROR;
        }
    }

    public Mantenimiento getMantenimiento() {
        return mantenimiento;
    }

    public void setMantenimiento(Mantenimiento mantenimiento) {
        this.mantenimiento = mantenimiento;
    }

    public List<Mantenimiento> getListaMantenimientos() {
        return listaMantenimientos;
    }

    @Override
    public Mantenimiento getModel() {
        return mantenimiento;
    }

    public String getArchivo() {
        return archivo;
    }

    public String getJson() {
        return json;
    }

    public List<Tipo> getListaTipos() {
        return listaTipos;
    }

}
