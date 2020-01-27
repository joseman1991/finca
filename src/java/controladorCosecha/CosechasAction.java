/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controladorCosecha;

import static com.opensymphony.xwork2.Action.ERROR;
import static com.opensymphony.xwork2.Action.SUCCESS;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import modelo.Cosechas;
import modelo.CosechasDAO;
import modelo.Productos;
import modelo.ProductosDAO;

public class CosechasAction extends ActionSupport implements ModelDriven<Cosechas> {

    private Cosechas cosechas;
    private final CosechasDAO cdao;

    private String mensaje;
    private String style;
    private String estado;

    public CosechasAction() {
        this.cdao = new CosechasDAO();
        this.cosechas = new Cosechas();
    }

    @Override
    public Cosechas getModel() {
        return cosechas;
    }

    public Cosechas getCosechas() {
        return cosechas;
    }

    public void setCosechas(Cosechas cosechas) {
        this.cosechas = cosechas;
    }

    private final ProductosDAO productosDAO = new ProductosDAO();
    private List<Productos> listaProductos = new ArrayList<>();

    public String insertarCosecha() {
        try {
            int res = cdao.insertarRegistro(cosechas);
            if (res > 0) {
                mensaje = "Cosecha registrada correctamente";
                style = "alert-success";
                estado = "ÉXITO";
                productosDAO.obtenerLista(listaProductos);
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
            productosDAO.cerrarConexion();
        }
    }

    private List<Cosechas> listCosechas = new ArrayList<>();

    public String obtenerCosechas() {
        try {
            cdao.obtenerLista(listCosechas);
            return SUCCESS;
        } catch (SQLException e) {
            mensaje = e.getMessage();
            return ERROR;
        } finally {
            cdao.cerrarConexion();
        }
    }

    public List<Cosechas> getListCosechas() {
        return listCosechas;
    }

    public void setListCosechas(List<Cosechas> listCosechas) {
        this.listCosechas = listCosechas;
    }

    public String getMensaje() {
        return mensaje;
    }

    public void setMensaje(String mensaje) {
        this.mensaje = mensaje;
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

    public List<Productos> getListaProductos() {
        return listaProductos;
    }

    public void setListaProductos(List<Productos> listaProductos) {
        this.listaProductos = listaProductos;
    }

}
