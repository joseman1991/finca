/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package modelo;

import java.sql.Date;
import java.sql.SQLException;

public class Cosechas {

    private int idcosecha;
    private int idproducto;
    private float quintales;
    private float hectareas;
    private String descripcion;
    private String ciclo;
    private String fech;
    private String fech2;

    private Date fecha;
    private Date fecha2;

    private Productos producto;

    public int getIdcosecha() {
        return idcosecha;
    }

    public void setIdcosecha(int idcosecha) {
        this.idcosecha = idcosecha;

    }

    public int getIdproducto() {
        return idproducto;
    }

    public void setIdproducto(int idproducto) throws SQLException {
        this.idproducto = idproducto;
        producto = new Productos();
        producto.setIdproducto(idproducto);
        producto = new ProductosDAO().obtenerRegistro(producto);
    }

    public float getQuintales() {
        return quintales;
    }

    public void setQuintales(float quintales) {
        this.quintales = quintales;
    }

    public float getHectareas() {
        return hectareas;
    }

    public void setHectareas(float hectareas) {
        this.hectareas = hectareas;
    }

    public String getDescripcion() {
        return descripcion;
    }

    public void setDescripcion(String descripcion) {
        this.descripcion = descripcion;
    }

    public String getCiclo() {
        return ciclo;
    }

    public void setCiclo(String ciclo) {
        this.ciclo = ciclo;
    }

    public Productos getProducto() {
        return producto;
    }

    public Date getFecha() {
        return fecha;
    }

    public void setFecha(Date fecha) {
        this.fecha = fecha;
    }

    public void setFecha(String fecha) {
        this.fecha = Date.valueOf(fecha);
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

    public Date getFecha2() {
        return fecha2;
    }

    public void setFecha2(Date fecha2) {
        this.fecha2 = fecha2;
    }

    
    
    
    
}
