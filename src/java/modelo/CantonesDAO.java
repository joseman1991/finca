/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package modelo;

import java.sql.SQLException;
import java.util.List;

/**
 *
 * @author JOSE
 */
public class CantonesDAO extends ConexionMySQL<Cantones> {

    public CantonesDAO() {
        super();
        tipo = Cantones.class;
        tabla = Cantones.class.getSimpleName();
    }

    @Override
    public Cantones obtenerRegistro(Cantones dato) throws SQLException {
         campos = "idcanton,nombrecanton,idprovincia";
        camposCondicion = "idcanton";
        condicion = "where idcanton=?";
        dato = super.obtenerRegistro(dato);
        cerrarConexion();
        return (dato);
    }

 

    @Override
    public void obtenerLista(List<Cantones> lista, Cantones dato) throws SQLException {
        campos = "idcanton,nombrecanton,idprovincia";
        camposCondicion = "idprovincia";
        condicion = "where idprovincia=?";
        super.obtenerLista(lista, dato);
        cerrarConexion();
    }

}
