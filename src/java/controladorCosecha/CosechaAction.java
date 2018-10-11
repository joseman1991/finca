/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controladorCosecha;

import controlador.Action;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import modelo.Colmenas;
import modelo.ColmenasDAO;
import modelo.Cosecha;
import modelo.CosechaDAO;

/**
 *
 * @author 
 */
public class CosechaAction extends Action<Cosecha> {

    private final ColmenasDAO cdao2;
    private final List<Colmenas> listaColmenas;

    public CosechaAction() {
        objeto = new Cosecha();
        listaColmenas = new ArrayList<>();
        cdao2 = new ColmenasDAO(listaColmenas);
    }

    public String obtenerColmenas() {
        try {
            cdao2.obtenerListaColmenas();
            conexion = new CosechaDAO();
            Cosecha c = (Cosecha) objeto;
            System.out.println(c.getIdcosecha());
            objeto = (Cosecha) conexion.obtenerRegistro(objeto);
            return SUCCESS;
        } catch (SQLException e) {
            mensaje = e.getMessage();
            return ERROR;
        } finally {
            cdao2.cerrarConexion();
        }
    }

    public String obtenerLista() {
        try {
            cdao2.obtenerListaColmenas();
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

    public String insertar() {
        try {
            cdao2.obtenerListaColmenas();
            conexion = new CosechaDAO();
            int res = conexion.insertarRegistro(objeto);
            if (res > 0) {
                mensaje = "Cosecha realizada con éxito";
            }
        } catch (SQLException e) {
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
                mensaje = "Cosecha actualizada con éxito";
                return SUCCESS;
            }else{
                mensaje = "Un error ha ocurrido";
                return ERROR;
            }
           
        } catch (SQLException e) {
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

}
