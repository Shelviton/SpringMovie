/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Model.DAO;

import java.util.List;

import Model.POJO.Alquiler;
import Model.UTIL.HibernateUtil;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;

/**
 *
 * @author Jipson Murillo
 */
public class AlquilerDAO {
    public static List<Alquiler> getlist()
    {
        List<Alquiler> list=null;
        try{
        Session session =HibernateUtil.getSessionFactory().openSession();
        String hql="from Alquiler";
        Query query =session.createQuery(hql);
        list = query.list();
        session.close();
        }catch(Exception E){
            E.printStackTrace();
        }
        return list;
        
        
        
    }
    
    
    public static void Save(Alquiler ob)
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
        Alquiler ob = AlquilerDAO.getbyID(id);
        session.delete(ob);
        tx.commit();
        session.close();
        }catch(Exception E){
            E.printStackTrace();
        }
    }
    
    
    public static Alquiler getbyID(int id)
    {
        Alquiler obj=null;
        try{
        Session session =HibernateUtil.getSessionFactory().openSession();
        Transaction tx=session.beginTransaction();
               obj =  (Alquiler) session.get(Alquiler.class, id);
        tx.commit();
        session.close();
        }catch(Exception E){
            E.printStackTrace();
        }
        return obj;
    }
    
}
