/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package nust.systems.workingcrud.entities;

import java.io.Serializable;
import javax.persistence.Basic;
import javax.persistence.Column;
import javax.persistence.Embeddable;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;

/**
 *
 * @author Rodney
 */
@Embeddable
public class NUSTUSDApplicantQualificationPK implements Serializable {

    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 10)
    @Column(name = "[Applicant No_]")
    private String applicantNo;
    @Basic(optional = false)
    @NotNull
    @Column(name = "[Code]")
    private int code;

    public NUSTUSDApplicantQualificationPK() {
    }

    public NUSTUSDApplicantQualificationPK(String applicantNo, int code) {
        this.applicantNo = applicantNo;
        this.code = code;
    }

    public String getApplicantNo() {
        return applicantNo;
    }

    public void setApplicantNo(String applicantNo) {
        this.applicantNo = applicantNo;
    }

    public int getCode() {
        return code;
    }

    public void setCode(int code) {
        this.code = code;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (applicantNo != null ? applicantNo.hashCode() : 0);
        hash += (int) code;
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof NUSTUSDApplicantQualificationPK)) {
            return false;
        }
        NUSTUSDApplicantQualificationPK other = (NUSTUSDApplicantQualificationPK) object;
        if ((this.applicantNo == null && other.applicantNo != null) || (this.applicantNo != null && !this.applicantNo.equals(other.applicantNo))) {
            return false;
        }
        if (this.code != other.code) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "nust.systems.workingcrud.entities.NUSTUSDApplicantQualificationPK[ applicantNo=" + applicantNo + ", code=" + code + " ]";
    }
    
}
