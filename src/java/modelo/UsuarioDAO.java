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
public class UsuarioDAO extends ConexionMySQL<Usuarios> {

    private final List<Usuarios> listaUsuarios;

    public UsuarioDAO() {
        super();
        listaUsuarios = new ArrayList<>();
        tipo = Usuarios.class;
        tabla = Usuarios.class.getSimpleName();
    }

    public UsuarioDAO(List<Usuarios> listaUsuarios) {
        this.listaUsuarios = listaUsuarios;
        tipo = Usuarios.class;
        tabla = Usuarios.class.getSimpleName();
    }

    public void obtenerLista(Usuarios u) throws SQLException {
        abrirConexion();
        listaUsuarios.clear();
        campos = "idusuario,email,nombre,apellido,idperfil,nombre2,apellido2,cedula,direccion,telefono,idestado";
        camposCondicion = "";
        condicion = "";
        super.obtenerLista(listaUsuarios);
        cerrarConexion();
    }

    public int insertarUsuario(Usuarios usuario) throws SQLException {
        abrirConexion();
        campos = "email,clave,nombre,apellido,idperfil,nombre2,apellido2,cedula,direccion,telefono";
        int result = super.insertarRegistro(usuario);
        cerrarConexion();
        return result;
    }

    public int actualizarUsuario(Usuarios usuario) throws SQLException {
        abrirConexion();
        campos = "email,clave,nombre,apellido,idperfil,nombre2,apellido2,cedula,direccion,telefono";
        camposCondicion = "idusuario";
        condicion = " where idusuario=?";
        int result = super.actualizarRegistro(usuario);
        cerrarConexion();
        return result;
    }

    @Override
    public int actualizarRegistro(Usuarios registro) throws SQLException {
        campos = "idestado";
        camposCondicion = "idusuario";
        condicion = " where idusuario=?";
        int result = super.actualizarRegistro(registro);
        cerrarConexion();
        return result;
    }

    @Override
    public Usuarios obtenerRegistro(Usuarios dato) throws SQLException {

        return super.obtenerRegistro(dato); //To change body of generated methods, choose Tools | Templates.
    }

    public Usuarios obtenerUsusario(Usuarios user) throws SQLException {
        abrirConexion();
        campos = "idusuario,email,clave,nombre,apellido,idperfil,nombre2,apellido2,cedula,direccion,telefono,idestado";
        camposCondicion = "email,clave";
        condicion = "where  email=? and clave=?";
        user = super.obtenerRegistro(user);
        cerrarConexion();
        return user;
    }

    public Usuarios obtenerUsusario(int idusuario) throws SQLException {
        Usuarios user = new Usuarios();
        user.setIdusuario(idusuario);
        abrirConexion();
        campos = "email,clave,nombre,apellido,idperfil,nombre2,apellido2,cedula,direccion,telefono,idestado";
        camposCondicion = "idusuario";
        condicion = "where idusuario=?";
        user = super.obtenerRegistro(user);
        cerrarConexion();
        return user;
    }

    public Usuarios obtenerUsusario(String email) throws SQLException {
        Usuarios user = null;
        abrirConexion();
        campos = "email,clave,nombre,apellido,idperfil,nombre2,apellido2,cedula,direccion,telefono,idestado";
        camposCondicion = "email";
        condicion = "where email=?";
        user = super.obtenerRegistro(user);
        cerrarConexion();
        return user;
    }

}
