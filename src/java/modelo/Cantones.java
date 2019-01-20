/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package modelo;

import java.sql.SQLException;

/**
 *
 * @author 
 */
public class Cantones {
    private String idcanton;
    private String nombrecanton;
    private String idprovincia;
    
    private Provincias provincia;

    public String getIdcanton() {
        return idcanton;
    }

    public void setIdcanton(String idcanton) {
        this.idcanton = idcanton;
    }

    public String getNombrecanton() {
        return nombrecanton;
    }

    public void setNombrecanton(String nombrecanton) {
        this.nombrecanton = nombrecanton;
    }

    public String getIdprovincia() {
        return idprovincia;
    }

    public void setIdprovincia(String idprovincia) throws SQLException {        
        provincia= new ProvinciasDAO(null).obtenerProvincia(idprovincia);
        this.idprovincia = idprovincia;
    }

    public Provincias getProvincia() {
        return provincia;
    }

    public void setProvincia(Provincias provincia) {
        this.provincia = provincia;
    }
    
    
    
    
    
    
}
