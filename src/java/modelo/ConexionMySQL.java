package modelo;

import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class ConexionMySQL {

    protected Connection conexion;
    protected PreparedStatement sentencia;
    protected ResultSet resultado;
    protected CallableStatement procedimiento;

    protected void abrirConexion() throws SQLException {
        String url;
        String usuario = ("root");
        String clave = ("mysql");
        String BaseDeDatos = ("apicola");
        String puerto = ("3306");
        String servidor = ("localhost");
        try {
            Class.forName("com.mysql.jdbc.Driver");
            url = "jdbc:mysql://" + servidor + ":" + puerto + "/" + BaseDeDatos;
            conexion = DriverManager.getConnection(url, usuario, clave);
        } catch (ClassNotFoundException ex) {
            System.out.println(ex.getMessage());
        }
    }

    protected void cerrarConexion() throws SQLException {
        conexion.close();
        conexion=null;
    }

    public Connection getConexion() throws SQLException {
        abrirConexion();
        return conexion;
    }

}
