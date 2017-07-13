/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DAO;

import java.util.List;
import model.Barang;

/**
 *
 * @author C7
 */
public interface BarangDAO extends GeneralDAO{
    public List<Barang> getAll();
    public List<Barang> getByName(String name);
    public Barang getById(long id);
}
