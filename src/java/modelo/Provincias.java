/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package modelo;

import java.io.Serializable;

/**
 *
 * @author JOSE
 */
public class Provincias  implements Serializable{
    private String idprovincias;
    private String nombreprovincia;

    public Provincias() {
    }

    
    
    
    public String getIdprovincias() {
        return idprovincias;
    }

    public void setIdprovincias(String idprovincias) {
        this.idprovincias = idprovincias;
    }

    public String getNombreprovincia() {
        return nombreprovincia;
    }

    public void setNombreprovincia(String nombreprovincia) {
        this.nombreprovincia = nombreprovincia;
    }
    
    
    
}
