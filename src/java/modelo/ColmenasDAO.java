/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package modelo;

import java.sql.SQLException;

/**
 *
 * @author JOSE
 */
public class ColmenasDAO extends ConexionMySQL {

    public int insertarColmena(Colmenas colmena) throws SQLException {
        abrirConexion();
        sentencia = conexion.prepareStatement("INSERT INTO colmena (idarea, nmarcos, tipo, nalza, idorigen, precio, fecha, idreina,npisos, fechareina)"
                + "VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?,?)");
        int i = 1;
        sentencia.setInt(i++, colmena.getIdarea());
        sentencia.setInt(i++, colmena.getNmarcos());
        sentencia.setString(i++, colmena.getTipo());
        sentencia.setInt(i++, colmena.getNalza());
        sentencia.setInt(i++, colmena.getIdorigen());
        sentencia.setFloat(i++, colmena.getPrecio());
        sentencia.setDate(i++, colmena.getFecha());
        sentencia.setInt(i++, colmena.getIdreina());
        sentencia.setInt(i++, colmena.getNpisos());
        sentencia.setDate(i++, colmena.getFechareina());
        int res = sentencia.executeUpdate();
        cerrarConexion();
        return res;
    }
}

/*
, 
 */
