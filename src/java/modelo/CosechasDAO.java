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
         condicion="";
         camposCondicion="";
        super.obtenerLista(lista);
        cerrarConexion();
    }

}
