/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DAOImpl;

import DAO.SupplierDAO;
import java.util.List;
import model.Supplier;

/**
 *
 * @author C7
 */
public class SupplierDAOImpl extends GeneralDAOImpl implements SupplierDAO{

    public SupplierDAOImpl(){
        super();
    }
    
    @Override
    public List<Supplier> getAll() {
        return em.createQuery("Select s from Supplier s").getResultList();
    }

    @Override
    public Supplier getByID(long id) {
        return em.find(Supplier.class, id);
    }
    
}
