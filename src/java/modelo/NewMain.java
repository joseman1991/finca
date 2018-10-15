/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package modelo;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author JOSE
 */
public class NewMain {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
        String fecha = "2018-10-15";
        String fecha1 = "2018-10-15";
        Cosecha c = new Cosecha();
        c.setFecha(fecha);
        c.setFecha1(fecha1);
        
        CosechaDAO cd= new CosechaDAO();
        
        List<Cosecha> list= new ArrayList<>();
        try {
            cd.obtenerLista(list, c);
        } catch (SQLException e) {
            System.out.println(e.getMessage());
        }
        
        for (int i = 0; i < list.size(); i++) {
            Cosecha get = list.get(i);
            System.out.println(get.getColmena().getDescripcion());
        }
        
        
    }

}
