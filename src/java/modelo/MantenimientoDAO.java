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
import java.util.ArrayList;
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
public class MantenimientoDAO extends ConexionMySQL<Mantenimiento> {

    private final List<Mantenimiento> listaMantenimientos;

    public MantenimientoDAO() {
        this.listaMantenimientos = new ArrayList<>();
        tabla = "mantenimiento";
        tipo = Mantenimiento.class;
    }

    public MantenimientoDAO(List<Mantenimiento> listaMantenimientos) {
        this.listaMantenimientos = listaMantenimientos;
        tabla = "mantenimiento";
        tipo = Mantenimiento.class;
    }

    public int insertarMantenimiento(Mantenimiento m) throws SQLException {
        abrirConexion();
        sentencia = conexion.prepareStatement("insert into mantenimiento(tipo, fecha, idobrero, idcolmena, alimentacion) values(?,?,?,?,?)");
        int i = 1;
        sentencia.setString(i++, m.getTipo());
        sentencia.setDate(i++, m.getFecha());
        sentencia.setInt(i++, m.getIdobrero());
        sentencia.setInt(i++, m.getIdcolmena());
        sentencia.setInt(i++, m.getAlimentacion());
        int res = sentencia.executeUpdate();
        cerrarConexion();
        return res;
    }

    public Mantenimiento obtenerMantenimiento(int idmantenimiento) throws SQLException {
        Mantenimiento m = null;
        abrirConexion();
        sentencia = conexion.prepareStatement("select * from mantenimiento where idmantenimiento=?");
        sentencia.setInt(1, idmantenimiento);
        resultado = sentencia.executeQuery();
        if (resultado.next()) {
            m = new Mantenimiento();
            int i = 1;
            m.setIdmantenimiento(resultado.getInt(i++));
            m.setTipo(resultado.getString(i++));
            m.setFecha(resultado.getString(i++));
            m.setIdobrero(resultado.getInt(i++));
            m.setIdcolmena(resultado.getInt(i++));
            m.setAlimentacion(resultado.getInt(i++));
        }
        cerrarConexion();
        return m;
    }

    @Override
    public void obtenerLista(List lista) throws SQLException {
        campos = "idmantenimiento, tipo, fecha, idobrero, idcolmena, alimentacion ";
        camposCondicion = "";
        condicion = "";
        super.obtenerLista(lista);
    }

    @Override
    public int actualizarRegistro(Mantenimiento registro) throws SQLException {
        campos = "idmantenimiento, tipo, fecha, idobrero, alimentacion ";
        camposCondicion = "idmantenimiento";
        condicion = "where idmantenimiento=?";
        int res = super.actualizarRegistro(registro);
        cerrarConexion();
        return res;
    }

    public void obtenerListaMantenimiento() throws SQLException {
        abrirConexion();
        listaMantenimientos.clear();
        sentencia = conexion.prepareStatement("select * from mantenimiento");
        resultado = sentencia.executeQuery();
        while (resultado.next()) {
            Mantenimiento m = new Mantenimiento();
            int i = 1;
            m.setIdmantenimiento(resultado.getInt(i++));
            m.setTipo(resultado.getString(i++));
            m.setFecha(resultado.getString(i++));
            m.setIdobrero(resultado.getInt(i++));
            m.setIdcolmena(resultado.getInt(i++));
            m.setAlimentacion(resultado.getInt(i++));
            listaMantenimientos.add(m);
        }
        cerrarConexion();
    }

    @Override
    public void obtenerLista(List<Mantenimiento> lista, Mantenimiento dato) throws SQLException {
        campos = "idmantenimiento, tipo, fecha, idobrero, idcolmena, alimentacion ";
        camposCondicion = "fecha,fecha2";
        condicion = "where fecha between ? and ?";
        super.obtenerLista(lista, dato);
    }

    public int generarReporte(String ruta, Mantenimiento co) throws JRException, FileNotFoundException, SQLException {
        abrirConexion();
        File archivo = new File(ruta + "/" + "reporte1" + ".jasper");
        JasperReport report = (JasperReport) JRLoader.loadObject(archivo);
        Map parametro = new HashMap();
        parametro.put("Empresa", "APÍCOLA CANNAN");
        parametro.put("fecha", co.getFecha());
        parametro.put("fecha1", co.getFecha2());
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
