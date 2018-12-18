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
 * @author Rodney
 */
@Entity
@Table(name = "NUST_USD$Applicant Qualification")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "NUSTUSDApplicantQualification.findAll", query = "SELECT n FROM NUSTUSDApplicantQualification n"),
    @NamedQuery(name = "NUSTUSDApplicantQualification.findByApplicantNo", query = "SELECT n FROM NUSTUSDApplicantQualification n WHERE n.nUSTUSDApplicantQualificationPK.applicantNo = :applicantNo"),
    @NamedQuery(name = "NUSTUSDApplicantQualification.findByExamDate", query = "SELECT n FROM NUSTUSDApplicantQualification n WHERE n.examDate = :examDate"),
    @NamedQuery(name = "NUSTUSDApplicantQualification.findByExaminationBody", query = "SELECT n FROM NUSTUSDApplicantQualification n WHERE n.examinationBody = :examinationBody"),
    @NamedQuery(name = "NUSTUSDApplicantQualification.findByLevel", query = "SELECT n FROM NUSTUSDApplicantQualification n WHERE n.level = :level"),
    @NamedQuery(name = "NUSTUSDApplicantQualification.findBySubject", query = "SELECT n FROM NUSTUSDApplicantQualification n WHERE n.subject = :subject"),
    @NamedQuery(name = "NUSTUSDApplicantQualification.findByClassification", query = "SELECT n FROM NUSTUSDApplicantQualification n WHERE n.classification = :classification"),
    @NamedQuery(name = "NUSTUSDApplicantQualification.findByCandidateNo", query = "SELECT n FROM NUSTUSDApplicantQualification n WHERE n.candidateNo = :candidateNo"),
    @NamedQuery(name = "NUSTUSDApplicantQualification.findByExternalClassification", query = "SELECT n FROM NUSTUSDApplicantQualification n WHERE n.externalClassification = :externalClassification"),
    @NamedQuery(name = "NUSTUSDApplicantQualification.findByMismatch", query = "SELECT n FROM NUSTUSDApplicantQualification n WHERE n.mismatch = :mismatch"),
    @NamedQuery(name = "NUSTUSDApplicantQualification.findByProgrammeDescription", query = "SELECT n FROM NUSTUSDApplicantQualification n WHERE n.programmeDescription = :programmeDescription"),
    @NamedQuery(name = "NUSTUSDApplicantQualification.findBySubjectPoints", query = "SELECT n FROM NUSTUSDApplicantQualification n WHERE n.subjectPoints = :subjectPoints"),
    @NamedQuery(name = "NUSTUSDApplicantQualification.findByPointSum", query = "SELECT n FROM NUSTUSDApplicantQualification n WHERE n.pointSum = :pointSum"),
    @NamedQuery(name = "NUSTUSDApplicantQualification.findByMarkk", query = "SELECT n FROM NUSTUSDApplicantQualification n WHERE n.markk = :markk"),
    @NamedQuery(name = "NUSTUSDApplicantQualification.findByCode", query = "SELECT n FROM NUSTUSDApplicantQualification n WHERE n.nUSTUSDApplicantQualificationPK.code = :code")})
public class NUSTUSDApplicantQualification implements Serializable {

    private static final long serialVersionUID = 1L;
    @EmbeddedId
    protected NUSTUSDApplicantQualificationPK nUSTUSDApplicantQualificationPK;
    @Basic(optional = false)
    @NotNull
    @Column(name = "[Exam Date]")
    @Temporal(TemporalType.TIMESTAMP)
    private  java.util.Date examDate;
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 10)
    @Column(name = "[Examination Body]")
    private String examinationBody;
    @Basic(optional = false)
    @NotNull
    @Column(name = "[Level]")
    private int level;
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 10)
    @Column(name = "[Subject]")
    private String subject;
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 5)
    @Column(name = "[Classification]")
    private String classification;
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 20)
    @Column(name = "[Candidate No_]")
    private String candidateNo;
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 5)
    @Column(name = "[External Classification]")
    private String externalClassification;
    @Basic(optional = false)
    @NotNull
    @Column(name = "[Mismatch]")
    private short mismatch;
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 30)
    @Column(name = "[Programme Description]")
    private String programmeDescription;
    @Basic(optional = false)
    @NotNull
    @Column(name = "[Subject Points]")
    private int subjectPoints;
    // @Max(value=?)  @Min(value=?)//if you know range of your decimal fields consider using these annotations to enforce field validation
    @Basic(optional = false)
    @NotNull
    @Column(name = "[PointSum]")
    private BigDecimal pointSum;
    @Basic(optional = false)
    @NotNull
    @Column(name = "[Markk]")
    private short markk;

    public NUSTUSDApplicantQualification() {
    }

    public NUSTUSDApplicantQualification(NUSTUSDApplicantQualificationPK nUSTUSDApplicantQualificationPK) {
        this.nUSTUSDApplicantQualificationPK = nUSTUSDApplicantQualificationPK;
    }

    public NUSTUSDApplicantQualification(NUSTUSDApplicantQualificationPK nUSTUSDApplicantQualificationPK, Date examDate, String examinationBody, int level, String subject, String classification, String candidateNo, String externalClassification, short mismatch, String programmeDescription, int subjectPoints, BigDecimal pointSum, short markk) {
        this.nUSTUSDApplicantQualificationPK = nUSTUSDApplicantQualificationPK;
        this.examDate = examDate;
        this.examinationBody = examinationBody;
        this.level = level;
        this.subject = subject;
        this.classification = classification;
        this.candidateNo = candidateNo;
        this.externalClassification = externalClassification;
        this.mismatch = mismatch;
        this.programmeDescription = programmeDescription;
        this.subjectPoints = subjectPoints;
        this.pointSum = pointSum;
        this.markk = markk;
    }

    public NUSTUSDApplicantQualification(String applicantNo, int code) {
        this.nUSTUSDApplicantQualificationPK = new NUSTUSDApplicantQualificationPK(applicantNo, code);
    }

    public NUSTUSDApplicantQualificationPK getNUSTUSDApplicantQualificationPK() {
        return nUSTUSDApplicantQualificationPK;
    }

    public void setNUSTUSDApplicantQualificationPK(NUSTUSDApplicantQualificationPK nUSTUSDApplicantQualificationPK) {
        this.nUSTUSDApplicantQualificationPK = nUSTUSDApplicantQualificationPK;
    }

  

  

    public Date getExamDate() {
        return examDate;
    }

    public void setExamDate(Date examDate) {
        this.examDate = examDate;
    }

    public String getExaminationBody() {
        return examinationBody;
    }

    public void setExaminationBody(String examinationBody) {
        this.examinationBody = examinationBody;
    }

    public int getLevel() {
        return level;
    }

    public void setLevel(int level) {
        this.level = level;
    }

    public String getSubject() {
        return subject;
    }

    public void setSubject(String subject) {
        this.subject = subject;
    }

    public String getClassification() {
        return classification;
    }

    public void setClassification(String classification) {
        this.classification = classification;
    }

    public String getCandidateNo() {
        return candidateNo;
    }

    public void setCandidateNo(String candidateNo) {
        this.candidateNo = candidateNo;
    }

    public String getExternalClassification() {
        return externalClassification;
    }

    public void setExternalClassification(String externalClassification) {
        this.externalClassification = externalClassification;
    }

    public short getMismatch() {
        return mismatch;
    }

    public void setMismatch(short mismatch) {
        this.mismatch = mismatch;
    }

    public String getProgrammeDescription() {
        return programmeDescription;
    }

    public void setProgrammeDescription(String programmeDescription) {
        this.programmeDescription = programmeDescription;
    }

    public int getSubjectPoints() {
        return subjectPoints;
    }

    public void setSubjectPoints(int subjectPoints) {
        this.subjectPoints = subjectPoints;
    }

    public BigDecimal getPointSum() {
        return pointSum;
    }

    public void setPointSum(BigDecimal pointSum) {
        this.pointSum = pointSum;
    }

    public short getMarkk() {
        return markk;
    }

    public void setMarkk(short markk) {
        this.markk = markk;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (nUSTUSDApplicantQualificationPK != null ? nUSTUSDApplicantQualificationPK.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof NUSTUSDApplicantQualification)) {
            return false;
        }
        NUSTUSDApplicantQualification other = (NUSTUSDApplicantQualification) object;
        if ((this.nUSTUSDApplicantQualificationPK == null && other.nUSTUSDApplicantQualificationPK != null) || (this.nUSTUSDApplicantQualificationPK != null && !this.nUSTUSDApplicantQualificationPK.equals(other.nUSTUSDApplicantQualificationPK))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "nust.systems.workingcrud.entities.NUSTUSDApplicantQualification[ nUSTUSDApplicantQualificationPK=" + nUSTUSDApplicantQualificationPK + " ]";
    }
    
}
