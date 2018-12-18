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
 * @author tawanda
 */
@Embeddable
public class NUSTUSDProgrammeFeeDetailPK implements Serializable {

    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 20)
    @Column(name = "[Class Code]")
    private String classCode;
    @Basic(optional = false)
    @NotNull
    @Column(name = "[Programme Part]")
    private int programmePart;
    @Basic(optional = false)
    @NotNull
    @Column(name = "[Year]")
    private int year;
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 10)
    @Column(name = "[Fee Type Code]")
    private String feeTypeCode;
    @Basic(optional = false)
    @NotNull
    @Column(name = "[Semester]")
    private int semester;

    public NUSTUSDProgrammeFeeDetailPK() {
    }

    public NUSTUSDProgrammeFeeDetailPK(String classCode, int programmePart, int year, String feeTypeCode, int semester) {
        this.classCode = classCode;
        this.programmePart = programmePart;
        this.year = year;
        this.feeTypeCode = feeTypeCode;
        this.semester = semester;
    }

    public String getClassCode() {
        return classCode;
    }

    public void setClassCode(String classCode) {
        this.classCode = classCode;
    }

    public int getProgrammePart() {
        return programmePart;
    }

    public void setProgrammePart(int programmePart) {
        this.programmePart = programmePart;
    }

    public int getYear() {
        return year;
    }

    public void setYear(int year) {
        this.year = year;
    }

    public String getFeeTypeCode() {
        return feeTypeCode;
    }

    public void setFeeTypeCode(String feeTypeCode) {
        this.feeTypeCode = feeTypeCode;
    }

    public int getSemester() {
        return semester;
    }

    public void setSemester(int semester) {
        this.semester = semester;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (classCode != null ? classCode.hashCode() : 0);
        hash += (int) programmePart;
        hash += (int) year;
        hash += (feeTypeCode != null ? feeTypeCode.hashCode() : 0);
        hash += (int) semester;
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof NUSTUSDProgrammeFeeDetailPK)) {
            return false;
        }
        NUSTUSDProgrammeFeeDetailPK other = (NUSTUSDProgrammeFeeDetailPK) object;
        if ((this.classCode == null && other.classCode != null) || (this.classCode != null && !this.classCode.equals(other.classCode))) {
            return false;
        }
        if (this.programmePart != other.programmePart) {
            return false;
        }
        if (this.year != other.year) {
            return false;
        }
        if ((this.feeTypeCode == null && other.feeTypeCode != null) || (this.feeTypeCode != null && !this.feeTypeCode.equals(other.feeTypeCode))) {
            return false;
        }
        if (this.semester != other.semester) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "nust.systems.workingcrud.entities.NUSTUSDProgrammeFeeDetailPK[ classCode=" + classCode + ", programmePart=" + programmePart + ", year=" + year + ", feeTypeCode=" + feeTypeCode + ", semester=" + semester + " ]";
    }
    
}
