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
public class OrigenDAO extends ConexionMySQL {

    private final List<Origen> listaOrigen;

    public OrigenDAO(List<Origen> listaOrigen) {
        this.listaOrigen = listaOrigen;
    }

    public void obtnerListas() throws SQLException {
        abrirConexion();
        listaOrigen.clear();
        sentencia = conexion.prepareStatement("select * from origen");
        resultado = sentencia.executeQuery();
        while (resultado.next()) {
            Origen pro = new Origen();
            pro.setIdorigen(resultado.getInt(1));
            pro.setDescripcion(resultado.getString(2));
            listaOrigen.add(pro);
        }
        cerrarConexion();
    }

    public Origen obtenerProvincia(String idorigen) throws SQLException {
        abrirConexion();
        Origen p = null;
        sentencia = conexion.prepareStatement("select * from origen where idorigen=?");
        sentencia.setString(1, idorigen);
        resultado= sentencia.executeQuery();
        if(resultado.next()){
            p= new Origen();
            p.setIdorigen(resultado.getInt(1));
            p.setDescripcion(resultado.getString(2));
        }
        cerrarConexion();
        return p;
    }

}
