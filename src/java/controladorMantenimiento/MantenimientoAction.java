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
import java.util.ArrayList;
import java.util.List;
import modelo.Colmenas;
import modelo.ColmenasDAO;
import modelo.ConexionMySQL;
import modelo.Mantenimiento;
import modelo.MantenimientoDAO;
import modelo.Tipo;
import modelo.TipoDAO;
import net.sf.jasperreports.engine.JRException;

/**
 *
 * @author
 */
public class MantenimientoAction extends Action<Mantenimiento> {

    private final MantenimientoDAO mdao;
    
    private Mantenimiento mantenimiento;
    private final List<Mantenimiento> listaMantenimientos;
    private final ColmenasDAO cdao;
    private final List<Colmenas> listaColmenas;
    

    private final Gson gson;
    private final String ruta;
    private String archivo;
    private String json;

    public MantenimientoAction() {
        listaMantenimientos = new ArrayList<>();
       
        mdao = new MantenimientoDAO(listaMantenimientos);
        mantenimiento = new Mantenimiento();
        listaColmenas = new ArrayList<>();
        cdao = new ColmenasDAO(listaColmenas);
        
        gson = new Gson();
        this.ruta = session.getServletContext().getRealPath("/reportes");
        archivo = "";
    }

    public String insertarMantenimiento() {
        try {
            mdao.insertarMantenimiento(mantenimiento);
            cdao.obtenerListaColmenas();
            mensaje = "Mantenimiento correctamente registrado";
            return SUCCESS;
        } catch (SQLException e) {
            mensaje = e.getMessage();
            return ERROR;
        } finally {
            mdao.cerrarConexion();
            cdao.cerrarConexion();
        }
    }

    public String obtenerReporte() {
        MantenimientoDAO c = new MantenimientoDAO();
        try {
            archivo = c.generarReporte(ruta, mantenimiento) + ".pdf";
            return SUCCESS;
        } catch (FileNotFoundException | SQLException | JRException e) {
            mensaje = e.getMessage();
            return ERROR;
        }
    }

    public String obtenerReporteM() {
        MantenimientoDAO c = new MantenimientoDAO();
        try {
            archivo = c.generarReporteM(ruta, mantenimiento) + ".pdf";
            return SUCCESS;
        } catch (FileNotFoundException | SQLException | JRException e) {
            mensaje = e.getMessage();
            return ERROR;
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

    public String actualizarMantenimiento() {
        try {
            mdao.actualizarRegistro(mantenimiento);
            mantenimiento = mdao.obtenerMantenimiento(mantenimiento.getIdmantenimiento());
            mensaje = "Mantenimiento correctamente actualizado";
            return SUCCESS;
        } catch (SQLException e) {
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

}
