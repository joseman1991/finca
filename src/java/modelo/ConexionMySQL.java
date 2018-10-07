package modelo;

import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Arrays;
import java.util.List;

public class ConexionMySQL<T extends Object> implements ModelDAO<T> {

    protected Connection conexion;
    protected PreparedStatement sentencia;
    protected ResultSet resultado;
    protected CallableStatement procedimiento;
    protected String sqlScript;
    private String valores;
    protected String condicion;

    protected String tabla;

    private String columnas[];
    private String columnasCondcion[];
    private String temp[];
    protected String campos;
    protected String camposCondicion;

    public ConexionMySQL() {
        sqlScript = "";
        valores = "";
        conexion = null;
    }

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

    public void cerrarConexion() {
        try {
            if (conexion != null) {
                conexion.close();
                conexion = null;
            }
            if (sentencia != null) {
                sentencia.close();
                sentencia = null;
            }
            if (resultado != null) {
                resultado.close();
                resultado = null;
            }
            sqlScript = "";
            valores = "";
        } catch (SQLException e) {
            System.out.println(e.getMessage());
        }

    }

    @Override
    public int insertarRegistro(T registro) throws SQLException {
        abrirConexion();
        construirSentenciaInsert();
        sentencia = conexion.prepareStatement(sqlScript);
        try {
            llenarSentencia(registro);
        } catch (IllegalAccessException | IllegalArgumentException | NoSuchMethodException | InvocationTargetException | SQLException e) {
            System.out.println(e.getMessage());
        }
        return sentencia.executeUpdate();
    }

    @Override
    public int actualizarRegistro(T registro) throws SQLException {
        abrirConexion();
        construirSentenciaUpdate();
        System.out.println(sqlScript);
        sentencia = conexion.prepareStatement(sqlScript);
        try {
            llenarSentencia(registro);
        } catch (IllegalAccessException | IllegalArgumentException | NoSuchMethodException | InvocationTargetException | SQLException e) {
            System.out.println(e.getMessage());
        }
        return sentencia.executeUpdate();
    }

    @Override
    public int elimiarRegistro(T registro) throws SQLException {
        abrirConexion();
        sentencia = conexion.prepareStatement(sqlScript);
        return 0;
    }

    @Override
    public T obtenerRegistro(T dato) throws SQLException {
        abrirConexion();
        sentencia = conexion.prepareStatement(sqlScript);
        return null;
    }

    @Override
    public void obtenerLista(List<T> lista) throws SQLException {
        abrirConexion();
        sentencia = conexion.prepareStatement(sqlScript);
    }

    private void construirSentenciaInsert() {
        campos = campos.replaceAll("\\s", "");
        this.columnas = campos.split(",");
        sqlScript = "insert into " + tabla + "(";
        for (int i = 0; i < this.columnas.length; i++) {
            String campo = this.columnas[i];
            if (i < this.columnas.length - 1) {
                valores += "?,";
                sqlScript += campo + ",";
            } else {
                sqlScript += campo + ")";
                valores += "?)";
            }
        }
        sqlScript += " values(" + valores;
    }

    private void construirCondicion() {
        camposCondicion = camposCondicion.replaceAll("\\s", "");
        this.columnasCondcion = camposCondicion.split(",");
        temp = columnas;
        columnas = new String[temp.length + columnasCondcion.length];
        System.arraycopy(temp, 0, columnas, 0, temp.length);
        System.arraycopy(columnasCondcion, 0, columnas, temp.length, columnasCondcion.length);
        System.out.println("temp " + Arrays.toString(temp));
        
        System.out.println("Colcon " + Arrays.toString(columnasCondcion));
    }

    private void construirSentenciaUpdate() {
        campos = campos.replaceAll("\\s", "");
        this.columnas = campos.split(",");        
        sqlScript = "update " + tabla + " set ";
        System.out.println("col " + Arrays.toString(columnas)+columnas.length);
        for (int i = 0; i < this.columnas.length; i++) {
            String campo = this.columnas[i];
            if (i < this.columnas.length - 1) {
                valores = "?,";
            } else {
                valores = "? ";
            }
            sqlScript += campo + "=" + valores;
        }
        sqlScript += condicion;
        construirCondicion();
    }

    private void llenarSentencia(T registro) throws NoSuchMethodException, IllegalAccessException, IllegalArgumentException, InvocationTargetException, SQLException {
        letraMayuscula();
        Class clase = registro.getClass();
        for (int i = 0; i < columnas.length; i++) {
            String campo = columnas[i];
            Method method = clase.getMethod("get" + campo);
            Object dato = method.invoke(registro);
            sentencia.setObject(i + 1, dato);
        }
    }

    private void letraMayuscula() {
        for (int i = 0; i < columnas.length; i++) {
            String string = columnas[i];
            columnas[i] = Character.toUpperCase(string.charAt(0)) + string.substring(1).toLowerCase();
        }
    }

}
