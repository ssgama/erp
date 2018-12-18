/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package nust.systems.workingcrud.entities;

import java.io.Serializable;
import java.math.BigDecimal;
import javax.persistence.Basic;
import javax.persistence.Column;
import javax.persistence.EmbeddedId;
import javax.persistence.Entity;
import javax.persistence.Lob;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.Table;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;
import javax.xml.bind.annotation.XmlRootElement;

/**
 *
 * @author Rodney
 */
@Entity
@Table(name = "NUST_USD$Applicant Choice")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "NUSTUSDApplicantChoice.findAll", query = "SELECT n FROM NUSTUSDApplicantChoice n"),
    @NamedQuery(name = "NUSTUSDApplicantChoice.findByApplicantNo", query = "SELECT n FROM NUSTUSDApplicantChoice n WHERE n.nUSTUSDApplicantChoicePK.applicantNo = :applicantNo"),
    @NamedQuery(name = "NUSTUSDApplicantChoice.findByType", query = "SELECT n FROM NUSTUSDApplicantChoice n WHERE n.nUSTUSDApplicantChoicePK.type = :type"),
    @NamedQuery(name = "NUSTUSDApplicantChoice.findByChoice", query = "SELECT n FROM NUSTUSDApplicantChoice n WHERE n.nUSTUSDApplicantChoicePK.choice = :choice"),
    @NamedQuery(name = "NUSTUSDApplicantChoice.findByProgrammeCode", query = "SELECT n FROM NUSTUSDApplicantChoice n WHERE n.nUSTUSDApplicantChoicePK.programmeCode = :programmeCode"),
    @NamedQuery(name = "NUSTUSDApplicantChoice.findByScore", query = "SELECT n FROM NUSTUSDApplicantChoice n WHERE n.score = :score"),
    @NamedQuery(name = "NUSTUSDApplicantChoice.findByStatus", query = "SELECT n FROM NUSTUSDApplicantChoice n WHERE n.status = :status"),
    @NamedQuery(name = "NUSTUSDApplicantChoice.findByInternalStatus", query = "SELECT n FROM NUSTUSDApplicantChoice n WHERE n.internalStatus = :internalStatus"),
    @NamedQuery(name = "NUSTUSDApplicantChoice.findByProcessed", query = "SELECT n FROM NUSTUSDApplicantChoice n WHERE n.processed = :processed"),
    @NamedQuery(name = "NUSTUSDApplicantChoice.findByMandatorySubjectsCount", query = "SELECT n FROM NUSTUSDApplicantChoice n WHERE n.mandatorySubjectsCount = :mandatorySubjectsCount"),
    @NamedQuery(name = "NUSTUSDApplicantChoice.findByMandatorySubjectsPoints", query = "SELECT n FROM NUSTUSDApplicantChoice n WHERE n.mandatorySubjectsPoints = :mandatorySubjectsPoints"),
    @NamedQuery(name = "NUSTUSDApplicantChoice.findByBest3Points", query = "SELECT n FROM NUSTUSDApplicantChoice n WHERE n.best3Points = :best3Points"),
    @NamedQuery(name = "NUSTUSDApplicantChoice.findByDesiredSubjectsCount", query = "SELECT n FROM NUSTUSDApplicantChoice n WHERE n.desiredSubjectsCount = :desiredSubjectsCount"),
    @NamedQuery(name = "NUSTUSDApplicantChoice.findByDesiredSubjectsPoints", query = "SELECT n FROM NUSTUSDApplicantChoice n WHERE n.desiredSubjectsPoints = :desiredSubjectsPoints"),
    @NamedQuery(name = "NUSTUSDApplicantChoice.findByCommited", query = "SELECT n FROM NUSTUSDApplicantChoice n WHERE n.commited = :commited"),
    @NamedQuery(name = "NUSTUSDApplicantChoice.findByWeiight", query = "SELECT n FROM NUSTUSDApplicantChoice n WHERE n.weiight = :weiight"),
    @NamedQuery(name = "NUSTUSDApplicantChoice.findByEnoughDatA", query = "SELECT n FROM NUSTUSDApplicantChoice n WHERE n.enoughDatA = :enoughDatA"),
    @NamedQuery(name = "NUSTUSDApplicantChoice.findByAddedAdvantage", query = "SELECT n FROM NUSTUSDApplicantChoice n WHERE n.addedAdvantage = :addedAdvantage"),
    @NamedQuery(name = "NUSTUSDApplicantChoice.findByYear", query = "SELECT n FROM NUSTUSDApplicantChoice n WHERE n.year = :year"),
    @NamedQuery(name = "NUSTUSDApplicantChoice.findByRankingNo", query = "SELECT n FROM NUSTUSDApplicantChoice n WHERE n.rankingNo = :rankingNo"),
    @NamedQuery(name = "NUSTUSDApplicantChoice.findByHasQualification", query = "SELECT n FROM NUSTUSDApplicantChoice n WHERE n.hasQualification = :hasQualification"),
    @NamedQuery(name = "NUSTUSDApplicantChoice.findByProgrammeName", query = "SELECT n FROM NUSTUSDApplicantChoice n WHERE n.programmeName = :programmeName"),
    @NamedQuery(name = "NUSTUSDApplicantChoice.findByAlgorithimChoice", query = "SELECT n FROM NUSTUSDApplicantChoice n WHERE n.algorithimChoice = :algorithimChoice"),
    @NamedQuery(name = "NUSTUSDApplicantChoice.findByLocation", query = "SELECT n FROM NUSTUSDApplicantChoice n WHERE n.location = :location")})
public class NUSTUSDApplicantChoice implements Serializable {

    private static final long serialVersionUID = 1L;
    @EmbeddedId
    protected NUSTUSDApplicantChoicePK nUSTUSDApplicantChoicePK;
    //@Basic(optional = false)
    //@NotNull
    //@Lob
    //@Column(name = "[timestamp]")
   // private byte[] timestamp;
    // @Max(value=?)  @Min(value=?)//if you know range of your decimal fields consider using these annotations to enforce field validation
    @Basic(optional = false)
    @NotNull
    @Column(name = "[Score]")
    private BigDecimal score;
    @Basic(optional = false)
    @NotNull
    @Column(name = "[Status]")
    private int status;
    @Basic(optional = false)
    @NotNull
    @Column(name = "[Internal Status]")
    private int internalStatus;
    @Basic(optional = false)
    @NotNull
    @Column(name = "[Processed]")
    private short processed;
    @Basic(optional = false)
    @NotNull
    @Column(name = "[Mandatory Subjects Count]")
    private int mandatorySubjectsCount;
    @Basic(optional = false)
    @NotNull
    @Column(name = "[Mandatory Subjects Points]")
    private int mandatorySubjectsPoints;
    @Basic(optional = false)
    @NotNull
    @Column(name = "[Best3Points]")
    private BigDecimal best3Points;
    @Basic(optional = false)
    @NotNull
    @Column(name = "[Desired Subjects Count]")
    private int desiredSubjectsCount;
    @Basic(optional = false)
    @NotNull
    @Column(name = "[Desired Subjects Points]")
    private int desiredSubjectsPoints;
    @Basic(optional = false)
    @NotNull
    @Column(name = "[Commited]")
    private short commited;
    @Basic(optional = false)
    @NotNull
    @Column(name = "[Weiight]")
    private int weiight;
    @Basic(optional = false)
    @NotNull
    @Column(name = "[Enough DatA]")
    private short enoughDatA;
    @Basic(optional = false)
    @NotNull
    @Column(name = "[Added Advantage]")
    private int addedAdvantage;
    @Basic(optional = false)
    @NotNull
    @Column(name = "[Year]")
    private int year;
    @Basic(optional = false)
    @NotNull
    @Column(name = "[Ranking No_]")
    private int rankingNo;
    @Basic(optional = false)
    @NotNull
    @Column(name = "[HasQualification]")
    private short hasQualification;
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 250)
    @Column(name = "[Programme Name]")
    private String programmeName;
    @Basic(optional = false)
    @NotNull
    @Column(name = "[Algorithim Choice]")
    private int algorithimChoice;
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 10)
    @Column(name = "[Location]")
    private String location;

    public NUSTUSDApplicantChoice() {
    }

    public NUSTUSDApplicantChoice(NUSTUSDApplicantChoicePK nUSTUSDApplicantChoicePK) {
        this.nUSTUSDApplicantChoicePK = nUSTUSDApplicantChoicePK;
    }

    public NUSTUSDApplicantChoice(NUSTUSDApplicantChoicePK nUSTUSDApplicantChoicePK, BigDecimal score, int status, int internalStatus, short processed, int mandatorySubjectsCount, int mandatorySubjectsPoints, BigDecimal best3Points, int desiredSubjectsCount, int desiredSubjectsPoints, short commited, int weiight, short enoughDatA, int addedAdvantage, int year, int rankingNo, short hasQualification, String programmeName, int algorithimChoice, String location) {
        this.nUSTUSDApplicantChoicePK = nUSTUSDApplicantChoicePK;
       // this.timestamp = timestamp;
        this.score = score;
        this.status = status;
        this.internalStatus = internalStatus;
        this.processed = processed;
        this.mandatorySubjectsCount = mandatorySubjectsCount;
        this.mandatorySubjectsPoints = mandatorySubjectsPoints;
        this.best3Points = best3Points;
        this.desiredSubjectsCount = desiredSubjectsCount;
        this.desiredSubjectsPoints = desiredSubjectsPoints;
        this.commited = commited;
        this.weiight = weiight;
        this.enoughDatA = enoughDatA;
        this.addedAdvantage = addedAdvantage;
        this.year = year;
        this.rankingNo = rankingNo;
        this.hasQualification = hasQualification;
        this.programmeName = programmeName;
        this.algorithimChoice = algorithimChoice;
        this.location = location;
    }

    public NUSTUSDApplicantChoice(String applicantNo, int type, int choice, String programmeCode) {
        this.nUSTUSDApplicantChoicePK = new NUSTUSDApplicantChoicePK(applicantNo, type, choice, programmeCode);
    }

    public NUSTUSDApplicantChoicePK getNUSTUSDApplicantChoicePK() {
        return nUSTUSDApplicantChoicePK;
    }

    public void setNUSTUSDApplicantChoicePK(NUSTUSDApplicantChoicePK nUSTUSDApplicantChoicePK) {
        this.nUSTUSDApplicantChoicePK = nUSTUSDApplicantChoicePK;
    }

   /* public byte[] getTimestamp() {
        return timestamp;
    }

    public void setTimestamp(byte[] timestamp) {
        this.timestamp = timestamp;
    }*/

    public BigDecimal getScore() {
        return score;
    }

    public void setScore(BigDecimal score) {
        this.score = score;
    }

    public int getStatus() {
        return status;
    }

    public void setStatus(int status) {
        this.status = status;
    }

    public int getInternalStatus() {
        return internalStatus;
    }

    public void setInternalStatus(int internalStatus) {
        this.internalStatus = internalStatus;
    }

    public short getProcessed() {
        return processed;
    }

    public void setProcessed(short processed) {
        this.processed = processed;
    }

    public int getMandatorySubjectsCount() {
        return mandatorySubjectsCount;
    }

    public void setMandatorySubjectsCount(int mandatorySubjectsCount) {
        this.mandatorySubjectsCount = mandatorySubjectsCount;
    }

    public int getMandatorySubjectsPoints() {
        return mandatorySubjectsPoints;
    }

    public void setMandatorySubjectsPoints(int mandatorySubjectsPoints) {
        this.mandatorySubjectsPoints = mandatorySubjectsPoints;
    }

    public BigDecimal getBest3Points() {
        return best3Points;
    }

    public void setBest3Points(BigDecimal best3Points) {
        this.best3Points = best3Points;
    }

    public int getDesiredSubjectsCount() {
        return desiredSubjectsCount;
    }

    public void setDesiredSubjectsCount(int desiredSubjectsCount) {
        this.desiredSubjectsCount = desiredSubjectsCount;
    }

    public int getDesiredSubjectsPoints() {
        return desiredSubjectsPoints;
    }

    public void setDesiredSubjectsPoints(int desiredSubjectsPoints) {
        this.desiredSubjectsPoints = desiredSubjectsPoints;
    }

    public short getCommited() {
        return commited;
    }

    public void setCommited(short commited) {
        this.commited = commited;
    }

    public int getWeiight() {
        return weiight;
    }

    public void setWeiight(int weiight) {
        this.weiight = weiight;
    }

    public short getEnoughDatA() {
        return enoughDatA;
    }

    public void setEnoughDatA(short enoughDatA) {
        this.enoughDatA = enoughDatA;
    }

    public int getAddedAdvantage() {
        return addedAdvantage;
    }

    public void setAddedAdvantage(int addedAdvantage) {
        this.addedAdvantage = addedAdvantage;
    }

    public int getYear() {
        return year;
    }

    public void setYear(int year) {
        this.year = year;
    }

    public int getRankingNo() {
        return rankingNo;
    }

    public void setRankingNo(int rankingNo) {
        this.rankingNo = rankingNo;
    }

    public short getHasQualification() {
        return hasQualification;
    }

    public void setHasQualification(short hasQualification) {
        this.hasQualification = hasQualification;
    }

    public String getProgrammeName() {
        return programmeName;
    }

    public void setProgrammeName(String programmeName) {
        this.programmeName = programmeName;
    }

    public int getAlgorithimChoice() {
        return algorithimChoice;
    }

    public void setAlgorithimChoice(int algorithimChoice) {
        this.algorithimChoice = algorithimChoice;
    }

    public String getLocation() {
        return location;
    }

    public void setLocation(String location) {
        this.location = location;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (nUSTUSDApplicantChoicePK != null ? nUSTUSDApplicantChoicePK.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof NUSTUSDApplicantChoice)) {
            return false;
        }
        NUSTUSDApplicantChoice other = (NUSTUSDApplicantChoice) object;
        if ((this.nUSTUSDApplicantChoicePK == null && other.nUSTUSDApplicantChoicePK != null) || (this.nUSTUSDApplicantChoicePK != null && !this.nUSTUSDApplicantChoicePK.equals(other.nUSTUSDApplicantChoicePK))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "nust.systems.workingcrud.entities.NUSTUSDApplicantChoice[ nUSTUSDApplicantChoicePK=" + nUSTUSDApplicantChoicePK + " ]";
    }
    
}
