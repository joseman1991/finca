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
public class TipoDAO extends ConexionMySQL<Tipo> {

    public TipoDAO() {
        super();
        tipo = Tipo.class;
        tabla = Tipo.class.getSimpleName();
    }

    @Override
    public void obtenerLista(List<Tipo> lista) throws SQLException {

        campos = "idtipo,descricion";
        camposCondicion = "";
        condicion = "";
        super.obtenerLista(lista);
        cerrarConexion();
    }

    @Override
    public Tipo obtenerRegistro(Tipo dato) throws SQLException {
        campos = "idtipo,descricion";
        camposCondicion = "idtipo";
        condicion = "where idtipo=?";
        dato = super.obtenerRegistro(dato);
        cerrarConexion();
        return dato; //To change body of generated methods, choose Tools | Templates.
    }

}
