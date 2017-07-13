/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DB;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;

/**
 *
 * @author C7
 */
public class DBConnection {
    public static EntityManager getConnection(){
        EntityManagerFactory emf = Persistence.createEntityManagerFactory("BootcampWebPU");
        EntityManager em = emf.createEntityManager();
        return em;
    }
}
