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
public class Parroquia {

    private String idcanton;
    private String descripcion;
    private Cantones canton;
    private String idparroquia;

    public String getIdcanton() {
        return idcanton;
    }

    public void setIdcanton(String idcanton) throws SQLException {
        canton = new Cantones();
        canton.setIdcanton(idcanton);
        canton = new CantonesDAO().obtenerRegistro(canton);
        this.idcanton = idcanton;
    }

    public Cantones getCanton() {
        return canton;
    }

    public void setCanton(Cantones canton) {
        this.canton = canton;
    }

    public String getIdparroquia() {
        return idparroquia;
    }

    public void setIdparroquia(String idparroquia) {
        this.idparroquia = idparroquia;
    }

    public String getDescripcion() {
        return descripcion;
    }

    public void setDescripcion(String descripcion) {
        this.descripcion = descripcion;
    }

}
