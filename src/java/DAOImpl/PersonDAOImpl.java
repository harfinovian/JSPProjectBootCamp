/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DAOImpl;

import DAO.PersonDAO;
import javax.persistence.Query;
import model.Person;

/**
 *
 * @author C7
 */
public class PersonDAOImpl extends  GeneralDAOImpl implements PersonDAO{

    @Override
    public Person getByLogin(String username, String password) {
        Query query = em.createQuery("select p from Person p where p.username=?1 and p.password=?2");
        query.setParameter(1, username);
        query.setParameter(2, password);
        return  (Person)query.getSingleResult();
    }
    
}
