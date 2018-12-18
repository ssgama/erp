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
import javax.persistence.Query;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;
import javax.xml.bind.annotation.XmlRootElement;

/**
 *
 * @author gugxy
 */
@Entity
@Table(name = "NUST_USD$No_ Series Line")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "NUSTUSDNoSeriesLine.findAll", query = "SELECT n FROM NUSTUSDNoSeriesLine n"),
    @NamedQuery(name = "NUSTUSDNoSeriesLine.findBySeriesCode", query = "SELECT n FROM NUSTUSDNoSeriesLine n WHERE n.nUSTUSDNoSeriesLinePK.seriesCode = :seriesCode"),
    @NamedQuery(name = "NUSTUSDNoSeriesLine.findByLineNo", query = "SELECT n FROM NUSTUSDNoSeriesLine n WHERE n.nUSTUSDNoSeriesLinePK.lineNo = :lineNo"),
    @NamedQuery(name = "NUSTUSDNoSeriesLine.findByStartingDate", query = "SELECT n FROM NUSTUSDNoSeriesLine n WHERE n.startingDate = :startingDate"),
    @NamedQuery(name = "NUSTUSDNoSeriesLine.findByStartingNo", query = "SELECT n FROM NUSTUSDNoSeriesLine n WHERE n.startingNo = :startingNo"),
    @NamedQuery(name = "NUSTUSDNoSeriesLine.findByEndingNo", query = "SELECT n FROM NUSTUSDNoSeriesLine n WHERE n.endingNo = :endingNo"),
    @NamedQuery(name = "NUSTUSDNoSeriesLine.findByWarningNo", query = "SELECT n FROM NUSTUSDNoSeriesLine n WHERE n.warningNo = :warningNo"),
    @NamedQuery(name = "NUSTUSDNoSeriesLine.findByIncrementbyNo", query = "SELECT n FROM NUSTUSDNoSeriesLine n WHERE n.incrementbyNo = :incrementbyNo"),
    @NamedQuery(name = "NUSTUSDNoSeriesLine.findByLastNoUsed", query = "SELECT n FROM NUSTUSDNoSeriesLine n WHERE n.lastNoUsed = :lastNoUsed"),
    @NamedQuery(name = "NUSTUSDNoSeriesLine.findByOpen", query = "SELECT n FROM NUSTUSDNoSeriesLine n WHERE n.open = :open"),
    @NamedQuery(name = "NUSTUSDNoSeriesLine.findByLastDateUsed", query = "SELECT n FROM NUSTUSDNoSeriesLine n WHERE n.lastDateUsed = :lastDateUsed"),
   })
   
public class NUSTUSDNoSeriesLine implements Serializable {
    private static final long serialVersionUID = 1L;
    @EmbeddedId
    protected NUSTUSDNoSeriesLinePK nUSTUSDNoSeriesLinePK;
    @Basic(optional = false)
    @NotNull
    @Column(name = "[Starting Date]")
    @Temporal(TemporalType.TIMESTAMP)
    private java.util.Date startingDate;
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 20)
    @Column(name = "[Starting No_]")
    private String startingNo;
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 20)
    @Column(name = "[Ending No_]")
    private String endingNo;
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 20)
    @Column(name = "[Warning No_]")
    private String warningNo;
    @Basic(optional = false)
    @NotNull
    @Column(name = "[Increment-by No_]")
    private int incrementbyNo;
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 20)
    @Column(name = "[Last No_ Used]")
    private String lastNoUsed;
    @Basic(optional = false)
    @NotNull
    @Column(name = "[Open]")
    private short open;
    @Basic(optional = false)
    @NotNull
    @Column(name = "[Last Date Used]")
    @Temporal(TemporalType.TIMESTAMP)
    private java.util.Date lastDateUsed;

    public NUSTUSDNoSeriesLine() {
    }

    public NUSTUSDNoSeriesLine(NUSTUSDNoSeriesLinePK nUSTUSDNoSeriesLinePK) {
        this.nUSTUSDNoSeriesLinePK = nUSTUSDNoSeriesLinePK;
    }

    public NUSTUSDNoSeriesLine(NUSTUSDNoSeriesLinePK nUSTUSDNoSeriesLinePK, Date startingDate, String startingNo, String endingNo, String warningNo, int incrementbyNo, String lastNoUsed, short open, Date lastDateUsed) {
        this.nUSTUSDNoSeriesLinePK = nUSTUSDNoSeriesLinePK;
        this.startingDate = startingDate;
        this.startingNo = startingNo;
        this.endingNo = endingNo;
        this.warningNo = warningNo;
        this.incrementbyNo = incrementbyNo;
        this.lastNoUsed = lastNoUsed;
        this.open = open;
        this.lastDateUsed = lastDateUsed;
    }

    public NUSTUSDNoSeriesLine(String seriesCode, int lineNo) {
        this.nUSTUSDNoSeriesLinePK = new NUSTUSDNoSeriesLinePK(seriesCode, lineNo);
    }

    public NUSTUSDNoSeriesLinePK getNUSTUSDNoSeriesLinePK() {
        return nUSTUSDNoSeriesLinePK;
    }

    public void setNUSTUSDNoSeriesLinePK(NUSTUSDNoSeriesLinePK nUSTUSDNoSeriesLinePK) {
        this.nUSTUSDNoSeriesLinePK = nUSTUSDNoSeriesLinePK;
    }

     public Date getStartingDate() {
        return startingDate;
    }

    public void setStartingDate(Date startingDate) {
        this.startingDate = startingDate;
    }

    public String getStartingNo() {
        return startingNo;
    }

    public void setStartingNo(String startingNo) {
        this.startingNo = startingNo;
    }

    public String getEndingNo() {
        return endingNo;
    }

    public void setEndingNo(String endingNo) {
        this.endingNo = endingNo;
    }

    public String getWarningNo() {
        return warningNo;
    }

    public void setWarningNo(String warningNo) {
        this.warningNo = warningNo;
    }

    public int getIncrementbyNo() {
        return incrementbyNo;
    }

    public void setIncrementbyNo(int incrementbyNo) {
        this.incrementbyNo = incrementbyNo;
    }

    public String getLastNoUsed() {
        return lastNoUsed;
    }

    public void setLastNoUsed(String lastNoUsed) {
        this.lastNoUsed = lastNoUsed;
    }

    public short getOpen() {
        return open;
    }

    public void setOpen(short open) {
        this.open = open;
    }

    public Date getLastDateUsed() {
        return lastDateUsed;
    }

    public void setLastDateUsed(Date lastDateUsed) {
        this.lastDateUsed = lastDateUsed;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (nUSTUSDNoSeriesLinePK != null ? nUSTUSDNoSeriesLinePK.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof NUSTUSDNoSeriesLine)) {
            return false;
        }
        NUSTUSDNoSeriesLine other = (NUSTUSDNoSeriesLine) object;
        if ((this.nUSTUSDNoSeriesLinePK == null && other.nUSTUSDNoSeriesLinePK != null) || (this.nUSTUSDNoSeriesLinePK != null && !this.nUSTUSDNoSeriesLinePK.equals(other.nUSTUSDNoSeriesLinePK))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "nust.systems.workingcrud.entities.NUSTUSDNoSeriesLine[ nUSTUSDNoSeriesLinePK=" + nUSTUSDNoSeriesLinePK + " ]";
    }
    
}
