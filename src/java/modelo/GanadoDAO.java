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
public class GanadoDAO extends ConexionMySQL<Ganado> {

    public GanadoDAO() {
        super();
        tipo = Ganado.class;
        tabla = "ganado";
    }

    @Override
    public int insertarRegistro(Ganado registro) throws SQLException {
        campos = "nombre, tipo, raza, edad,observacion,fecha";
        int res = super.insertarRegistro(registro);
        cerrarConexion();
        return res;

    }

    @Override
    public void obtenerLista(List<Ganado> lista) throws SQLException {
        campos = "idganado,nombre, tipo, raza, edad,observacion,fecha";
        camposCondicion = "";
        condicion = "";
        super.obtenerLista(lista);
        cerrarConexion();
    }

    @Override
    public void obtenerLista(List<Ganado> lista, Ganado dato) throws SQLException {
        campos = "idganado,nombre, tipo, raza, edad,observacion,fecha";
        condicion = "where fecha between ? and ?";
        camposCondicion = "fecha,fecha2";
        super.obtenerLista(lista, dato);
        cerrarConexion();
    }

}
