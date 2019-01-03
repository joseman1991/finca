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
    private Date fecha1;
    private String fech;
    private String fech1;
    private Usuarios obrero;

    public int getIdcolmena() {
        return idcolmena;
    }

    public void setIdcolmena(int idcolmena) throws SQLException {
        colmena = new Colmenas();
        colmena.setIdcolmena(idcolmena);
        colmena = new ColmenasDAO().obtenerRegistro(colmena);
        this.idcolmena = idcolmena;
    }

    public int getIdobrero() {
        return idobrero;
    }

    public void setIdobrero(int idobrero) throws SQLException {
        obrero = new UsuarioDAO().obtenerUsusario(idobrero);
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

    

    public Usuarios getObrero() {
        return obrero;
    }

    public void setObrero(Usuarios obrero) {
        this.obrero = obrero;
    }

    public Date getFecha1() {
        return fecha1;
    }

    public void setFecha1(String fecha1) {
        this.fecha1 = Date.valueOf(fecha1);
    }

    public String getFech() {
        return fech;
    }

    public void setFech(String fech) {
        this.fech = fech;
        this.fecha = Date.valueOf(fech);
    }

    public String getFech1() {

        return fech1;
    }

    public void setFech1(String fech1) {
        this.fecha1 = Date.valueOf(fech1);
        this.fech1 = fech1;
    }

}
