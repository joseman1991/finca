/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controladorColmenas;

import static com.opensymphony.xwork2.Action.ERROR;
import static com.opensymphony.xwork2.Action.SUCCESS;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import modelo.Colmenas;
import modelo.ColmenasDAO;
import modelo.Origen;
import modelo.OrigenDAO;
import modelo.Provincias;
import modelo.ProvinciasDAO;
import modelo.Sectores;
import modelo.SectoresDAO;

/**
 *
 * @author 
 */
public class ColmenaAction extends ActionSupport implements ModelDriven<Colmenas> {

    private Colmenas colmena;
    private final List<Origen> listaOrigen;
    private String mensaje;
    private final OrigenDAO odao;
    private final SectoresDAO sdao;
    private final List<Sectores> listaSectores;
    private final ColmenasDAO cdao;
    private final List<Colmenas> listaColmenas;
     

    public ColmenaAction() {
        this.listaOrigen = new ArrayList<>();
        odao = new OrigenDAO(listaOrigen);
        listaColmenas = new ArrayList<>();
        
        cdao = new ColmenasDAO(listaColmenas);
        
        listaSectores = new ArrayList<>();
        sdao = new SectoresDAO(listaSectores);
        colmena = new Colmenas();
    }

    public String insertarColmena() {
        try {
            int res = cdao.insertarColmena(colmena);
            if (res > 0) {
                mensaje = "Colmena registrada correctamente";
                odao.obtnerListas();
                sdao.obtenerSectors();
                return SUCCESS;
            } else {
                mensaje = "Ha ocurrido un error";
                return ERROR;
            }
        } catch (SQLException e) {
            mensaje = e.getMessage();
            return ERROR;
        } finally {
            cdao.cerrarConexion();
            odao.cerrarConexion();
            sdao.cerrarConexion();
        }
    }
    
    public String actualizarColmena() {
        try {
            int res = cdao.actualizarRegistro(colmena);
            if (res > 0) {
                mensaje = "Colmena actualizado correctamente";
                odao.obtnerListas();
                sdao.obtenerSectors();
                return SUCCESS;
            } else {
                mensaje = "Ha ocurrido un error";
                return ERROR;
            }
        } catch (SQLException e) {
            mensaje = e.getMessage();
            return ERROR;
        } finally {
            cdao.cerrarConexion();
            odao.cerrarConexion();
            sdao.cerrarConexion();
        }
    }

    public String obtenerOrigen() {
        try {
            odao.obtnerListas();
            sdao.obtenerSectors();
            return SUCCESS;
        } catch (SQLException e) {
            mensaje = e.getMessage();
            return ERROR;
        } finally {
            odao.cerrarConexion();
            sdao.cerrarConexion();
        }
    }

    public String obtenerColmenas() {
        try {
            cdao.obtenerListaColmenas();
            return SUCCESS;
        } catch (SQLException e) {
            mensaje = e.getMessage();
            return ERROR;
        } finally {
            cdao.cerrarConexion();

        }
    }

    public String obtenerColmena() {
        try {
            colmena = cdao.obtenerRegistro(colmena);
            sdao.obtenerSectors();
            odao.obtnerListas();
            return SUCCESS;
        } catch (SQLException e) {
            mensaje = e.getMessage();
            return ERROR;
        } finally {
            cdao.cerrarConexion();

        }
    }

    public List<Origen> getListaOrigen() {
        return listaOrigen;
    }

    public String getMensaje() {
        return mensaje;
    }

    public List<Sectores> getListaSectores() {
        return listaSectores;
    }

    public Colmenas getColmena() {
        return colmena;
    }

    public void setColmena(Colmenas colmena) {
        this.colmena = colmena;
    }

    @Override
    public Colmenas getModel() {
        return colmena;
    }

    public List<Colmenas> getListaColmenas() {
        return listaColmenas;
    }

    

}
