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
 *
 */
public class ReinasDAO extends ConexionMySQL<Reinas> {

    public ReinasDAO() {
        super();
        tipo = Reinas.class;
        tabla = Reinas.class.getSimpleName();
    }

    @Override
    public void obtenerLista(List<Reinas> lista) throws SQLException {
        abrirConexion();
        campos = "idreina,descripcion";
        camposCondicion = "";
        condicion = "";
        super.obtenerLista(lista);
        cerrarConexion();
    }

    @Override
    public Reinas obtenerRegistro(Reinas dato) throws SQLException {
        abrirConexion();
        campos = "idreina,descripcion";
        camposCondicion = "idreina";
        condicion = "where idreina=?";
        dato = super.obtenerRegistro(dato);
        cerrarConexion();
        return dato; //To change body of generated methods, choose Tools | Templates.
    }

}
