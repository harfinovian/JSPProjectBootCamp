/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DAOImpl;

import DAO.BarangDAO;
import java.util.List;
import javax.persistence.Query;
import model.Barang;

/**
 *
 * @author C7
 */
public class BarangDAOImpl extends GeneralDAOImpl implements BarangDAO{
    
    public BarangDAOImpl(){
        super();
    }

    @Override
    public List<Barang> getAll() {
        return em.createQuery("Select b from Barang b").getResultList();
    }

    @Override
    public List<Barang> getByName(String name) {
        Query query =  em.createQuery("Select b from Barang b where b.namaBarang=?1");
        query.setParameter(1, name);
        return query.getResultList();
    }

    @Override
    public Barang getById(long id) {
        return em.find(Barang.class, id);
    }
    
}
