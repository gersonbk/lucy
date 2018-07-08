/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.tjsc.jus.processo.model;

import java.io.Serializable;
import javax.persistence.Basic;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Lob;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.Table;
import javax.xml.bind.annotation.XmlRootElement;

/**
 *
 * @author Gerson
 */
@Entity
@Table(name = "minuta")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "Minuta.findAll", query = "SELECT m FROM Minuta m")
    , @NamedQuery(name = "Minuta.findByCdminuta", query = "SELECT m FROM Minuta m WHERE m.cdminuta = :cdminuta")
    , @NamedQuery(name = "Minuta.findByNmminuta", query = "SELECT m FROM Minuta m WHERE m.nmminuta = :nmminuta")})
public class Minuta implements Serializable {

    private static final long serialVersionUID = 1L;
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Basic(optional = false)
    @Column(name = "CDMINUTA")
    private Integer cdminuta;
    @Basic(optional = false)
    @Column(name = "NMMINUTA")
    private String nmminuta;
    
    @Basic(optional = false)
    @Lob
    @Column(name = "DOCUMENTO")
    private String documento;

    public Minuta() {
    }

    public Minuta(Integer cdminuta) {
        this.cdminuta = cdminuta;
    }

    public Minuta(Integer cdminuta, String nmminuta, String documento) {
        this.cdminuta = cdminuta;
        this.nmminuta = nmminuta;
        this.documento = documento;
    }

    public Integer getCdminuta() {
        return cdminuta;
    }

    public void setCdminuta(Integer cdminuta) {
        this.cdminuta = cdminuta;
    }

    public String getNmminuta() {
        return nmminuta;
    }

    public void setNmminuta(String nmminuta) {
        this.nmminuta = nmminuta;
    }

    public String getDocumento() {
        return documento;
    }

    public void setDocumento(String documento) {
        this.documento = documento;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (cdminuta != null ? cdminuta.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof Minuta)) {
            return false;
        }
        Minuta other = (Minuta) object;
        if ((this.cdminuta == null && other.cdminuta != null) || (this.cdminuta != null && !this.cdminuta.equals(other.cdminuta))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "br.tjsc.jus.processo.model.Minuta[ cdminuta=" + cdminuta + " ]";
    }
    
}
