/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controladorMantenimiento;

import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import modelo.Colmenas;
import modelo.ColmenasDAO;
import modelo.Mantenimiento;
import modelo.MantenimientoDAO;

/**
 *
 * @author JOSE
 */
public class MantenimientoAction extends ActionSupport implements ModelDriven<Mantenimiento> {

    private final MantenimientoDAO mdao;
    private Mantenimiento mantenimiento;
    private final List<Mantenimiento> listaMantenimientos;
    private String mensaje;
    private final ColmenasDAO cdao;
    private final List<Colmenas> listaColmenas;

    public MantenimientoAction() {
        listaMantenimientos = new ArrayList<>();
        mdao = new MantenimientoDAO(listaMantenimientos);
        mantenimiento = new Mantenimiento();
        listaColmenas = new ArrayList<>();
        cdao = new ColmenasDAO(listaColmenas);
    }

    public String insertarMantenimiento() {
        try {
            mdao.insertarMantenimiento(mantenimiento);
            cdao.obtenerListaColmenas();
            mensaje= "Mantenimiento correctamente registrado";
            return SUCCESS;
        } catch (SQLException e) {
            mensaje = e.getMessage();
            return ERROR;
        } finally {
            mdao.cerrarConexion();
            cdao.cerrarConexion();
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

    public String getMensaje() {
        return mensaje;
    }

}
