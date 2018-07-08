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
import javax.persistence.Id;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.Table;
import javax.xml.bind.annotation.XmlRootElement;

/**
 *
 * @author Gerson
 */
@Entity
@Table(name = "processo")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "Processo.findAll", query = "SELECT p FROM Processo p")
    , @NamedQuery(name = "Processo.findByCdprocesso", query = "SELECT p FROM Processo p WHERE p.cdprocesso = :cdprocesso")
    , @NamedQuery(name = "Processo.findByNuprocesso", query = "SELECT p FROM Processo p WHERE p.nuprocesso = :nuprocesso")
    , @NamedQuery(name = "Processo.findByVlcausa", query = "SELECT p FROM Processo p WHERE p.vlcausa = :vlcausa")
    , @NamedQuery(name = "Processo.findByCdforo", query = "SELECT p FROM Processo p WHERE p.cdforo = :cdforo")
    , @NamedQuery(name = "Processo.findByCdvara", query = "SELECT p FROM Processo p WHERE p.cdvara = :cdvara")
    , @NamedQuery(name = "Processo.findByCdclasseunif", query = "SELECT p FROM Processo p WHERE p.cdclasseunif = :cdclasseunif")
    , @NamedQuery(name = "Processo.findByDeclasse", query = "SELECT p FROM Processo p WHERE p.declasse = :declasse")
    , @NamedQuery(name = "Processo.findByCdassuntounif", query = "SELECT p FROM Processo p WHERE p.cdassuntounif = :cdassuntounif")
    , @NamedQuery(name = "Processo.findByDeassunto", query = "SELECT p FROM Processo p WHERE p.deassunto = :deassunto")
    , @NamedQuery(name = "Processo.findByNmpessoaativa", query = "SELECT p FROM Processo p WHERE p.nmpessoaativa = :nmpessoaativa")
    , @NamedQuery(name = "Processo.findByNmpessoapassiva", query = "SELECT p FROM Processo p WHERE p.nmpessoapassiva = :nmpessoapassiva")
    , @NamedQuery(name = "Processo.findByNudocativa", query = "SELECT p FROM Processo p WHERE p.nudocativa = :nudocativa")
    , @NamedQuery(name = "Processo.findByNudocpassiva", query = "SELECT p FROM Processo p WHERE p.nudocpassiva = :nudocpassiva")})
public class Processo implements Serializable {

    private static final long serialVersionUID = 1L;
    @Id
    @Basic(optional = false)
    @Column(name = "CDPROCESSO")
    private String cdprocesso;
    @Column(name = "NUPROCESSO")
    private String nuprocesso;
    // @Max(value=?)  @Min(value=?)//if you know range of your decimal fields consider using these annotations to enforce field validation
    @Column(name = "VLCAUSA")
    private Double vlcausa;
    @Column(name = "CDFORO")
    private Integer cdforo;
    @Column(name = "CDVARA")
    private Integer cdvara;
    @Column(name = "CDCLASSEUNIF")
    private String cdclasseunif;
    @Column(name = "DECLASSE")
    private String declasse;
    @Column(name = "CDASSUNTOUNIF")
    private String cdassuntounif;
    @Column(name = "DEASSUNTO")
    private String deassunto;
    @Column(name = "NMPESSOAATIVA")
    private String nmpessoaativa;
    @Column(name = "NMPESSOAPASSIVA")
    private String nmpessoapassiva;
    @Column(name = "NUDOCATIVA")
    private String nudocativa;
    @Column(name = "NUDOCPASSIVA")
    private String nudocpassiva;

    public Processo() {
    }

    public Processo(String cdprocesso) {
        this.cdprocesso = cdprocesso;
    }

    public String getCdprocesso() {
        return cdprocesso;
    }

    public void setCdprocesso(String cdprocesso) {
        this.cdprocesso = cdprocesso;
    }

    public String getNuprocesso() {
        return nuprocesso;
    }

    public void setNuprocesso(String nuprocesso) {
        this.nuprocesso = nuprocesso;
    }

    public Double getVlcausa() {
        return vlcausa;
    }

    public void setVlcausa(Double vlcausa) {
        this.vlcausa = vlcausa;
    }

    public Integer getCdforo() {
        return cdforo;
    }

    public void setCdforo(Integer cdforo) {
        this.cdforo = cdforo;
    }

    public Integer getCdvara() {
        return cdvara;
    }

    public void setCdvara(Integer cdvara) {
        this.cdvara = cdvara;
    }

    public String getCdclasseunif() {
        return cdclasseunif;
    }

    public void setCdclasseunif(String cdclasseunif) {
        this.cdclasseunif = cdclasseunif;
    }

    public String getDeclasse() {
        return declasse;
    }

    public void setDeclasse(String declasse) {
        this.declasse = declasse;
    }

    public String getCdassuntounif() {
        return cdassuntounif;
    }

    public void setCdassuntounif(String cdassuntounif) {
        this.cdassuntounif = cdassuntounif;
    }

    public String getDeassunto() {
        return deassunto;
    }

    public void setDeassunto(String deassunto) {
        this.deassunto = deassunto;
    }

    public String getNmpessoaativa() {
        return nmpessoaativa;
    }

    public void setNmpessoaativa(String nmpessoaativa) {
        this.nmpessoaativa = nmpessoaativa;
    }

    public String getNmpessoapassiva() {
        return nmpessoapassiva;
    }

    public void setNmpessoapassiva(String nmpessoapassiva) {
        this.nmpessoapassiva = nmpessoapassiva;
    }

    public String getNudocativa() {
        return nudocativa;
    }

    public void setNudocativa(String nudocativa) {
        this.nudocativa = nudocativa;
    }

    public String getNudocpassiva() {
        return nudocpassiva;
    }

    public void setNudocpassiva(String nudocpassiva) {
        this.nudocpassiva = nudocpassiva;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (cdprocesso != null ? cdprocesso.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof Processo)) {
            return false;
        }
        Processo other = (Processo) object;
        if ((this.cdprocesso == null && other.cdprocesso != null) || (this.cdprocesso != null && !this.cdprocesso.equals(other.cdprocesso))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "br.tjsc.jus.processo.model.Processo[ cdprocesso=" + cdprocesso + " ]";
    }
    
}
