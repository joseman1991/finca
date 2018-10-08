/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package modelo;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author JOSE
 */
public class MantenimientoDAO extends ConexionMySQL<Mantenimiento> {

    private final List<Mantenimiento> listaMantenimientos;

    public MantenimientoDAO() {
        this.listaMantenimientos = new ArrayList<>();
        tabla = "mantenimiento";
        tipo = Mantenimiento.class;
    }

    public MantenimientoDAO(List<Mantenimiento> listaMantenimientos) {
        this.listaMantenimientos = listaMantenimientos;
        tabla = "mantenimiento";
        tipo = Mantenimiento.class;
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
        resultado = sentencia.executeQuery();
        if (resultado.next()) {
            m = new Mantenimiento();
            int i = 1;
            m.setIdmantenimiento(resultado.getInt(i++));
            m.setTipo(resultado.getString(i++));
            m.setFecha(resultado.getString(i++));
            m.setIdobrero(resultado.getInt(i++));
            m.setIdcolmena(resultado.getInt(i++));
            m.setAlimentacion(resultado.getInt(i++));
        }
        cerrarConexion();
        return m;
    }

    @Override
    public void obtenerLista(List lista) throws SQLException {        
        campos = "idmantenimiento, tipo, fecha, idobrero, idcolmena, alimentacion ";
        camposCondicion = "";
        condicion = "";
        super.obtenerLista(lista);

    }

    public void obtenerListaMantenimiento() throws SQLException {
        abrirConexion();
        listaMantenimientos.clear();
        sentencia = conexion.prepareStatement("select * from mantenimiento");
        resultado = sentencia.executeQuery();
        while (resultado.next()) {
            Mantenimiento m = new Mantenimiento();
            int i = 1;
            m.setIdmantenimiento(resultado.getInt(i++));
            m.setTipo(resultado.getString(i++));
            m.setFecha(resultado.getString(i++));
            m.setIdobrero(resultado.getInt(i++));
            m.setIdcolmena(resultado.getInt(i++));
            m.setAlimentacion(resultado.getInt(i++));
            listaMantenimientos.add(m);

        }
        cerrarConexion();
    }

}
