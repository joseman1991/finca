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
    private int idobrero;
    private int idcolmena;
    private int alimentacion;
    private Colmenas colmena;

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

    public void setIdobrero(int idobrero) {
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

}
