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
public class PerfilesDAO extends ConexionMySQL<Perfiles> {

    public PerfilesDAO() {
        tabla = "Perfiles";
        tipo = Perfiles.class;
    }

    @Override
    public Perfiles obtenerRegistro(Perfiles dato) throws SQLException {
        campos = "idperfil,descripcion";
        camposCondicion = "idperfil";
        condicion = "where idperfil=?";
        dato = super.obtenerRegistro(dato); 
        cerrarConexion();
        return dato;
    }

    @Override
    public void obtenerLista(List<Perfiles> lista) throws SQLException {
        campos = "idperfil,descripcion";
        camposCondicion = "";
        condicion = "";
        super.obtenerLista(lista);
    }

}
