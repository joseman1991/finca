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
public class CosechasDAO extends ConexionMySQL<Cosechas> {

    public CosechasDAO() {
        super();
        tipo = Cosechas.class;
        tabla = "Cosechas";
    }

    @Override
    public int insertarRegistro(Cosechas registro) throws SQLException {
        campos = "idproducto, quintales, hectareas, descripcion,ciclo,fecha";
        int res = super.insertarRegistro(registro);
        cerrarConexion();
        return res;
    }

    @Override
    public void obtenerLista(List<Cosechas> lista) throws SQLException {
        campos = "idcosecha,idproducto, quintales, hectareas, descripcion,ciclo,fecha";
        condicion = "";
        camposCondicion = "";
        super.obtenerLista(lista);
        cerrarConexion();
    }

    @Override
    public void obtenerLista(List<Cosechas> lista, Cosechas dato) throws SQLException {
        campos = "idcosecha,idproducto, quintales, hectareas, descripcion,ciclo,fecha";
        condicion = "where fecha between ? and ?";
        camposCondicion = "fecha,fecha2";
        super.obtenerLista(lista, dato);
        cerrarConexion();
    }

    public void ObtertDatosReporte(List<DatoReporte> lista) throws SQLException {
        abrirConexion();
        sentencia = conexion.prepareStatement("SELECT p.nombre , YEAR(fecha) AS anio, SUM(quintales) FROM cosechas c INNER JOIN productos p\n"
                + "ON p.idproducto=c.idproducto\n"
                + "WHERE p.idproducto=?\n"
                + "GROUP BY p.nombre,anio;");

        sentencia.setInt(1, 1);
        resultado = sentencia.executeQuery();
        DatoReporte dato = new DatoReporte();
        float[] anio = new float[4];
        String[] anios = new String[4];
        int i = 0;
        while (resultado.next()) {
            dato.setProducto(resultado.getString(1));
            anios[i] = (resultado.getString(2));
            anio[i] = resultado.getFloat(3);
            i++;
        }
        dato.setAnios(anio);
        dato.setAnio(anios);

        lista.add(dato);

        sentencia = conexion.prepareStatement("SELECT p.nombre , YEAR(fecha) AS anio, SUM(quintales) FROM cosechas c INNER JOIN productos p\n"
                + "ON p.idproducto=c.idproducto\n"
                + "WHERE p.idproducto=?\n"
                + "GROUP BY p.nombre,anio;");

        sentencia.setInt(1, 2);
        resultado = sentencia.executeQuery();
        dato = new DatoReporte();
        anio = new float[4];
        anios = new String[4];
        i = 0;
        while (resultado.next()) {
            dato.setProducto(resultado.getString(1));
            anios[i] = (resultado.getString(2));
            anio[i] = resultado.getFloat(3);
            i++;
        }
        dato.setAnios(anio);
        dato.setAnio(anios);
        lista.add(dato);

        sentencia = conexion.prepareStatement("SELECT p.nombre , YEAR(fecha) AS anio, SUM(quintales) FROM cosechas c INNER JOIN productos p\n"
                + "ON p.idproducto=c.idproducto\n"
                + "WHERE p.idproducto=?\n"
                + "GROUP BY p.nombre,anio;");

        sentencia.setInt(1, 3);
        resultado = sentencia.executeQuery();
        dato = new DatoReporte();
        anio = new float[4];
        anios = new String[4];
        i = 0;
        while (resultado.next()) {
            dato.setProducto(resultado.getString(1));
            anios[i] = (resultado.getString(2));
            anio[i] = resultado.getFloat(3);
            i++;
        }
        dato.setAnios(anio);
        dato.setAnio(anios);
        lista.add(dato);

        cerrarConexion();
    }

}
