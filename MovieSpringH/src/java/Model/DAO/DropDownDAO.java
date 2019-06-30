/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Model.DAO;

import Model.POJO.Director;
import Model.POJO.Genero;
import Model.POJO.Formato;
import Model.POJO.Pelicula;
import Model.POJO.Sexo;
import java.util.ArrayList;
import java.util.List;
import java.util.Vector;

/**
 *
 * @author Acer
 */
public class DropDownDAO {
    
    public static Vector getViewDataGenero(){
       
        List<Genero> lst = GeneroDAO.getlist();
        Integer [] idArray = new Integer[lst.size()];
        String  []  nombreArray = new String[lst.size()];
        for (int i = 0; i <idArray.length  ; i++) {
            idArray[i]=lst.get(i).getGenId();
                nombreArray[i]=lst.get(i).getGenNombre();
        }
        Vector datos = new Vector();
        datos.add(idArray);
        datos.add(nombreArray);
        
        return datos ;
    }
      public static Vector getViewDataDirector(){
       
        List<Director> lst = DirectorDAO.getlist();
        Integer [] idArray = new Integer[lst.size()];
        String  []  nombreArray = new String[lst.size()];
        for (int i = 0; i <idArray.length  ; i++) {
            idArray[i]=lst.get(i).getDirId();
                nombreArray[i]=lst.get(i).getDirNombre();
        }
        Vector datos = new Vector();
        datos.add(idArray);
        datos.add(nombreArray);
        
        return datos ;
    }
    public static Vector getViewDataFormato(){
       
        List<Formato> lst =   FormatoDAO.getlist();
        Integer [] idArray = new Integer[lst.size()];
        String  []  nombreArray = new String[lst.size()];
        for (int i = 0; i <idArray.length  ; i++) {
            idArray[i]=lst.get(i).getForId();
                nombreArray[i]=lst.get(i).getForNombre();
        }
        Vector datos = new Vector();
        datos.add(idArray);
        datos.add(nombreArray);
        
        return datos ;
    }
    
    public static Vector getViewDataSexo(){
       
        List<Sexo> lst = SexoDAO.getlist();
        Integer [] idArray = new Integer[lst.size()];
        String  []  nombreArray = new String[lst.size()];
        for (int i = 0; i <idArray.length  ; i++) {
            idArray[i]=lst.get(i).getSexId();
                nombreArray[i]=lst.get(i).getSexNombre();
        }
        Vector datos = new Vector();
        datos.add(idArray);
        datos.add(nombreArray);
        
        return datos ;
    }
     public static Vector getViewDataPelicula(){
       
        List<Pelicula> lst = PeliculaDAO.getlist();
        Integer [] idArray = new Integer[lst.size()];
        String  []  nombreArray = new String[lst.size()];
        for (int i = 0; i <idArray.length  ; i++) {
            idArray[i]=lst.get(i).getPelId();
            nombreArray[i]=lst.get(i).getPelNombre();
        }
        Vector datos = new Vector();
        datos.add(idArray);
        datos.add(nombreArray);
        
        return datos ;
    }
}
