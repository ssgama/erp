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
public class NUSTUSDApplicantChoicePK implements Serializable {

    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 10)
    @Column(name = "[Applicant No_]")
    private String applicantNo;
    @Basic(optional = false)
    @NotNull
    @Column(name = "[Type]")
    private int type;
    @Basic(optional = false)
    @NotNull
    @Column(name = "[Choice]")
    private int choice;
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 20)
    @Column(name = "[Programme Code]")
    private String programmeCode;

    public NUSTUSDApplicantChoicePK() {
    }

    public NUSTUSDApplicantChoicePK(String applicantNo, int type, int choice, String programmeCode) {
        this.applicantNo = applicantNo;
        this.type = type;
        this.choice = choice;
        this.programmeCode = programmeCode;
    }

    public String getApplicantNo() {
        return applicantNo;
    }

    public void setApplicantNo(String applicantNo) {
        this.applicantNo = applicantNo;
    }

    public int getType() {
        return type;
    }

    public void setType(int type) {
        this.type = type;
    }

    public int getChoice() {
        return choice;
    }

    public void setChoice(int choice) {
        this.choice = choice;
    }

    public String getProgrammeCode() {
        return programmeCode;
    }

    public void setProgrammeCode(String programmeCode) {
        this.programmeCode = programmeCode;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (applicantNo != null ? applicantNo.hashCode() : 0);
        hash += (int) type;
        hash += (int) choice;
        hash += (programmeCode != null ? programmeCode.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof NUSTUSDApplicantChoicePK)) {
            return false;
        }
        NUSTUSDApplicantChoicePK other = (NUSTUSDApplicantChoicePK) object;
        if ((this.applicantNo == null && other.applicantNo != null) || (this.applicantNo != null && !this.applicantNo.equals(other.applicantNo))) {
            return false;
        }
        if (this.type != other.type) {
            return false;
        }
        if (this.choice != other.choice) {
            return false;
        }
        if ((this.programmeCode == null && other.programmeCode != null) || (this.programmeCode != null && !this.programmeCode.equals(other.programmeCode))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "nust.systems.workingcrud.entities.NUSTUSDApplicantChoicePK[ applicantNo=" + applicantNo + ", type=" + type + ", choice=" + choice + ", programmeCode=" + programmeCode + " ]";
    }
    
}
