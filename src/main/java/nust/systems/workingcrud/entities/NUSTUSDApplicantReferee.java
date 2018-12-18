/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package nust.systems.workingcrud.entities;

import java.io.Serializable;
import javax.persistence.Basic;
import javax.persistence.Column;
import javax.persistence.EmbeddedId;
import javax.persistence.Entity;
import javax.persistence.Lob;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.Table;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;
import javax.xml.bind.annotation.XmlRootElement;

/**
 *
 * @author tawanda
 */
@Entity
@Table(name = "NUST_USD$Applicant Referee")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "NUSTUSDApplicantReferee.findAll", query = "SELECT n FROM NUSTUSDApplicantReferee n")
    , @NamedQuery(name = "NUSTUSDApplicantReferee.findByApplicantNo", query = "SELECT n FROM NUSTUSDApplicantReferee n WHERE n.nUSTUSDApplicantRefereePK.applicantNo = :applicantNo")
    , @NamedQuery(name = "NUSTUSDApplicantReferee.findByCode", query = "SELECT n FROM NUSTUSDApplicantReferee n WHERE n.nUSTUSDApplicantRefereePK.code = :code")
    , @NamedQuery(name = "NUSTUSDApplicantReferee.findByReferree", query = "SELECT n FROM NUSTUSDApplicantReferee n WHERE n.referree = :referree")
    , @NamedQuery(name = "NUSTUSDApplicantReferee.findByRefereeAddress", query = "SELECT n FROM NUSTUSDApplicantReferee n WHERE n.refereeAddress = :refereeAddress")
    , @NamedQuery(name = "NUSTUSDApplicantReferee.findByRefereeAddress2", query = "SELECT n FROM NUSTUSDApplicantReferee n WHERE n.refereeAddress2 = :refereeAddress2")})
public class NUSTUSDApplicantReferee implements Serializable {

    private static final long serialVersionUID = 1L;
    @EmbeddedId
    protected NUSTUSDApplicantRefereePK nUSTUSDApplicantRefereePK;
    @Basic(optional = false)
    @NotNull
    @Lob
    @Column(name = "[timestamp]")
    private byte[] timestamp;
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 60)
    @Column(name = "[Referree]")
    private String referree;
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 30)
    @Column(name = "[Referee Address]")
    private String refereeAddress;
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 30)
    @Column(name = "[Referee Address 2]")
    private String refereeAddress2;

    public NUSTUSDApplicantReferee() {
    }

    public NUSTUSDApplicantReferee(NUSTUSDApplicantRefereePK nUSTUSDApplicantRefereePK) {
        this.nUSTUSDApplicantRefereePK = nUSTUSDApplicantRefereePK;
    }

    public NUSTUSDApplicantReferee(NUSTUSDApplicantRefereePK nUSTUSDApplicantRefereePK, byte[] timestamp, String referree, String refereeAddress, String refereeAddress2) {
        this.nUSTUSDApplicantRefereePK = nUSTUSDApplicantRefereePK;
        this.timestamp = timestamp;
        this.referree = referree;
        this.refereeAddress = refereeAddress;
        this.refereeAddress2 = refereeAddress2;
    }

    public NUSTUSDApplicantReferee(String applicantNo, int code) {
        this.nUSTUSDApplicantRefereePK = new NUSTUSDApplicantRefereePK(applicantNo, code);
    }

    public NUSTUSDApplicantRefereePK getNUSTUSDApplicantRefereePK() {
        return nUSTUSDApplicantRefereePK;
    }

    public void setNUSTUSDApplicantRefereePK(NUSTUSDApplicantRefereePK nUSTUSDApplicantRefereePK) {
        this.nUSTUSDApplicantRefereePK = nUSTUSDApplicantRefereePK;
    }

    public byte[] getTimestamp() {
        return timestamp;
    }

    public void setTimestamp(byte[] timestamp) {
        this.timestamp = timestamp;
    }

    public String getReferree() {
        return referree;
    }

    public void setReferree(String referree) {
        this.referree = referree;
    }

    public String getRefereeAddress() {
        return refereeAddress;
    }

    public void setRefereeAddress(String refereeAddress) {
        this.refereeAddress = refereeAddress;
    }

    public String getRefereeAddress2() {
        return refereeAddress2;
    }

    public void setRefereeAddress2(String refereeAddress2) {
        this.refereeAddress2 = refereeAddress2;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (nUSTUSDApplicantRefereePK != null ? nUSTUSDApplicantRefereePK.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof NUSTUSDApplicantReferee)) {
            return false;
        }
        NUSTUSDApplicantReferee other = (NUSTUSDApplicantReferee) object;
        if ((this.nUSTUSDApplicantRefereePK == null && other.nUSTUSDApplicantRefereePK != null) || (this.nUSTUSDApplicantRefereePK != null && !this.nUSTUSDApplicantRefereePK.equals(other.nUSTUSDApplicantRefereePK))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "nust.systems.workingcrud.entities.NUSTUSDApplicantReferee[ nUSTUSDApplicantRefereePK=" + nUSTUSDApplicantRefereePK + " ]";
    }
    
}
