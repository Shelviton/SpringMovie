/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Model.DAO;

import java.util.List;
import Model.POJO.ActorPelicula;
import Model.UTIL.HibernateUtil;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;

/**
 *
 * @author Jipson Murillo
 */
public class ActorPeliculaDAO {
    public static List<ActorPelicula> getlist()
    {
        List<ActorPelicula> list=null;
        try{
        Session session =HibernateUtil.getSessionFactory().openSession();
        String hql="from ActorPelicula";
        Query query =session.createQuery(hql);
        list = query.list();
        session.close();
        }catch(Exception E){
            E.printStackTrace();
        }
        return list;
        
        
        
    }
    
    
    public static void Save(ActorPelicula ob)
    {
        try{
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
        ActorPelicula ob=ActorPeliculaDAO.getbyID(id);
        session.delete(ob);
        tx.commit();
        session.close();
        }catch(Exception E){
            E.printStackTrace();
        }
    }
    
    
    public static ActorPelicula getbyID(int id)
    {
        ActorPelicula obj=null;
        try{
        Session session =HibernateUtil.getSessionFactory().openSession();
        Transaction tx=session.beginTransaction();
               obj =  (ActorPelicula) session.get(ActorPelicula.class, id);
        tx.commit();
        session.close();
        }catch(Exception E){
            E.printStackTrace();
        }
        return obj;
    }
    
}
