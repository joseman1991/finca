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
public class SectoresDAO extends ConexionMySQL {

    private final List<Sectores> listaSectores;

    public SectoresDAO(List<Sectores> listaSectores) {
        this.listaSectores = listaSectores;
    }

    public int insertarSector(Sectores sector) throws SQLException {
        abrirConexion();
        sentencia = conexion.prepareStatement("insert into sector(nombre,idprovincia,rcto,direccion,email,observacion,responsable)"
                + " values(?,?,?,?,?,?,?)");
        int i = 1;
        sentencia.setString(i++, sector.getNombre());
        sentencia.setString(i++, sector.getIdprovincia());
        sentencia.setString(i++, sector.getRcto());
        sentencia.setString(i++, sector.getDireccion());
        sentencia.setString(i++, sector.getEmail());
        sentencia.setString(i++, sector.getObservacion());
        sentencia.setString(i++, sector.getResponsable());
        int res = sentencia.executeUpdate();
        cerrarConexion();
        return res;
    }
    
    
    public int actualizarSector(Sectores sector) throws SQLException {
        abrirConexion();
        sentencia = conexion.prepareStatement("update sector set nombre=?,idprovincia=?,rcto=?,direccion=?,email=?,observacion=?,responsable=?"
                + " where idsector=?");
        int i = 1;
        sentencia.setString(i++, sector.getNombre());
        sentencia.setString(i++, sector.getIdprovincia());
        sentencia.setString(i++, sector.getRcto());
        sentencia.setString(i++, sector.getDireccion());
        sentencia.setString(i++, sector.getEmail());
        sentencia.setString(i++, sector.getObservacion());
        sentencia.setString(i++, sector.getResponsable());
        sentencia.setInt(i++, sector.getIdsector());
        int res = sentencia.executeUpdate();
        cerrarConexion();
        return res;
    }

    public Sectores obtenerSector(int idsector) throws SQLException {
        abrirConexion();
        Sectores s = null;
        sentencia = conexion.prepareStatement("select * from sector where idsector = ?");
        sentencia.setInt(1, idsector);
        resultado = sentencia.executeQuery();
        if (resultado.next()) {
            s = new Sectores();
            int i = 1;
            s.setIdsector(resultado.getInt(i++));
            s.setNombre(resultado.getString(i++));
            s.setProvincia(new ProvinciasDAO(null).obtenerProvincia(resultado.getString(i++)));
            s.setRcto(resultado.getString(i++));
            s.setDireccion(resultado.getString(i++));
            s.setEmail(resultado.getString(i++));
            s.setObservacion(resultado.getString(i++));
            s.setResponsable(resultado.getString(i++));
        }
        cerrarConexion();
        return s;
    }

    public void obtenerSectors() throws SQLException {
        abrirConexion();

        sentencia = conexion.prepareStatement("select * from sector");

        resultado = sentencia.executeQuery();
        while (resultado.next()) {
            Sectores s = new Sectores();
            int i = 1;
            s.setIdsector(resultado.getInt(i++));
            s.setNombre(resultado.getString(i++));
            s.setProvincia(new ProvinciasDAO(null).obtenerProvincia(resultado.getString(i++)));
            s.setRcto(resultado.getString(i++));
            s.setDireccion(resultado.getString(i++));
            s.setEmail(resultado.getString(i++));
            s.setObservacion(resultado.getString(i++));
            s.setResponsable(resultado.getString(i++));
            listaSectores.add(s);
        }
        cerrarConexion();
    }

}
