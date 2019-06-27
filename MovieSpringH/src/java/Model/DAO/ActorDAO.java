/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Model.DAO;

import java.util.List;
import Model.POJO.Actor;
import Model.POJO.Sexo;
import Model.UTIL.HibernateUtil;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;

/**
 *
 * @author Jipson Murillo
 */
public class ActorDAO {
    public static List<Actor> getlist()
    {
        List<Actor> list=null;
        try{
        Session session =HibernateUtil.getSessionFactory().openSession();
        String hql="from Actor";
        Query query =session.createQuery(hql);
        list = query.list();
             System.out.println("********************************************");
            for (int i = 0; i < list.size(); i++) {
                System.out.println(" "+list.get(i).getActNombre()+" Sexo: "+list.get(i).getSexo().getSexNombre());
            }
             System.out.println("********************************************");
        session.close();
        }catch(Exception E){
            E.printStackTrace();
        }
        return list;
        
        
        
    }
    
    
    public static void Save(Actor ac)
    {
        try{
        Session session =HibernateUtil.getSessionFactory().openSession();
        Transaction tx=session.beginTransaction();
        session.saveOrUpdate(ac);
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
        Actor ob=ActorDAO.getbyID(id);
        session.delete(ob);
        session.close();
        tx.commit();    
       }catch(Exception E){
            E.printStackTrace();
        }
    }
    
    
    public static Actor getbyID(int id)
    {
        Actor actor=null;
        try{
        Session session =HibernateUtil.getSessionFactory().openSession();
        Transaction tx=session.beginTransaction();
               actor =  (Actor) session.get(Actor.class, id);
        tx.commit();
        session.close();
        }catch(Exception E){
            E.printStackTrace();
        }
        return actor;
    }
    
}
