/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Model.DAO;

import java.util.List;

import Model.POJO.Pelicula;
import Model.UTIL.HibernateUtil;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;

/**
 *
 * @author Jipson Murillo
 */
public class PeliculaDAO {
    public static List<Pelicula> getlist()
    {
        List<Pelicula> list=null;
        try{
        Session session =HibernateUtil.getSessionFactory().openSession();
        String hql="from Pelicula";
        Query query =session.createQuery(hql);
        list = query.list();
         System.out.println("********************************************");
            for (int i = 0; i < list.size(); i++) {
                System.out.println(" "+list.get(i).getPelNombre()+" Genero: "+list.get(i).getGenero().getGenNombre()
                                        +" Formato: "+list.get(i).getFormato().getForNombre()+" Director "+list.get(i).getDirector().getDirNombre());
            }
             System.out.println("********************************************");
        
        session.close();
        }catch(Exception E){
            E.printStackTrace();
        }
        return list;
        
        
        
    }
    
    
    public static void Save(Pelicula ob)
    {
        try{
        GeneroDAO.Save(ob.getGenero());
        FormatoDAO.Save(ob.getFormato());
        DirectorDAO.Save(ob.getDirector());
        Session session =HibernateUtil.getSessionFactory().openSession();
        Transaction tx=session.beginTransaction();
        
        
        session.saveOrUpdate(ob);
        tx.commit();
        session.close();
        }catch(Exception E){
            E.printStackTrace();
        }
    }
    
    public static void Delete(int id)
    {
        try{
        Session session =HibernateUtil.getSessionFactory().openSession();
        Transaction tx=session.beginTransaction();
        Pelicula ob = PeliculaDAO.getbyID(id);
        session.delete(ob);
        tx.commit();
        session.close();
        }catch(Exception E){
            E.printStackTrace();
        }
    }
    
    
    public static Pelicula getbyID(int id)
    {
        Pelicula obj=null;
        try{
        Session session =HibernateUtil.getSessionFactory().openSession();
        Transaction tx=session.beginTransaction();
               obj =  (Pelicula) session.get(Pelicula.class, id);
        tx.commit();
        session.close();
        }catch(Exception E){
            E.printStackTrace();
        }
        return obj;
    }
    
}
