/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DAOImpl;

import DAO.GeneralDAO;
import DB.DBConnection;
import javax.persistence.EntityManager;

/**
 *
 * @author C7
 */
public class GeneralDAOImpl implements GeneralDAO{
    
    EntityManager em;
    
    public GeneralDAOImpl(){
        this.em = DBConnection.getConnection();
    }

    @Override
    public void insert(Object o) {
        try{
            em.getTransaction().begin();
            em.persist(o);
            em.getTransaction().commit();
        }catch(Exception e){
            em.getTransaction().rollback();
        }
    }

    @Override
    public void update(Object o) {
        try{
            em.getTransaction().begin();
            em.merge(o);
            em.getTransaction().commit();
        }catch(Exception e){
            em.getTransaction().rollback();
        }
    }

    @Override
    public void delete(Object o) {
        try{
            em.getTransaction().begin();
            em.remove(o);
            em.getTransaction().commit();
        }catch(Exception e){
            em.getTransaction().rollback();
        }
    }
}
