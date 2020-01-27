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
public class ProductosDAO extends ConexionMySQL<Productos> {

    public ProductosDAO() {
        super();
        tipo = Productos.class;
        tabla = "productos";
    }

    @Override
    public void obtenerLista(List<Productos> lista) throws SQLException {
        campos = "idproducto,nombre";
        camposCondicion = "";
        condicion = "where idcategoria=1";
        super.obtenerLista(lista);
        cerrarConexion();
    }

    @Override
    public Productos obtenerRegistro(Productos dato) throws SQLException {
        campos = "idproducto,nombre";
        camposCondicion = "idproducto";
        condicion = "where idproducto=?";
        cerrarConexion();
        return super.obtenerRegistro(dato);
//To change body of generated methods, choose Tools | Templates.
    }

}
