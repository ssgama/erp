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
public class NUSTUSDApplicantSelectionAidJournPK implements Serializable {

    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 10)
    @Column(name = "[No_]")
    private String no;
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 20)
    @Column(name = "[Programme]")
    private String programme;

    public NUSTUSDApplicantSelectionAidJournPK() {
    }

    public NUSTUSDApplicantSelectionAidJournPK(String no, String programme) {
        this.no = no;
        this.programme = programme;
    }

    public String getNo() {
        return no;
    }

    public void setNo(String no) {
        this.no = no;
    }

    public String getProgramme() {
        return programme;
    }

    public void setProgramme(String programme) {
        this.programme = programme;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (no != null ? no.hashCode() : 0);
        hash += (programme != null ? programme.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof NUSTUSDApplicantSelectionAidJournPK)) {
            return false;
        }
        NUSTUSDApplicantSelectionAidJournPK other = (NUSTUSDApplicantSelectionAidJournPK) object;
        if ((this.no == null && other.no != null) || (this.no != null && !this.no.equals(other.no))) {
            return false;
        }
        if ((this.programme == null && other.programme != null) || (this.programme != null && !this.programme.equals(other.programme))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "nust.systems.workingcrud.entities.NUSTUSDApplicantSelectionAidJournPK[ no=" + no + ", programme=" + programme + " ]";
    }
    
}
