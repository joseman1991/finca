/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package modelo;

import java.sql.SQLException;

/**
 *
 * @author
 */
public class EstadoDAO extends ConexionMySQL<Estados> {

    public EstadoDAO() {
        super();
        tipo = Estados.class;
        tabla = Estados.class.getSimpleName();
    }

    @Override
    public Estados obtenerRegistro(Estados dato) throws SQLException {
        campos="idestado,descripcion";
        camposCondicion="idestado";
        condicion="where idestado=?";
        super.obtenerRegistro(dato);
        return dato;
    }

}
