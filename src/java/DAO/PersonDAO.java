/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DAO;

import model.Person;

/**
 *
 * @author C7
 */
public interface PersonDAO extends GeneralDAO{
    public Person getByLogin(String username, String password);
        
    
}
