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
 * @author
 */
public class UsuarioDAO extends ConexionMySQL {

    private final List<Usuarios> listaUsuarios;

    public UsuarioDAO() {
        listaUsuarios = new ArrayList<>();
    }

    public UsuarioDAO(List<Usuarios> listaUsuarios) {
        this.listaUsuarios = listaUsuarios;
    }

    public void obtenerLista(Usuarios u) throws SQLException {
        abrirConexion();
        listaUsuarios.clear();
        sentencia = conexion.prepareStatement("select * from usuarios where idusuario<>?");
        sentencia.setInt(1, u.getIdusuario());
        resultado = sentencia.executeQuery();
        while (resultado.next()) {
            Usuarios user = new Usuarios();
            int i = 1;
            user.setIdusuario(resultado.getInt(i++));
            user.setEmail(resultado.getString(i++));
            user.setClave(resultado.getString(i++));
            user.setNombre(resultado.getString(i++));
            user.setApellido(resultado.getString(i++));
            user.setIdperfil(resultado.getInt(i++));
            listaUsuarios.add(user);
        }
        cerrarConexion();
    }

    public int insertarUsuario(Usuarios usuario) throws SQLException {
        abrirConexion();
        sentencia = conexion.prepareStatement("insert into usuarios(email,clave,nombre,apellido,idperfil) values (?,?,?,?,?)");
        int i = 1;
        sentencia.setString(i++, usuario.getEmail());
        sentencia.setString(i++, usuario.getClave());
        sentencia.setString(i++, usuario.getNombre());
        sentencia.setString(i++, usuario.getApellido());       
          sentencia.setInt(i++, usuario.getIdperfil());
          System.out.println("sentencia "+sentencia);
        int result = sentencia.executeUpdate();
        cerrarConexion();
        return result;
    }

    public int actualizarUsuario(Usuarios usuario) throws SQLException {
        abrirConexion();
        sentencia = conexion.prepareStatement("update usuarios set email=?,clave=?,nombre=?,apellido=?,idperfil=? where idusuario=?");
        int i = 1;
        sentencia.setString(i++, usuario.getEmail());
        sentencia.setString(i++, usuario.getClave());
        sentencia.setString(i++, usuario.getNombre());
        sentencia.setString(i++, usuario.getApellido());
        sentencia.setInt(i++, usuario.getIdperfil());
        sentencia.setInt(i++, usuario.getIdusuario());        
        int result = sentencia.executeUpdate();
        cerrarConexion();
        return result;
    }

    public Usuarios obtenerUsusario(Usuarios user) throws SQLException {
        abrirConexion();
        sentencia = conexion.prepareStatement("select * from usuarios where  email=? and clave=?");
        sentencia.setString(1, user.getEmail());
        sentencia.setString(2, user.getClave());
        resultado = sentencia.executeQuery();
        if (resultado.next()) {
            int i = 1;
            user.setIdusuario(resultado.getInt(i++));
            user.setEmail(resultado.getString(i++));
            user.setClave(resultado.getString(i++));
            user.setNombre(resultado.getString(i++));
            user.setApellido(resultado.getString(i++));
            user.setIdperfil(resultado.getInt(i++));
        } else {
            user = null;
        }
        cerrarConexion();
        return user;
    }

    public Usuarios obtenerUsusario(int idusuario) throws SQLException {
        Usuarios user = null;
        abrirConexion();
        sentencia = conexion.prepareStatement("select * from usuarios where idusuario=? ");
        sentencia.setInt(1, idusuario);
        resultado = sentencia.executeQuery();
        if (resultado.next()) {
            user = new Usuarios();
            int i = 1;
            user.setIdusuario(resultado.getInt(i++));
            user.setEmail(resultado.getString(i++));
            user.setClave(resultado.getString(i++));
            user.setNombre(resultado.getString(i++));
            user.setApellido(resultado.getString(i++));
            user.setIdperfil(resultado.getInt(i++));
        }
        cerrarConexion();
        return user;
    }
    public Usuarios obtenerUsusario(String email) throws SQLException {
        Usuarios user = null;
        abrirConexion();
        sentencia = conexion.prepareStatement("select * from usuarios where email=? ");
        sentencia.setString(1, email);
        resultado = sentencia.executeQuery();
        if (resultado.next()) {
            user = new Usuarios();
            int i = 1;
            user.setIdusuario(resultado.getInt(i++));
            user.setEmail(resultado.getString(i++));
            user.setClave(resultado.getString(i++));
            user.setNombre(resultado.getString(i++));
            user.setApellido(resultado.getString(i++));
            user.setIdperfil(resultado.getInt(i++));
        }
        cerrarConexion();
        return user;
    }

}
