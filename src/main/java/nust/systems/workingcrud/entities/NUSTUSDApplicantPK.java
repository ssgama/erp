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
public class NUSTUSDApplicantPK implements Serializable {

    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 10)
    @Column(name = "[No_]")
    private String no;
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 20)
    @Column(name = "[Customer No_]")
    private String customerNo;

    public NUSTUSDApplicantPK() {
    }

    public NUSTUSDApplicantPK(String no, String customerNo) {
        this.no = no;
        this.customerNo = customerNo;
    }

    public String getNo() {
        return no;
    }

    public void setNo(String no) {
        this.no = no;
    }

    public String getCustomerNo() {
        return customerNo;
    }

    public void setCustomerNo(String customerNo) {
        this.customerNo = customerNo;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (no != null ? no.hashCode() : 0);
        hash += (customerNo != null ? customerNo.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof NUSTUSDApplicantPK)) {
            return false;
        }
        NUSTUSDApplicantPK other = (NUSTUSDApplicantPK) object;
        if ((this.no == null && other.no != null) || (this.no != null && !this.no.equals(other.no))) {
            return false;
        }
        if ((this.customerNo == null && other.customerNo != null) || (this.customerNo != null && !this.customerNo.equals(other.customerNo))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "nust.systems.workingcrud.entities.NUSTUSDApplicantPK[ no=" + no + ", customerNo=" + customerNo + " ]";
    }
    
}
