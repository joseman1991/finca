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
public class CosechaDAO extends ConexionMySQL<Cosecha> {

    public CosechaDAO() {
        tabla = "cosecha";
    }

    @Override
    public int insertarRegistro(Cosecha registro) throws SQLException {
        campos = "idcolmena, idobrero, marcos, pesovacio,pesolleno,fecha,tipoalza";
        int res = super.insertarRegistro(registro);
        cerrarConexion();
        return res;
    }

    @Override
    public int actualizarRegistro(Cosecha registro) throws SQLException {
        campos = "idcolmena, idobrero, marcos, pesovacio,pesolleno,fecha,tipoalza";
        camposCondicion = "idcosecha";
        condicion = "where idcosecha=?";
        int res=super.actualizarRegistro(registro);
        cerrarConexion();
        return res;
    }

    @Override
    public void obtenerLista(List<Cosecha> lista) throws SQLException {
        super.obtenerLista(lista);
    }

}
