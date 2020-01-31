/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controladorMantenimiento;

import com.itextpdf.text.BadElementException;
import com.itextpdf.text.BaseColor;
import com.itextpdf.text.Chunk;
import com.itextpdf.text.Document;
import com.itextpdf.text.DocumentException;
import com.itextpdf.text.Element;
import com.itextpdf.text.Font;
import com.itextpdf.text.Image;
import com.itextpdf.text.PageSize;
import com.itextpdf.text.Paragraph;
import com.itextpdf.text.Rectangle;
import com.itextpdf.text.pdf.Barcode39;
import com.itextpdf.text.pdf.BarcodeQRCode;
import com.itextpdf.text.pdf.PdfContentByte;
import com.itextpdf.text.pdf.PdfPCell;
import com.itextpdf.text.pdf.PdfPTable;
import com.itextpdf.text.pdf.PdfWriter;
import com.opensymphony.xwork2.ActionSupport;
import java.awt.image.BufferedImage;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.imageio.ImageIO;
import modelo.CosechaDAO;
import modelo.CosechasDAO;
import modelo.DatoReporte;
import org.apache.struts2.ServletActionContext;
import org.jfree.chart.ChartFactory;
import org.jfree.chart.JFreeChart;
import org.jfree.chart.plot.PlotOrientation;
import org.jfree.data.category.DefaultCategoryDataset;

/**
 *
 * @author JOSE-MA
 */
public class Generar extends ActionSupport {

    private String mensaje;
    private String ruta;

    private String archivo;
    private String archivoimagen;

    public Generar() {

        ruta = ServletActionContext.getRequest().getSession().getServletContext().getRealPath("/").concat("assets/docs/");
        archivoimagen = ServletActionContext.getRequest().getSession().getServletContext().getRealPath("/").concat("assets/docs/");

    }

    public String generarCertificadoPDF() {
        File archiv = new File(ruta);
        if (!archiv.exists()) {
            if (!archiv.mkdir()) {
                return ERROR;
            }
        }
        ruta = ruta.concat("reporte" + ".pdf");
        archiv = new File(ruta);
        if (!archiv.exists()) {
            try {
                this.archivo = "assets/docs/reporte.pdf";
                FileOutputStream file = new FileOutputStream(archiv);
                Document certificado = new Document();
                certificado.setPageSize(PageSize.A4.rotate());
                certificado.setMargins(36, 36, 50, 10);
                PdfWriter writer = PdfWriter.getInstance(certificado, file);

                certificado.open();
                PdfContentByte cb = writer.getDirectContent();

                Font fuente = new Font(Font.FontFamily.COURIER, 30, Font.BOLD, BaseColor.BLACK);
                Paragraph texto = texto("HACIENDA EL RECUERDO", fuente);
                texto.setAlignment(Element.ALIGN_CENTER);
                certificado.add(texto);

                certificado.add(texto("\n", fuente));

                fuente = new Font(Font.FontFamily.COURIER, 22, Font.BOLD, BaseColor.BLACK);
                texto = texto("Reporte de cosechas por años", fuente);
                texto.setAlignment(Element.ALIGN_CENTER);
                certificado.add(texto);
                certificado.add(texto("\n", fuente));

                PdfPTable tabla = new PdfPTable(5);

                tabla.setTotalWidth(new float[]{120, 100, 100, 100, 100});
                tabla.setWidthPercentage(50);

                fuente = new Font(Font.FontFamily.HELVETICA, 11, Font.NORMAL, BaseColor.BLACK);
                texto = texto("Producto/Año", fuente);
                texto.setLeading(3f, 2f);
                texto.setAlignment(Element.ALIGN_CENTER);

                PdfPCell cell = new PdfPCell();
                cell.setVerticalAlignment(Element.ALIGN_MIDDLE);
                cell.addElement(texto);

                tabla.addCell(cell);

                texto = texto("2017", fuente);
                texto.setLeading(3f, 2f);
                texto.setAlignment(Element.ALIGN_CENTER);

                cell = new PdfPCell();
                cell.setVerticalAlignment(Element.ALIGN_MIDDLE);
                cell.addElement(texto);

                tabla.addCell(cell);

                texto = texto("2018", fuente);
                texto.setLeading(3f, 2f);
                texto.setAlignment(Element.ALIGN_CENTER);

                cell = new PdfPCell();
                cell.setVerticalAlignment(Element.ALIGN_MIDDLE);
                cell.addElement(texto);
                //   cell.setBorder(Rectangle.NO_BORDER);

                tabla.addCell(cell);

                texto = texto("2019", fuente);
                texto.setLeading(3f, 2f);
                texto.setAlignment(Element.ALIGN_CENTER);

                cell = new PdfPCell();
                cell.setVerticalAlignment(Element.ALIGN_MIDDLE);
                cell.addElement(texto);

                tabla.addCell(cell);

                texto = texto("2020", fuente);
                texto.setLeading(3f, 2f);
                texto.setAlignment(Element.ALIGN_CENTER);

                cell = new PdfPCell();
                cell.setVerticalAlignment(Element.ALIGN_MIDDLE);
                cell.addElement(texto);

                tabla.addCell(cell);

                CosechasDAO cdao = new CosechasDAO();
                List<DatoReporte> list = new ArrayList<>();

                cdao.ObtertDatosReporte(list);

                JFreeChart barra = null;
                DefaultCategoryDataset datos;
                datos = new DefaultCategoryDataset();

                for (int i = 0; i < 3; i++) {

                    texto = texto(list.get(i).getProducto(), fuente);
                    texto.setLeading(3f, 2f);
                    texto.setAlignment(Element.ALIGN_CENTER);
                    cell = new PdfPCell();
                    cell.setVerticalAlignment(Element.ALIGN_MIDDLE);
                    cell.addElement(texto);
                    tabla.addCell(cell);

                    float[] anio = list.get(i).getAnios();

                    for (int j = 0; j < anio.length; j++) {
                        float f = anio[j];
                        texto = texto(f + "", fuente);
                        texto.setLeading(3f, 2f);
                        texto.setAlignment(Element.ALIGN_CENTER);
                        cell = new PdfPCell();
                        cell.setVerticalAlignment(Element.ALIGN_MIDDLE);
                        cell.addElement(texto);
                        tabla.addCell(cell);

                    }
                }



                for (int i = 0; i < list.size(); i++) {
                    DatoReporte get = list.get(i);
                    float[] anio = list.get(i).getAnios();
                    String[] anios = list.get(i).getAnio();
                    for (int j = 0; j < anio.length; j++) {
                        float f = anio[j];
                        datos.setValue(f, get.getProducto(), anios[j]);                       
                    }
                }

                barra = ChartFactory.createBarChart("Cosechas por año", "Productos", "Quintales", datos, PlotOrientation.HORIZONTAL.VERTICAL, true, true, true);
                BufferedImage graficoBarra = barra.createBufferedImage(500, 350);

                File outputfile = new File(archivoimagen + "/saved.png");
                ImageIO.write(graficoBarra, "png", outputfile);
                certificado.add(tabla);

                Image imagen = Image.getInstance(archivoimagen + "/saved.png");
                imagen.scaleAbsolute(500, 300);
                imagen.setAbsolutePosition(150f, 45f);
                certificado.add(imagen);

                certificado.close();
            } catch (DocumentException | FileNotFoundException e) {
                mensaje = e.getMessage();
            } catch (IOException ex) {
                Logger.getLogger(Generar.class.getName()).log(Level.SEVERE, null, ex);
            } catch (SQLException ex) {
                Logger.getLogger(Generar.class.getName()).log(Level.SEVERE, null, ex);
            }
        } else {
            if (archiv.delete()) {
                ruta = ServletActionContext.getRequest().getSession().getServletContext().getRealPath("/").concat("assets/docs/");
                generarCertificadoPDF();
            }
        }
//        mensaje = ruta.concat("CITT2018" + participante.getIdentificacion() + "pdf");
        return SUCCESS;
    }

    public String getMensaje() {
        return mensaje;
    }

    public void setMensaje(String mensaje) {
        this.mensaje = mensaje;
    }

    private Paragraph texto(String texto, Font fuente) {
        Paragraph text = new Paragraph();
        Chunk c = new Chunk();
        c.append(texto);
        c.setFont(fuente);
        text.add(c);
        return text;
    }

    private Image obtnetCodigoDeBarra(String codigo, PdfContentByte cb) {
        Barcode39 barcode39 = new Barcode39();
        barcode39.setCode(codigo);
        Image code39Image = barcode39.createImageWithBarcode(cb, null, null);
        return code39Image;
    }

    private Image obtnetCodigoQR(String codigo) throws BadElementException {
        BarcodeQRCode barcodeQRCode = new BarcodeQRCode(codigo, 1000, 1000, null);
        Image codeQrImage = barcodeQRCode.getImage();
        codeQrImage.scaleAbsolute(90, 90);
        return codeQrImage;
    }

    public String getArchivo() {
        return archivo;
    }

    public void setArchivo(String archivo) {
        this.archivo = archivo;
    }

}
