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
import javax.persistence.Embeddable;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;

/**
 *
 * @author Rodney
 */
@Embeddable
public class NUSTUSDApplicantEmploymentPK implements Serializable {

    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 10)
    @Column(name = "[Applicant No_]")
    private String applicantNo;
    @Basic(optional = false)
    @NotNull
    @Column(name = "[Start Date]")
    @Temporal(TemporalType.TIMESTAMP)
    private Date startDate;

    public NUSTUSDApplicantEmploymentPK() {
    }

    public NUSTUSDApplicantEmploymentPK(String applicantNo, Date startDate) {
        this.applicantNo = applicantNo;
        this.startDate = startDate;
    }

    public String getApplicantNo() {
        return applicantNo;
    }

    public void setApplicantNo(String applicantNo) {
        this.applicantNo = applicantNo;
    }

    public Date getStartDate() {
        return startDate;
    }

    public void setStartDate(Date startDate) {
        this.startDate = startDate;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (applicantNo != null ? applicantNo.hashCode() : 0);
        hash += (startDate != null ? startDate.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof NUSTUSDApplicantEmploymentPK)) {
            return false;
        }
        NUSTUSDApplicantEmploymentPK other = (NUSTUSDApplicantEmploymentPK) object;
        if ((this.applicantNo == null && other.applicantNo != null) || (this.applicantNo != null && !this.applicantNo.equals(other.applicantNo))) {
            return false;
        }
        if ((this.startDate == null && other.startDate != null) || (this.startDate != null && !this.startDate.equals(other.startDate))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "nust.systems.workingcrud.entities.NUSTUSDApplicantEmploymentPK[ applicantNo=" + applicantNo + ", startDate=" + startDate + " ]";
    }
    
}
