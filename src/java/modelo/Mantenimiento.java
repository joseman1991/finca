/*
 * To change this license header; choose License Headers in Project Properties.
 * To change this template file; choose Tools | Templates
 * and open the template in the editor.
 */
package modelo;

import java.io.Serializable;
import java.sql.Date;
import java.sql.SQLException;

/**
 *
 * @author
 */
public class Mantenimiento implements Serializable {

    private int idmantenimiento;
    private String tipo;
    private Date fecha;
    private Date fecha2;
    private String fech;
    private String fech2;
    private int idobrero;
    private int idcolmena;
    private int alimentacion;
    private Colmenas colmena;
    private Usuarios obrero;

    public int getIdmantenimiento() {
        return idmantenimiento;
    }

    public void setIdmantenimiento(int idmantenimiento) {

        this.idmantenimiento = idmantenimiento;
    }

    public String getTipo() {
        return tipo;
    }

    public void setTipo(String tipo) {
        this.tipo = tipo;
    }

    public Date getFecha() {
        return fecha;
    }

    public void setFecha(String fecha) {
        this.fecha = Date.valueOf(fecha);
    }

    public int getIdobrero() {
        return idobrero;
    }

    public void setIdobrero(int idobrero) throws SQLException {
        obrero = new UsuarioDAO().obtenerUsusario(idobrero);
        this.idobrero = idobrero;
    }

    public int getIdcolmena() {
        return idcolmena;
    }

    public void setIdcolmena(int idcolmena) throws SQLException {
        colmena = new Colmenas();
        colmena.setIdcolmena(idcolmena);
        colmena = new ColmenasDAO().obtenerRegistro(colmena);
        this.idcolmena = idcolmena;
    }

    public int getAlimentacion() {
        return alimentacion;
    }

    public void setAlimentacion(int alimentacion) {
        this.alimentacion = alimentacion;
    }

    public Colmenas getColmena() {
        return colmena;
    }

    public Usuarios getObrero() {
        return obrero;
    }

    public void setObrero(Usuarios obrero) {
        this.obrero = obrero;
    }

    public Date getFecha2() {
        return fecha2;
    }

    public void setFecha2(String fecha2) {
        this.fecha2 = Date.valueOf(fecha2);
    }

    public String getFech() {
        return fech;
    }

    public void setFech(String fech) {
         this.fecha = Date.valueOf(fech);
        this.fech = fech;
    }

    public String getFech2() {
        return fech2;
    }

    public void setFech2(String fech2) {
        this.fecha2 = Date.valueOf(fech2);
        this.fech2 = fech2;
    }

}
