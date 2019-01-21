/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controladorSectores;

import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;
import java.io.IOException;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import modelo.Cantones;
import modelo.CantonesDAO;
import modelo.Parroquia;
import modelo.ParroquiasDAO;
import modelo.Provincias;
import modelo.ProvinciasDAO;
import modelo.Sectores;
import modelo.SectoresDAO;
import modelo.Usuarios;
import org.apache.struts2.ServletActionContext;

/**
 *
 * @author
 */
public class SectoresAction extends ActionSupport implements ModelDriven<Sectores> {

    private final List<Provincias> listaProvincias;
    private final List<Cantones> listaCantones;
    private final List<Parroquia> listaParroquias;

    private Parroquia p;
    private Cantones c;

    private final List<Sectores> listaSectores;
    private final ProvinciasDAO pdao;
    private final SectoresDAO sdao;
    private final ParroquiasDAO parroquiasDAO;
    private final CantonesDAO cdao;

    private Sectores sector;

    private String mensaje;
    private String style;
    private String estado;

    private final HttpSession session;
    private final HttpServletResponse response;

    public SectoresAction() {
        sector = new Sectores();
        listaProvincias = new ArrayList<>();
        listaCantones = new ArrayList<>();
        listaParroquias = new ArrayList<>();
        listaSectores = new ArrayList<>();
        pdao = new ProvinciasDAO(listaProvincias);
        sdao = new SectoresDAO(listaSectores);
        parroquiasDAO = new ParroquiasDAO();
        cdao = new CantonesDAO();
        session = ServletActionContext.getRequest().getSession();
        response = ServletActionContext.getResponse();
    }

    public String insertarSector() {
        try {
            int res = sdao.insertarSector(sector);
            if (res > 0) {
                mensaje = "Sector registrado correctamente";
                style = "alert-success";
                estado = "ÉXITO";
                pdao.obtnerListas();
                return SUCCESS;
            } else {
                mensaje = "Ha ocurrido un error";
                return ERROR;
            }
        } catch (SQLException e) {
            mensaje = e.getMessage();
            return ERROR;
        } finally {
            sdao.cerrarConexion();
            pdao.cerrarConexion();
        }
    }

    public String actualizarSector() {
        try {
            int res = sdao.actualizarSector(sector);
            if (res > 0) {
                mensaje = "Sector actualizado correctamente";
                style = "alert-success";
                estado = "ÉXITO";
                pdao.obtnerListas();
                c = new Cantones();
                c.setIdprovincia(sector.getParroquia().getCanton().getIdprovincia());
                cdao.obtenerLista(listaCantones, c);
                p = new Parroquia();
                p.setIdcanton(sector.getParroquia().getIdcanton());
                parroquiasDAO.obtenerLista(listaParroquias, p);
                return SUCCESS;
            } else {
                mensaje = "Ha ocurrido un error";
                return ERROR;
            }
        } catch (SQLException e) {
            mensaje = e.getMessage();
            return ERROR;
        } finally {
            sdao.cerrarConexion();
            pdao.cerrarConexion();
        }
    }

    public String obtenerProvincias() {
        try {
            Usuarios u = (Usuarios) session.getAttribute("usuario");
            if (u != null) {
                pdao.obtnerListas();
                c = new Cantones();
                p = new Parroquia();
                c.setIdprovincia("01");
                p.setIdcanton("0101");
                cdao.obtenerLista(listaCantones, c);
                parroquiasDAO.obtenerLista(listaParroquias, p);
            } else {
                response.sendRedirect("login");
            }

            return SUCCESS;
        } catch (SQLException | IOException e) {
            mensaje = e.getMessage();
            return ERROR;
        } finally {
            pdao.cerrarConexion();
        }
    }

    public String obtenerCantones() {
        try {
            Usuarios u = (Usuarios) session.getAttribute("usuario");
            if (u != null) {
                cdao.obtenerLista(listaCantones, c);
                if (listaCantones != null) {
                    if (listaCantones.size() > 0) {
                        p = new Parroquia();
                        p.setIdcanton(listaCantones.get(0).getIdcanton());
                        parroquiasDAO.obtenerLista(listaParroquias, p);
                    }
                }

            } else {
                response.sendRedirect("login");
            }

            return SUCCESS;
        } catch (SQLException | IOException e) {
            mensaje = e.getMessage();
            return ERROR;
        } finally {
            pdao.cerrarConexion();
        }
    }

    public String obtenerParroquias() {
        try {
            Usuarios u = (Usuarios) session.getAttribute("usuario");
            if (u != null) {
                parroquiasDAO.obtenerLista(listaParroquias, p);
            } else {
                response.sendRedirect("login");
            }

            return SUCCESS;
        } catch (SQLException | IOException e) {
            mensaje = e.getMessage();
            return ERROR;
        } finally {
            pdao.cerrarConexion();
        }
    }

    public String obtenerProvincias2() {
        try {
            pdao.obtnerListas();
            c = new Cantones();
            p = new Parroquia();
            c.setIdprovincia("01");
            p.setIdcanton("0101");
            cdao.obtenerLista(listaCantones, c);
            parroquiasDAO.obtenerLista(listaParroquias, p);
            mensaje = "Necesitas al menos un sector para registrar una colmena";
            style = "alert-danger";
            estado = "ERROR";
            return SUCCESS;
        } catch (SQLException e) {
            mensaje = e.getMessage();
            return ERROR;
        } finally {
            pdao.cerrarConexion();
        }
    }

    public String obtenerSectores() {
        try {
            sdao.obtenerSectors();
            return SUCCESS;
        } catch (SQLException e) {
            mensaje = e.getMessage();
            return ERROR;
        } finally {
            pdao.cerrarConexion();
        }
    }

    public String obtenerSector() {
        try {
            sector = sdao.obtenerSector(sector.getIdsector());
            pdao.obtnerListas();
            c = new Cantones();
            c.setIdprovincia(sector.getParroquia().getCanton().getIdprovincia());
            cdao.obtenerLista(listaCantones, c);
            p = new Parroquia();
            p.setIdcanton(sector.getParroquia().getIdcanton());
            parroquiasDAO.obtenerLista(listaParroquias, p);
            return SUCCESS;
        } catch (SQLException e) {
            mensaje = e.getMessage();
            return ERROR;
        } finally {
            pdao.cerrarConexion();
        }
    }

    @Override
    public Sectores getModel() {
        return sector;
    }

    public Sectores getSector() {
        return sector;
    }

    public void setSector(Sectores sector) {
        this.sector = sector;
    }

    public String getMensaje() {
        return mensaje;
    }

    public void setMensaje(String mensaje) {
        this.mensaje = mensaje;
    }

    public List<Provincias> getListaProvincias() {
        return listaProvincias;
    }

    public List<Sectores> getListaSectores() {
        return listaSectores;
    }

    public String getStyle() {
        return style;
    }

    public void setStyle(String style) {
        this.style = style;
    }

    public String getEstado() {
        return estado;
    }

    public void setEstado(String estado) {
        this.estado = estado;
    }

    public List<Cantones> getListaCantones() {
        return listaCantones;
    }

    public List<Parroquia> getListaParroquias() {
        return listaParroquias;
    }

    public void setP(Parroquia p) {
        this.p = p;
    }

    public void setC(Cantones c) {
        this.c = c;
    }

}
