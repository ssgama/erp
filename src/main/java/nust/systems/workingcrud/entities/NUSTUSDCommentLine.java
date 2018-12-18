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
 * @author tawanda
 */
@Entity
@Table(name = "NUST_USD$Comment Line")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "NUSTUSDCommentLine.findAll", query = "SELECT n FROM NUSTUSDCommentLine n")
    , @NamedQuery(name = "NUSTUSDCommentLine.findByTableName", query = "SELECT n FROM NUSTUSDCommentLine n WHERE n.nUSTUSDCommentLinePK.tableName = :tableName")
    , @NamedQuery(name = "NUSTUSDCommentLine.findByNo", query = "SELECT n FROM NUSTUSDCommentLine n WHERE n.nUSTUSDCommentLinePK.no = :no")
    , @NamedQuery(name = "NUSTUSDCommentLine.findByLineNo", query = "SELECT n FROM NUSTUSDCommentLine n WHERE n.nUSTUSDCommentLinePK.lineNo = :lineNo")
    , @NamedQuery(name = "NUSTUSDCommentLine.findByDate", query = "SELECT n FROM NUSTUSDCommentLine n WHERE n.date = :date")
    , @NamedQuery(name = "NUSTUSDCommentLine.findByCode", query = "SELECT n FROM NUSTUSDCommentLine n WHERE n.code = :code")
    , @NamedQuery(name = "NUSTUSDCommentLine.findByComment", query = "SELECT n FROM NUSTUSDCommentLine n WHERE n.comment = :comment")})
public class NUSTUSDCommentLine implements Serializable {

    private static final long serialVersionUID = 1L;
    @EmbeddedId
    protected NUSTUSDCommentLinePK nUSTUSDCommentLinePK;
    @Basic(optional = false)
    @NotNull
    @Lob
    @Column(name = "[timestamp]")
    private byte[] timestamp;
    @Basic(optional = false)
    @NotNull
    @Column(name = "[Date]")
    @Temporal(TemporalType.TIMESTAMP)
    private Date date;
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 10)
    @Column(name = "[Code]")
    private String code;
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 80)
    @Column(name = "[Comment]")
    private String comment;

    public NUSTUSDCommentLine() {
    }

    public NUSTUSDCommentLine(NUSTUSDCommentLinePK nUSTUSDCommentLinePK) {
        this.nUSTUSDCommentLinePK = nUSTUSDCommentLinePK;
    }

    public NUSTUSDCommentLine(NUSTUSDCommentLinePK nUSTUSDCommentLinePK, byte[] timestamp, Date date, String code, String comment) {
        this.nUSTUSDCommentLinePK = nUSTUSDCommentLinePK;
        this.timestamp = timestamp;
        this.date = date;
        this.code = code;
        this.comment = comment;
    }

    public NUSTUSDCommentLine(int tableName, String no, int lineNo) {
        this.nUSTUSDCommentLinePK = new NUSTUSDCommentLinePK(tableName, no, lineNo);
    }

    public NUSTUSDCommentLinePK getNUSTUSDCommentLinePK() {
        return nUSTUSDCommentLinePK;
    }

    public void setNUSTUSDCommentLinePK(NUSTUSDCommentLinePK nUSTUSDCommentLinePK) {
        this.nUSTUSDCommentLinePK = nUSTUSDCommentLinePK;
    }

    public byte[] getTimestamp() {
        return timestamp;
    }

    public void setTimestamp(byte[] timestamp) {
        this.timestamp = timestamp;
    }

    public Date getDate() {
        return date;
    }

    public void setDate(Date date) {
        this.date = date;
    }

    public String getCode() {
        return code;
    }

    public void setCode(String code) {
        this.code = code;
    }

    public String getComment() {
        return comment;
    }

    public void setComment(String comment) {
        this.comment = comment;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (nUSTUSDCommentLinePK != null ? nUSTUSDCommentLinePK.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof NUSTUSDCommentLine)) {
            return false;
        }
        NUSTUSDCommentLine other = (NUSTUSDCommentLine) object;
        if ((this.nUSTUSDCommentLinePK == null && other.nUSTUSDCommentLinePK != null) || (this.nUSTUSDCommentLinePK != null && !this.nUSTUSDCommentLinePK.equals(other.nUSTUSDCommentLinePK))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "nust.systems.workingcrud.entities.NUSTUSDCommentLine[ nUSTUSDCommentLinePK=" + nUSTUSDCommentLinePK + " ]";
    }
    
}
