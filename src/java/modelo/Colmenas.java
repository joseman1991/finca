/*
 * To change this license header; choose License Headers in Project Properties.
 * To change this template file; choose Tools | Templates
 * and open the template in the editor.
 */
package modelo;

import java.sql.Date;

/**
 *
 * @author JOSE
 */
public class Colmenas {

    private int idcolmena;
    private int idarea;
    private int nmarcos;
    private String tipo;
    private String descripcion;
    private int nalza;
    private int idorigen;
    private int npisos;
    private float precio;
    private Date fecha;
    private int idreina;
    private Date fechareina;

    public int getIdcolmena() {
        return idcolmena;
    }

    public void setIdcolmena(int idcolmena) {
        this.idcolmena = idcolmena;
    }

    public int getIdarea() {
        return idarea;
    }

    public void setIdarea(int idarea) {
        this.idarea = idarea;
    }

    public int getNmarcos() {
        return nmarcos;
    }

    public void setNmarcos(int nmarcos) {
        this.nmarcos = nmarcos;
    }

    public String getTipo() {
        return tipo;
    }

    public void setTipo(String tipo) {
        this.tipo = tipo;
    }

    public int getNalza() {
        return nalza;
    }

    public void setNalza(int nalza) {
        this.nalza = nalza;
    }

    public int getIdorigen() {
        return idorigen;
    }

    public void setIdorigen(int idorigen) {
        this.idorigen = idorigen;
    }

    public float getPrecio() {
        return precio;
    }

    public void setPrecio(float precio) {
        this.precio = precio;
    }

    public Date getFecha() {
        return fecha;
    }

//    public void setFecha(Date fecha) {
//        this.fecha = fecha;
//    }
    public void setFecha(String fecha) {
        this.fecha = Date.valueOf(fecha);
    }

    public int getIdreina() {
        return idreina;
    }

    public void setIdreina(int idreina) {
        this.idreina = idreina;
    }

    public Date getFechareina() {
        return fechareina; 
    }

//    public void setFechareina(Date fechareina) {
//        this.fechareina = fechareina;
//    }
    public void setFechareina(String fechareina) {
        this.fechareina = Date.valueOf(fechareina);
    }

    public int getNpisos() {
        return npisos;
    }

    public void setNpisos(int npisos) {
        this.npisos = npisos;
    }

    public String getDescripcion() {
        return descripcion;
    }

    public void setDescripcion(String descripcion) {
        this.descripcion = descripcion;
    }
    
    

}
