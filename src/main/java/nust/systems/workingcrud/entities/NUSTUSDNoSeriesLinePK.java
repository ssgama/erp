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
 * @author gugxy
 */
@Embeddable
public class NUSTUSDNoSeriesLinePK implements Serializable {
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 10)
    @Column(name = "[Series Code]")
    private String seriesCode;
    @Basic(optional = false)
    @NotNull
    @Column(name = "[Line No_]")
    private int lineNo;

    public NUSTUSDNoSeriesLinePK() {
    }

    public NUSTUSDNoSeriesLinePK(String seriesCode, int lineNo) {
        this.seriesCode = seriesCode;
        this.lineNo = lineNo;
    }

    public String getSeriesCode() {
        return seriesCode;
    }

    public void setSeriesCode(String seriesCode) {
        this.seriesCode = seriesCode;
    }

    public int getLineNo() {
        return lineNo;
    }

    public void setLineNo(int lineNo) {
        this.lineNo = lineNo;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (seriesCode != null ? seriesCode.hashCode() : 0);
        hash += (int) lineNo;
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof NUSTUSDNoSeriesLinePK)) {
            return false;
        }
        NUSTUSDNoSeriesLinePK other = (NUSTUSDNoSeriesLinePK) object;
        if ((this.seriesCode == null && other.seriesCode != null) || (this.seriesCode != null && !this.seriesCode.equals(other.seriesCode))) {
            return false;
        }
        if (this.lineNo != other.lineNo) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "nust.systems.workingcrud.entities.NUSTUSDNoSeriesLinePK[ seriesCode=" + seriesCode + ", lineNo=" + lineNo + " ]";
    }
    
}
