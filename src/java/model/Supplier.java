/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

import java.io.Serializable;
import java.util.List;
import javax.persistence.Basic;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import javax.xml.bind.annotation.XmlRootElement;
import javax.xml.bind.annotation.XmlTransient;

/**
 *
 * @author C7
 */
@Entity
@Table(name = "supplier")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "Supplier.findAll", query = "SELECT s FROM Supplier s")
    , @NamedQuery(name = "Supplier.findByIdSupplier", query = "SELECT s FROM Supplier s WHERE s.idSupplier = :idSupplier")
    , @NamedQuery(name = "Supplier.findByKodesupplier", query = "SELECT s FROM Supplier s WHERE s.kodesupplier = :kodesupplier")
    , @NamedQuery(name = "Supplier.findByNamasupplier", query = "SELECT s FROM Supplier s WHERE s.namasupplier = :namasupplier")})
public class Supplier implements Serializable {

    private static final long serialVersionUID = 1L;
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Basic(optional = false)
    @Column(name = "idSupplier")
    private Long idSupplier;
    @Column(name = "KODESUPPLIER")
    private String kodesupplier;
    @Column(name = "NAMASUPPLIER")
    private String namasupplier;
    @OneToMany(mappedBy = "sUPPLIERidSupplier")
    private List<Barang> barangList;

    public Supplier() {
    }

    public Supplier(Long idSupplier) {
        this.idSupplier = idSupplier;
    }

    public Long getIdSupplier() {
        return idSupplier;
    }

    public void setIdSupplier(Long idSupplier) {
        this.idSupplier = idSupplier;
    }

    public String getKodesupplier() {
        return kodesupplier;
    }

    public void setKodesupplier(String kodesupplier) {
        this.kodesupplier = kodesupplier;
    }

    public String getNamasupplier() {
        return namasupplier;
    }

    public void setNamasupplier(String namasupplier) {
        this.namasupplier = namasupplier;
    }

    @XmlTransient
    public List<Barang> getBarangList() {
        return barangList;
    }

    public void setBarangList(List<Barang> barangList) {
        this.barangList = barangList;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (idSupplier != null ? idSupplier.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof Supplier)) {
            return false;
        }
        Supplier other = (Supplier) object;
        if ((this.idSupplier == null && other.idSupplier != null) || (this.idSupplier != null && !this.idSupplier.equals(other.idSupplier))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "model.Supplier[ idSupplier=" + idSupplier + " ]";
    }
    
}
