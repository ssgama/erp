/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package nust.systems.workingcrud.entities;

import java.io.Serializable;
import java.util.Date;
import javax.persistence.Basic;
import javax.persistence.Column;
import javax.persistence.EmbeddedId;
import javax.persistence.Entity;
import javax.persistence.Lob;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;
import javax.xml.bind.annotation.XmlRootElement;

/**
 *
 * @author Rodney
 */
@Entity
@Table(name = "NUST_USD$Applicant Employment")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "NUSTUSDApplicantEmployment.findAll", query = "SELECT n FROM NUSTUSDApplicantEmployment n"),
    @NamedQuery(name = "NUSTUSDApplicantEmployment.findByApplicantNo", query = "SELECT n FROM NUSTUSDApplicantEmployment n WHERE n.nUSTUSDApplicantEmploymentPK.applicantNo = :applicantNo"),
    @NamedQuery(name = "NUSTUSDApplicantEmployment.findByStartDate", query = "SELECT n FROM NUSTUSDApplicantEmployment n WHERE n.nUSTUSDApplicantEmploymentPK.startDate = :startDate"),
    @NamedQuery(name = "NUSTUSDApplicantEmployment.findByEndDate", query = "SELECT n FROM NUSTUSDApplicantEmployment n WHERE n.endDate = :endDate"),
    @NamedQuery(name = "NUSTUSDApplicantEmployment.findByOccupationDetails", query = "SELECT n FROM NUSTUSDApplicantEmployment n WHERE n.occupationDetails = :occupationDetails"),
    @NamedQuery(name = "NUSTUSDApplicantEmployment.findByEmployer", query = "SELECT n FROM NUSTUSDApplicantEmployment n WHERE n.employer = :employer"),
    @NamedQuery(name = "NUSTUSDApplicantEmployment.findByRemarks", query = "SELECT n FROM NUSTUSDApplicantEmployment n WHERE n.remarks = :remarks")})
public class NUSTUSDApplicantEmployment implements Serializable {

    @Basic(optional = false)
    @NotNull
  

    private static final long serialVersionUID = 1L;
    @EmbeddedId
    protected NUSTUSDApplicantEmploymentPK nUSTUSDApplicantEmploymentPK;
    @Basic(optional = false)
    @NotNull
    @Column(name = "[End Date]")
    @Temporal(TemporalType.TIMESTAMP)
    private java.util.Date endDate;
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 30)
    @Column(name = "[Occupation Details]")
    private String occupationDetails;
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 30)
    @Column(name = "[Employer]")
    private String employer;
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 60)
    @Column(name = "[Remarks]")
    private String remarks;

    public NUSTUSDApplicantEmployment() {
    }

    public NUSTUSDApplicantEmployment(NUSTUSDApplicantEmploymentPK nUSTUSDApplicantEmploymentPK) {
        this.nUSTUSDApplicantEmploymentPK = nUSTUSDApplicantEmploymentPK;
    }

    public NUSTUSDApplicantEmployment(NUSTUSDApplicantEmploymentPK nUSTUSDApplicantEmploymentPK, Date endDate, String occupationDetails, String employer, String remarks) {
        this.nUSTUSDApplicantEmploymentPK = nUSTUSDApplicantEmploymentPK;
        this.endDate = endDate;
        this.occupationDetails = occupationDetails;
        this.employer = employer;
        this.remarks = remarks;
    }

    public NUSTUSDApplicantEmployment(String applicantNo, Date startDate) {
        this.nUSTUSDApplicantEmploymentPK = new NUSTUSDApplicantEmploymentPK(applicantNo, startDate);
    }

    public NUSTUSDApplicantEmploymentPK getNUSTUSDApplicantEmploymentPK() {
        return nUSTUSDApplicantEmploymentPK;
    }

    public void setNUSTUSDApplicantEmploymentPK(NUSTUSDApplicantEmploymentPK nUSTUSDApplicantEmploymentPK) {
        this.nUSTUSDApplicantEmploymentPK = nUSTUSDApplicantEmploymentPK;
    }


    public Date getEndDate() {
        return endDate;
    }

    public void setEndDate(Date endDate) {
        this.endDate = endDate;
    }

    public String getOccupationDetails() {
        return occupationDetails;
    }

    public void setOccupationDetails(String occupationDetails) {
        this.occupationDetails = occupationDetails;
    }

    public String getEmployer() {
        return employer;
    }

    public void setEmployer(String employer) {
        this.employer = employer;
    }

    public String getRemarks() {
        return remarks;
    }

    public void setRemarks(String remarks) {
        this.remarks = remarks;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (nUSTUSDApplicantEmploymentPK != null ? nUSTUSDApplicantEmploymentPK.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof NUSTUSDApplicantEmployment)) {
            return false;
        }
        NUSTUSDApplicantEmployment other = (NUSTUSDApplicantEmployment) object;
        if ((this.nUSTUSDApplicantEmploymentPK == null && other.nUSTUSDApplicantEmploymentPK != null) || (this.nUSTUSDApplicantEmploymentPK != null && !this.nUSTUSDApplicantEmploymentPK.equals(other.nUSTUSDApplicantEmploymentPK))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "nust.systems.workingcrud.entities.NUSTUSDApplicantEmployment[ nUSTUSDApplicantEmploymentPK=" + nUSTUSDApplicantEmploymentPK + " ]";
    }

 
    
}
