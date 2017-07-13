/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DAO;

import java.util.List;
import model.Supplier;

/**
 *
 * @author C7
 */
public interface SupplierDAO extends GeneralDAO{
    public List<Supplier> getAll();
    public Supplier getByID(long id);
}
