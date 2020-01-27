/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controladorSectores;

import static com.opensymphony.xwork2.Action.ERROR;
import static com.opensymphony.xwork2.Action.SUCCESS;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import modelo.Ganado;
import modelo.GanadoDAO;

/**
 *
 * @author JOSE
 */
public class GanadoAction extends ActionSupport implements ModelDriven<Ganado> {

    private Ganado ganado;

    private final GanadoDAO gdao;

    private String mensaje;
    private String style;
    private String estado;

    private final List<Ganado> listGanados;

    public GanadoAction() {
        this.gdao = new GanadoDAO();
        this.ganado = new Ganado();
        listGanados = new ArrayList<>();
    }

    public String insertarGanado() {
        try {
            int res = gdao.insertarRegistro(ganado);
            if (res > 0) {
                mensaje = "Ganado registrado correctamente";
                style = "alert-success";
                estado = "ÉXITO";

                return SUCCESS;
            } else {
                mensaje = "Ha ocurrido un error";
                return ERROR;
            }
        } catch (SQLException e) {
            mensaje = e.getMessage();
            return ERROR;
        } finally {
            gdao.cerrarConexion();
        }
    }

    public String obtenerGanado() {
        try {
            gdao.obtenerLista(listGanados);
            return SUCCESS;
        } catch (SQLException e) {
            mensaje = e.getMessage();
            return ERROR;
        } finally {
            gdao.cerrarConexion();
        }
    }

    @Override
    public Ganado getModel() {
        return ganado;
    }

    public Ganado getGanado() {
        return ganado;
    }

    public void setGanado(Ganado ganado) {
        this.ganado = ganado;
    }

    public GanadoDAO getGdao() {
        return gdao;
    }

    public String getMensaje() {
        return mensaje;
    }

    public String getStyle() {
        return style;
    }

    public String getEstado() {
        return estado;
    }

    public List<Ganado> getListGanados() {
        return listGanados;
    }

    
    
    
}
