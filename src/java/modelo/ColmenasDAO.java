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
public class ColmenasDAO extends ConexionMySQL<Colmenas> {

    private List<Colmenas> listaColmenas;

    public ColmenasDAO() {
        tabla = "Colmena";
        tipo = Colmenas.class;
    }

    public ColmenasDAO(List<Colmenas> listaColmenas) {
        this.listaColmenas = listaColmenas;
        tabla = "Colmena";
        tipo = Colmenas.class;
    }

    public int insertarColmena(Colmenas colmena) throws SQLException {
        abrirConexion();
        sentencia = conexion.prepareStatement("INSERT INTO colmena (idarea, descripcion,nmarcos, tipo, nalza, idorigen, precio, fecha, idreina,npisos, fechareina)"
                + "VALUES (?, ?,?, ?, ?, ?, ?, ?, ?, ?,?)");
        int i = 1;
        sentencia.setInt(i++, colmena.getIdarea());
        sentencia.setString(i++, colmena.getDescripcion());
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

    public void obtenerListaColmenas() throws SQLException {
        abrirConexion();
        listaColmenas.clear();
        sentencia = conexion.prepareStatement("select * from colmena");
        resultado = sentencia.executeQuery();
        while (resultado.next()) {
            Colmenas c = new Colmenas();
            int i = 1;
            c.setIdcolmena(resultado.getInt(i++));
            c.setDescripcion(resultado.getString(i++));
            c.setIdarea(resultado.getInt(i++));
            c.setNmarcos(resultado.getInt(i++));
            c.setTipo(resultado.getString(i++));
            c.setNalza(resultado.getInt(i++));
            c.setIdorigen(resultado.getInt(i++));
            c.setPrecio(resultado.getFloat(i++));
            c.setNpisos(resultado.getInt(i++));
            c.setFecha(resultado.getString(i++));
            c.setIdreina(resultado.getInt(i++));
            c.setFechareina(resultado.getString(i++));
            listaColmenas.add(c);
        }
        cerrarConexion();
    }

    @Override
    public Colmenas obtenerRegistro(Colmenas dato) throws SQLException {
        abrirConexion();
        campos = "idcolmena,idarea, nmarcos, tipo, descripcion,nalza,idorigen,npisos,precio,fecha,idreina,fechareina";
        camposCondicion = "idcolmena";
        condicion = "where idcolmena=?";
        Colmenas c = super.obtenerRegistro(dato);
        cerrarConexion();
        return c; //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public int actualizarRegistro(Colmenas registro) throws SQLException {
        campos = "idcolmena,idarea, nmarcos, tipo, descripcion,nalza,idorigen,npisos,precio,fecha,idreina,fechareina";
        camposCondicion = "idcolmena";
        condicion = "where idcolmena=?";
        int res=super.actualizarRegistro(registro);
        cerrarConexion();
        return res ; //To change body of generated methods, choose Tools | Templates.
    }
    
    
    
    
    

}

/*
, 
 */
