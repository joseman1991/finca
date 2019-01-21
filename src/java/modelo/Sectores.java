/*
 * To change this license header; choose License Headers in Project Properties.
 * To change this template file; choose Tools | Templates
 * and open the template in the editor.
 */
package modelo;

import java.io.Serializable;
import java.sql.SQLException;

/**
 *
 * @author 
 */
public class Sectores implements Serializable {

    
    
    private int idsector;
    private String nombre;
    private String idparroquia;
    private Parroquia parroquia;
    private String rcto;
    private String direccion;
    private String email;
    private String observacion;
    private String responsable;
     

    public int getIdsector() {
        return idsector;
    }

    public void setIdsector(int idsector) {
        this.idsector = idsector;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public String getIdparroquia() {
        return idparroquia;
    }

    public void setIdparroquia(String idparroquia) throws SQLException {
        parroquia= new Parroquia();
        parroquia.setIdparroquia(idparroquia);
        parroquia= new ParroquiasDAO().obtenerRegistro(parroquia);
        this.idparroquia = idparroquia;
    }

    public String getRcto() {
        return rcto;
    }

    public void setRcto(String rcto) {
        this.rcto = rcto;
    }

    public String getDireccion() {
        return direccion;
    }

    public void setDireccion(String direccion) {
        this.direccion = direccion;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getObservacion() {
        return observacion;
    }

    public void setObservacion(String observacion) {
        this.observacion = observacion;
    }

    public String getResponsable() {
        return responsable;
    }

    public void setResponsable(String responsable) {
        this.responsable = responsable;
    }

    public Parroquia getParroquia() {
        return parroquia;
    }

    public void setParroquia(Parroquia parroquia) {
        this.parroquia = parroquia;
    }

    
    
    
}
