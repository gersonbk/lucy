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
@Table(name = "automatizador")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "Automatizador.findAll", query = "SELECT a FROM Automatizador a")
    , @NamedQuery(name = "Automatizador.findByCdautomatizador", query = "SELECT a FROM Automatizador a WHERE a.cdautomatizador = :cdautomatizador")
    , @NamedQuery(name = "Automatizador.findByNmautomatizador", query = "SELECT a FROM Automatizador a WHERE a.nmautomatizador = :nmautomatizador")})
public class Automatizador implements Serializable {

    private static final long serialVersionUID = 1L;
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Basic(optional = false)
    @Column(name = "CDAUTOMATIZADOR")
    private Integer cdautomatizador;
    @Column(name = "NMAUTOMATIZADOR")
    private String nmautomatizador;
    @Lob
    @Column(name = "DEACOES")
    private String deacoes;
    @Lob
    @Column(name = "DEREGRAS")
    private String deregras;

    public Automatizador() {
    }

    public Automatizador(Integer cdautomatizador) {
        this.cdautomatizador = cdautomatizador;
    }

    public Integer getCdautomatizador() {
        return cdautomatizador;
    }

    public void setCdautomatizador(Integer cdautomatizador) {
        this.cdautomatizador = cdautomatizador;
    }

    public String getNmautomatizador() {
        return nmautomatizador;
    }

    public void setNmautomatizador(String nmautomatizador) {
        this.nmautomatizador = nmautomatizador;
    }

    public String getDeacoes() {
        return deacoes;
    }

    public void setDeacoes(String deacoes) {
        this.deacoes = deacoes;
    }

    public String getDeregras() {
        return deregras;
    }

    public void setDeregras(String deregras) {
        this.deregras = deregras;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (cdautomatizador != null ? cdautomatizador.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof Automatizador)) {
            return false;
        }
        Automatizador other = (Automatizador) object;
        if ((this.cdautomatizador == null && other.cdautomatizador != null) || (this.cdautomatizador != null && !this.cdautomatizador.equals(other.cdautomatizador))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "br.tjsc.jus.processo.model.Automatizador[ cdautomatizador=" + cdautomatizador + " ]";
    }
    
}
