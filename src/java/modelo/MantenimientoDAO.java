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
public class MantenimientoDAO extends ConexionMySQL {

    private final List<Mantenimiento> listaMantenimientos;

    public MantenimientoDAO(List<Mantenimiento> listaMantenimientos) {
        this.listaMantenimientos = listaMantenimientos;
    }

    public int insertarMantenimiento(Mantenimiento m) throws SQLException {
        abrirConexion();
        sentencia = conexion.prepareStatement("insert into mantenimiento(tipo, fecha, idobrero, idcolmena, alimentacion) values(?,?,?,?,?)");
        int i = 1;
        sentencia.setString(i++, m.getTipo());
        sentencia.setDate(i++, m.getFecha());
        sentencia.setInt(i++, m.getIdobrero());
        sentencia.setInt(i++, m.getIdcolmena());
        sentencia.setInt(i++, m.getAlimentacion());
        int res = sentencia.executeUpdate();
        cerrarConexion();
        return res;
    }

    public Mantenimiento obtenerMantenimiento(int idmantenimiento) throws SQLException {
        Mantenimiento m = null;
        abrirConexion();
        sentencia = conexion.prepareStatement("select * from mantenimiento where idmantenimiento=?");
        sentencia.setInt(1, idmantenimiento);
        resultado= sentencia.executeQuery();
        if(resultado.next()){
            
        }
        cerrarConexion();
        return m;
    }

}
