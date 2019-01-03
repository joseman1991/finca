/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package modelo;

import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.sql.SQLException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import net.sf.jasperreports.engine.JRException;
import net.sf.jasperreports.engine.JRExporterParameter;
import net.sf.jasperreports.engine.JasperFillManager;
import net.sf.jasperreports.engine.JasperPrint;
import net.sf.jasperreports.engine.JasperReport;
import net.sf.jasperreports.engine.export.JRPdfExporter;
import net.sf.jasperreports.engine.util.JRLoader;

/**
 *
 * @author
 */
public class CosechaDAO extends ConexionMySQL<Cosecha> {

    public CosechaDAO() {
        tipo = Cosecha.class;
        tabla = "cosecha";
    }

    @Override
    public int insertarRegistro(Cosecha registro) throws SQLException {
        campos = "idcolmena, idobrero, marcos, pesovacio,pesolleno,fecha";
        int res = super.insertarRegistro(registro);
        cerrarConexion();
        return res;
    }

    @Override
    public int actualizarRegistro(Cosecha registro) throws SQLException {
        campos = "idobrero, marcos, pesovacio,pesolleno,fecha";
        camposCondicion = "idcosecha";
        condicion = "where idcosecha=?";
        int res = super.actualizarRegistro(registro);
        System.out.println("Resultado " + res);
        cerrarConexion();
        return res;
    }

    @Override
    public Cosecha obtenerRegistro(Cosecha dato) throws SQLException {
        campos = "idcosecha,idcolmena, idobrero, marcos, pesovacio,pesolleno,fecha";
        camposCondicion = "idcosecha";
        condicion = "where idcosecha=?";
        Cosecha co = (Cosecha) super.obtenerRegistro(dato);
        cerrarConexion();
        System.out.println("Datos: " + co.toString());
        return co;
    }

    @Override
    public void obtenerLista(List<Cosecha> lista) throws SQLException {
        campos = "idcosecha,idcolmena, idobrero, marcos, pesovacio,pesolleno,fecha";
        camposCondicion = "";
        condicion = "";
        super.obtenerLista(lista);
        cerrarConexion();
    }

    @Override
    public void obtenerLista(List<Cosecha> lista, Cosecha c) throws SQLException {
        campos = "idcosecha,idcolmena, idobrero, marcos, pesovacio,pesolleno,fecha";
        camposCondicion = "fecha,fecha1";
        condicion = "where fecha between ? and ?";
        super.obtenerLista(lista, c);
        cerrarConexion();
    }   
    
    
    public void obtenerListaPorColmena(List<Cosecha> lista, Cosecha c) throws SQLException{
        campos = "idcosecha, idobrero, marcos, pesovacio,pesolleno,fecha";
        camposCondicion = "idcolmena";
        condicion = "where idcolmena = ?";
        super.obtenerLista(lista, c);
        cerrarConexion();
    }
    
    
    public void obtenerListaPorColmenaFecha(List<Cosecha> lista, Cosecha c) throws SQLException{
        campos = "idcosecha, idobrero, marcos, pesovacio,pesolleno,fecha";
        camposCondicion = "idcolmena,fecha,fecha1";
        condicion = "where idcolmena = ? and fecha between ? and ? ";
        super.obtenerLista(lista, c);
        cerrarConexion();
    }

 

    public int generarReporte(String ruta, Cosecha co) throws JRException, FileNotFoundException, SQLException {
        abrirConexion();
        File archivo = new File(ruta + "/" + "reporte" + ".jasper");
        JasperReport report = (JasperReport) JRLoader.loadObject(archivo);
        Map parametro = new HashMap();
        parametro.put("Empresa", "APÍCOLA CANAÁN");
        parametro.put("fecha", co.getFecha());
        parametro.put("fecha1", co.getFecha1());
        parametro.put("path", ruta);
        JasperPrint jp = JasperFillManager.fillReport(report, parametro, conexion);

        JRPdfExporter exporter = new JRPdfExporter();
        exporter.setParameter(JRExporterParameter.JASPER_PRINT, jp);

        File carpeta = new File(ruta + "/");
        String[] lista = carpeta.list();
        int codf = lista.length;
        exporter.setParameter(JRExporterParameter.OUTPUT_STREAM, new FileOutputStream(ruta + "/" + codf + ".pdf")); // your output goes here
        exporter.exportReport();
        cerrarConexion();
        return codf;
    }
    
    public int generarReporteC(String ruta, Cosecha co) throws JRException, FileNotFoundException, SQLException {
        abrirConexion();
        File archivo = new File(ruta + "/" + "reporteC" + ".jasper");
        JasperReport report = (JasperReport) JRLoader.loadObject(archivo);
        Map parametro = new HashMap();
        parametro.put("Empresa", "APÍCOLA CANAÁN");
        parametro.put("fecha", co.getFecha());
        parametro.put("fecha1", co.getFecha1());
        parametro.put("path", ruta);
          parametro.put("colmena", co.getColmena().getDescripcion());
        parametro.put("sector", co.getColmena().getSector().getNombre());
        JasperPrint jp = JasperFillManager.fillReport(report, parametro, conexion);

        JRPdfExporter exporter = new JRPdfExporter();
        exporter.setParameter(JRExporterParameter.JASPER_PRINT, jp);

        File carpeta = new File(ruta + "/");
        String[] lista = carpeta.list();
        int codf = lista.length;
        exporter.setParameter(JRExporterParameter.OUTPUT_STREAM, new FileOutputStream(ruta + "/" + codf + ".pdf")); // your output goes here
        exporter.exportReport();
        cerrarConexion();
        return codf;
    }

}
