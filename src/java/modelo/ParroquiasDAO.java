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
public class ParroquiasDAO extends ConexionMySQL<Parroquia> {

    public ParroquiasDAO() {
        super();
        tipo = Parroquia.class;
        tabla = Parroquia.class.getSimpleName();
    }

    @Override
    public void obtenerLista(List<Parroquia> lista, Parroquia dato) throws SQLException {
        campos = "idparroquia,descripcion,idcanton";
        camposCondicion = "idcanton";
        condicion = "where idcanton=?";
        super.obtenerLista(lista, dato);
        cerrarConexion();
    }

    @Override
    public Parroquia obtenerRegistro(Parroquia dato) throws SQLException {
        campos = "idparroquia,descripcion,idcanton";
        camposCondicion = "idparroquia";
        condicion = "where idparroquia=?";
        dato = super.obtenerRegistro(dato);
        cerrarConexion();
        return (dato);
    }



}
