/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package nust.systems.workingcrud.entities;

import java.io.Serializable;
import java.math.BigDecimal;
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
@Table(name = "NUST_USD$Programme Fee Detail")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "NUSTUSDProgrammeFeeDetail.findAll", query = "SELECT n FROM NUSTUSDProgrammeFeeDetail n")
    , @NamedQuery(name = "NUSTUSDProgrammeFeeDetail.findByClassCode", query = "SELECT n FROM NUSTUSDProgrammeFeeDetail n WHERE n.nUSTUSDProgrammeFeeDetailPK.classCode = :classCode")
    , @NamedQuery(name = "NUSTUSDProgrammeFeeDetail.findByProgrammePart", query = "SELECT n FROM NUSTUSDProgrammeFeeDetail n WHERE n.nUSTUSDProgrammeFeeDetailPK.programmePart = :programmePart")
    , @NamedQuery(name = "NUSTUSDProgrammeFeeDetail.findByYear", query = "SELECT n FROM NUSTUSDProgrammeFeeDetail n WHERE n.nUSTUSDProgrammeFeeDetailPK.year = :year")
    , @NamedQuery(name = "NUSTUSDProgrammeFeeDetail.findByFeeTypeCode", query = "SELECT n FROM NUSTUSDProgrammeFeeDetail n WHERE n.nUSTUSDProgrammeFeeDetailPK.feeTypeCode = :feeTypeCode")
    , @NamedQuery(name = "NUSTUSDProgrammeFeeDetail.findBySemester", query = "SELECT n FROM NUSTUSDProgrammeFeeDetail n WHERE n.nUSTUSDProgrammeFeeDetailPK.semester = :semester")
    , @NamedQuery(name = "NUSTUSDProgrammeFeeDetail.findByAmount", query = "SELECT n FROM NUSTUSDProgrammeFeeDetail n WHERE n.amount = :amount")
    , @NamedQuery(name = "NUSTUSDProgrammeFeeDetail.findByMandatory", query = "SELECT n FROM NUSTUSDProgrammeFeeDetail n WHERE n.mandatory = :mandatory")
    , @NamedQuery(name = "NUSTUSDProgrammeFeeDetail.findByFeeType", query = "SELECT n FROM NUSTUSDProgrammeFeeDetail n WHERE n.feeType = :feeType")
    , @NamedQuery(name = "NUSTUSDProgrammeFeeDetail.findByWorksheetBatch", query = "SELECT n FROM NUSTUSDProgrammeFeeDetail n WHERE n.worksheetBatch = :worksheetBatch")
    , @NamedQuery(name = "NUSTUSDProgrammeFeeDetail.findByLineNo", query = "SELECT n FROM NUSTUSDProgrammeFeeDetail n WHERE n.lineNo = :lineNo")
    , @NamedQuery(name = "NUSTUSDProgrammeFeeDetail.findByFeeSuggested", query = "SELECT n FROM NUSTUSDProgrammeFeeDetail n WHERE n.feeSuggested = :feeSuggested")
    , @NamedQuery(name = "NUSTUSDProgrammeFeeDetail.findByCreateBy", query = "SELECT n FROM NUSTUSDProgrammeFeeDetail n WHERE n.createBy = :createBy")
    , @NamedQuery(name = "NUSTUSDProgrammeFeeDetail.findByModifiedBy", query = "SELECT n FROM NUSTUSDProgrammeFeeDetail n WHERE n.modifiedBy = :modifiedBy")
    , @NamedQuery(name = "NUSTUSDProgrammeFeeDetail.findByDateCreated", query = "SELECT n FROM NUSTUSDProgrammeFeeDetail n WHERE n.dateCreated = :dateCreated")
    , @NamedQuery(name = "NUSTUSDProgrammeFeeDetail.findByDateModified", query = "SELECT n FROM NUSTUSDProgrammeFeeDetail n WHERE n.dateModified = :dateModified")})
public class NUSTUSDProgrammeFeeDetail implements Serializable {

    private static final long serialVersionUID = 1L;
    @EmbeddedId
    protected NUSTUSDProgrammeFeeDetailPK nUSTUSDProgrammeFeeDetailPK;
    @Basic(optional = false)
    @NotNull
    @Lob
    @Column(name = "[timestamp]")
    private byte[] timestamp;
    // @Max(value=?)  @Min(value=?)//if you know range of your decimal fields consider using these annotations to enforce field validation
    @Basic(optional = false)
    @NotNull
    @Column(name = "[Amount]")
    private BigDecimal amount;
    @Basic(optional = false)
    @NotNull
    @Column(name = "[Mandatory]")
    private short mandatory;
    @Basic(optional = false)
    @NotNull
    @Column(name = "[Fee Type]")
    private int feeType;
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 20)
    @Column(name = "[Worksheet Batch]")
    private String worksheetBatch;
    @Basic(optional = false)
    @NotNull
    @Column(name = "[Line No_]")
    private int lineNo;
    @Basic(optional = false)
    @NotNull
    @Column(name = "[Fee Suggested]")
    private BigDecimal feeSuggested;
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 50)
    @Column(name = "[Create By]")
    private String createBy;
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 50)
    @Column(name = "[Modified By]")
    private String modifiedBy;
    @Basic(optional = false)
    @NotNull
    @Column(name = "[Date Created]")
    @Temporal(TemporalType.TIMESTAMP)
    private Date dateCreated;
    @Basic(optional = false)
    @NotNull
    @Column(name = "[Date Modified]")
    @Temporal(TemporalType.TIMESTAMP)
    private Date dateModified;

    public NUSTUSDProgrammeFeeDetail() {
    }

    public NUSTUSDProgrammeFeeDetail(NUSTUSDProgrammeFeeDetailPK nUSTUSDProgrammeFeeDetailPK) {
        this.nUSTUSDProgrammeFeeDetailPK = nUSTUSDProgrammeFeeDetailPK;
    }

    public NUSTUSDProgrammeFeeDetail(NUSTUSDProgrammeFeeDetailPK nUSTUSDProgrammeFeeDetailPK, byte[] timestamp, BigDecimal amount, short mandatory, int feeType, String worksheetBatch, int lineNo, BigDecimal feeSuggested, String createBy, String modifiedBy, Date dateCreated, Date dateModified) {
        this.nUSTUSDProgrammeFeeDetailPK = nUSTUSDProgrammeFeeDetailPK;
        this.timestamp = timestamp;
        this.amount = amount;
        this.mandatory = mandatory;
        this.feeType = feeType;
        this.worksheetBatch = worksheetBatch;
        this.lineNo = lineNo;
        this.feeSuggested = feeSuggested;
        this.createBy = createBy;
        this.modifiedBy = modifiedBy;
        this.dateCreated = dateCreated;
        this.dateModified = dateModified;
    }

    public NUSTUSDProgrammeFeeDetail(String classCode, int programmePart, int year, String feeTypeCode, int semester) {
        this.nUSTUSDProgrammeFeeDetailPK = new NUSTUSDProgrammeFeeDetailPK(classCode, programmePart, year, feeTypeCode, semester);
    }

    public NUSTUSDProgrammeFeeDetailPK getNUSTUSDProgrammeFeeDetailPK() {
        return nUSTUSDProgrammeFeeDetailPK;
    }

    public void setNUSTUSDProgrammeFeeDetailPK(NUSTUSDProgrammeFeeDetailPK nUSTUSDProgrammeFeeDetailPK) {
        this.nUSTUSDProgrammeFeeDetailPK = nUSTUSDProgrammeFeeDetailPK;
    }

    public byte[] getTimestamp() {
        return timestamp;
    }

    public void setTimestamp(byte[] timestamp) {
        this.timestamp = timestamp;
    }

    public BigDecimal getAmount() {
        return amount;
    }

    public void setAmount(BigDecimal amount) {
        this.amount = amount;
    }

    public short getMandatory() {
        return mandatory;
    }

    public void setMandatory(short mandatory) {
        this.mandatory = mandatory;
    }

    public int getFeeType() {
        return feeType;
    }

    public void setFeeType(int feeType) {
        this.feeType = feeType;
    }

    public String getWorksheetBatch() {
        return worksheetBatch;
    }

    public void setWorksheetBatch(String worksheetBatch) {
        this.worksheetBatch = worksheetBatch;
    }

    public int getLineNo() {
        return lineNo;
    }

    public void setLineNo(int lineNo) {
        this.lineNo = lineNo;
    }

    public BigDecimal getFeeSuggested() {
        return feeSuggested;
    }

    public void setFeeSuggested(BigDecimal feeSuggested) {
        this.feeSuggested = feeSuggested;
    }

    public String getCreateBy() {
        return createBy;
    }

    public void setCreateBy(String createBy) {
        this.createBy = createBy;
    }

    public String getModifiedBy() {
        return modifiedBy;
    }

    public void setModifiedBy(String modifiedBy) {
        this.modifiedBy = modifiedBy;
    }

    public Date getDateCreated() {
        return dateCreated;
    }

    public void setDateCreated(Date dateCreated) {
        this.dateCreated = dateCreated;
    }

    public Date getDateModified() {
        return dateModified;
    }

    public void setDateModified(Date dateModified) {
        this.dateModified = dateModified;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (nUSTUSDProgrammeFeeDetailPK != null ? nUSTUSDProgrammeFeeDetailPK.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof NUSTUSDProgrammeFeeDetail)) {
            return false;
        }
        NUSTUSDProgrammeFeeDetail other = (NUSTUSDProgrammeFeeDetail) object;
        if ((this.nUSTUSDProgrammeFeeDetailPK == null && other.nUSTUSDProgrammeFeeDetailPK != null) || (this.nUSTUSDProgrammeFeeDetailPK != null && !this.nUSTUSDProgrammeFeeDetailPK.equals(other.nUSTUSDProgrammeFeeDetailPK))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "nust.systems.workingcrud.entities.NUSTUSDProgrammeFeeDetail[ nUSTUSDProgrammeFeeDetailPK=" + nUSTUSDProgrammeFeeDetailPK + " ]";
    }
    
}
