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

public class Cosecha implements Serializable {

    private int idcosecha;
    private int idcolmena;
    private Colmenas colmena;
    private int idobrero;
    private int marcos;
    private float pesovacio;
    private float pesolleno;
    private Date fecha;
    private String tipoalza;
    private Usuarios obrero;

    
    
    public int getIdcolmena() {
        return idcolmena;
    }

    public void setIdcolmena(int idcolmena) throws SQLException {
        colmena= new Colmenas();
        colmena.setIdcolmena(idcolmena);
        colmena=new ColmenasDAO().obtenerRegistro(colmena);
        this.idcolmena = idcolmena;
    }

    public int getIdobrero() {
        return idobrero;
    }

    public void setIdobrero(int idobrero) throws SQLException {
        obrero= new UsuarioDAO().obtenerUsusario(idobrero);
        this.idobrero = idobrero;
    }

    public int getMarcos() {
        return marcos;
    }

    public void setMarcos(int marcos) {
        this.marcos = marcos;
    }

    public float getPesovacio() {
        return pesovacio;
    }

    public void setPesovacio(float pesovacio) {
        this.pesovacio = pesovacio;
    }

    public float getPesolleno() {
        return pesolleno;
    }

    public void setPesolleno(float pesolleno) {
        this.pesolleno = pesolleno;
    }

    public Date getFecha() {
        return fecha;
    }

    public void setFecha(String fecha) {
        this.fecha = Date.valueOf(fecha);
    }

    public String getTipoalza() {
        return tipoalza;
    }

    public void setTipoalza(String tipoalza) {
        this.tipoalza = tipoalza;
    }

    public Colmenas getColmena() {
        return colmena;
    }

    public void setColmena(Colmenas colmena) {
        this.colmena = colmena;
    }

    public int getIdcosecha() {
        return idcosecha;
    }

    public void setIdcosecha(int idcosecha) {
        this.idcosecha = idcosecha;
    }

    @Override
    public String toString() {
        return "Cosecha{" + "idcosecha=" + idcosecha + ", idcolmena=" + idcolmena + ", colmena=" + colmena + ", idobrero=" + idobrero + ", marcos=" + marcos + ", pesovacio=" + pesovacio + ", pesolleno=" + pesolleno + ", fecha=" + fecha + ", tipoalza=" + tipoalza + '}';
    }

    public Usuarios getObrero() {
        return obrero;
    }

    public void setObrero(Usuarios obrero) {
        this.obrero = obrero;
    }

    
    
    
}
