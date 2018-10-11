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
 * @author 
 */
public class ProvinciasDAO extends ConexionMySQL {

    private final List<Provincias> listaProvincias;

    public ProvinciasDAO(List<Provincias> listaProvincias) {
        this.listaProvincias = listaProvincias;
    }

    public void obtnerListas() throws SQLException {
        abrirConexion();
        listaProvincias.clear();
        sentencia = conexion.prepareStatement("select * from provincias");
        resultado = sentencia.executeQuery();
        while (resultado.next()) {
            Provincias pro = new Provincias();
            pro.setIdprovincia(resultado.getString(1));
            pro.setNombreprovincia(resultado.getString(2));
            listaProvincias.add(pro);
        }
        cerrarConexion();
    }

    public Provincias obtenerProvincia(String idprovincia) throws SQLException {
        abrirConexion();
        Provincias p = null;
        sentencia = conexion.prepareStatement("select * from provincias where idprovincia=?");
        sentencia.setString(1, idprovincia);
        resultado= sentencia.executeQuery();
        if(resultado.next()){
            p= new Provincias();
            p.setIdprovincia(resultado.getString(1));
            p.setNombreprovincia(resultado.getString(2));
        }
        cerrarConexion();
        return p;
    }

}
