/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package modelo;

import java.sql.Date;

public class Ganado {

    private int idganado;
    private String nombre;
    private String tipo;
    private String raza;
    private int edad;
    private String observacion;
    private String fech;
    private String fech2;

    private Date fecha;
    private Date fecha2;

    public int getIdganado() {
        return idganado;
    }

    public void setIdganado(int idganado) {
        this.idganado = idganado;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public String getTipo() {
        return tipo;
    }

    public void setTipo(String tipo) {
        this.tipo = tipo;
    }

    public String getRaza() {
        return raza;
    }

    public void setRaza(String raza) {
        this.raza = raza;
    }

    public int getEdad() {
        return edad;
    }

    public void setEdad(int edad) {
        this.edad = edad;
    }

    public String getObservacion() {
        return observacion;
    }

    public void setObservacion(String observacion) {
        this.observacion = observacion;
    }

    public String getFech() {
        return fech;
    }

    public void setFech(String fech) {
        this.fech = fech;
        fecha = Date.valueOf(this.fech);

    }

    public String getFech2() {
        return fech2;
    }

    public void setFech2(String fech2) {
        this.fech2 = fech2;
        fecha2 = Date.valueOf(this.fech2);
    }

    public Date getFecha() {
        return fecha;
    }

    public void setFecha(String fecha) {
        this.fecha = Date.valueOf(fecha);
    }

    public Date getFecha2() {
        return fecha2;

    }

    public void setFecha2(Date fecha2) {
        this.fecha2 = fecha2;
    }

}
