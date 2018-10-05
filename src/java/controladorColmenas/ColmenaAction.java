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
import java.sql.Connection;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import modelo.Colmenas;
import modelo.ColmenasDAO;
import modelo.Origen;
import modelo.OrigenDAO;
import modelo.Sectores;
import modelo.SectoresDAO;

/**
 *
 * @author JOSE
 */
public class ColmenaAction extends ActionSupport implements ModelDriven<Colmenas> {

    private Colmenas colmena;
    private final List<Origen> listaOrigen;
    private String mensaje;
    private Connection conexion;
    private final OrigenDAO odao;
    private final SectoresDAO sdao;
    private final List<Sectores> listaSectores;
    private final ColmenasDAO cdao;

    public ColmenaAction() {
        this.listaOrigen = new ArrayList<>();
        odao = new OrigenDAO(listaOrigen);
        cdao = new ColmenasDAO();
        listaSectores = new ArrayList<>();
        sdao = new SectoresDAO(listaSectores);
        colmena = new Colmenas();
    }

    public String insertarColmena() {
        try {
            conexion = cdao.getConexion();
            int res = cdao.insertarColmena(colmena);
            if (res > 0) {
                mensaje = "Colmena registrada correctamente";
                conexion = odao.getConexion();
                odao.obtnerListas();
                conexion = sdao.getConexion();
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
            cerrarConexion();
        }
    }

    public String obtenerOrigen() {
        try {
            conexion = odao.getConexion();
            odao.obtnerListas();
            conexion = sdao.getConexion();
            sdao.obtenerSectors();
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
                conexion = null;
            }
        } catch (SQLException e) {
            mensaje = e.getMessage();
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

}
