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
 * @author Rodney
 */
@Entity
@Table(name = "NUST_USD$Applicant Education")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "NUSTUSDApplicantEducation.findAll", query = "SELECT n FROM NUSTUSDApplicantEducation n"),
    @NamedQuery(name = "NUSTUSDApplicantEducation.findByApplicantNo", query = "SELECT n FROM NUSTUSDApplicantEducation n WHERE n.nUSTUSDApplicantEducationPK.applicantNo = :applicantNo"),
    //@NamedQuery(name = "NUSTUSDApplicantEducation.findByLineNo", query = "SELECT n FROM NUSTUSDApplicantEducation n WHERE n.nUSTUSDApplicantEducationPK.lineNo = :lineNo"),
    @NamedQuery(name = "NUSTUSDApplicantEducation.findByName", query = "SELECT n FROM NUSTUSDApplicantEducation n WHERE n.nUSTUSDApplicantEducationPK.name = :name"),
    @NamedQuery(name = "NUSTUSDApplicantEducation.findByStartYear", query = "SELECT n FROM NUSTUSDApplicantEducation n WHERE n.startYear = :startYear"),
    @NamedQuery(name = "NUSTUSDApplicantEducation.findByEndYear", query = "SELECT n FROM NUSTUSDApplicantEducation n WHERE n.endYear = :endYear"),
    @NamedQuery(name = "NUSTUSDApplicantEducation.findByProgrammeofStudy", query = "SELECT n FROM NUSTUSDApplicantEducation n WHERE n.programmeofStudy = :programmeofStudy"),
    @NamedQuery(name = "NUSTUSDApplicantEducation.findBySubjectsandGrades", query = "SELECT n FROM NUSTUSDApplicantEducation n WHERE n.subjectsandGrades = :subjectsandGrades"),
    @NamedQuery(name = "NUSTUSDApplicantEducation.findBySubjectsandGrades2", query = "SELECT n FROM NUSTUSDApplicantEducation n WHERE n.subjectsandGrades2 = :subjectsandGrades2"),
    @NamedQuery(name = "NUSTUSDApplicantEducation.findByQualificationCompleted", query = "SELECT n FROM NUSTUSDApplicantEducation n WHERE n.qualificationCompleted = :qualificationCompleted"),
    @NamedQuery(name = "NUSTUSDApplicantEducation.findByDateofAward", query = "SELECT n FROM NUSTUSDApplicantEducation n WHERE n.dateofAward = :dateofAward"),
    @NamedQuery(name = "NUSTUSDApplicantEducation.findByOverallClassification", query = "SELECT n FROM NUSTUSDApplicantEducation n WHERE n.overallClassification = :overallClassification"),
    @NamedQuery(name = "NUSTUSDApplicantEducation.findByEnoughData", query = "SELECT n FROM NUSTUSDApplicantEducation n WHERE n.enoughData = :enoughData")})
public class NUSTUSDApplicantEducation implements Serializable {

    private static final long serialVersionUID = 1L;
    @EmbeddedId
    protected NUSTUSDApplicantEducationPK nUSTUSDApplicantEducationPK;
    @Basic(optional = false)
    @NotNull
    @Column(name = "[Start Year]")
    private int startYear;
    @Basic(optional = false)
    @NotNull
    @Column(name = "[End Year]")
    private int endYear;
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 60)
    @Column(name = "[Programme of Study]")
    private String programmeofStudy;
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 50)
    @Column(name = "[Subjects and Grades]")
    private String subjectsandGrades;
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 50)
    @Column(name = "[Subjects and Grades 2]")
    private String subjectsandGrades2;
    @Basic(optional = false)
    @NotNull
    @Column(name = "[Qualification Completed]")
    private short qualificationCompleted;
    @Basic(optional = false)
    @NotNull
    @Column(name = "[Date of Award]")
    @Temporal(TemporalType.TIMESTAMP)
    private java.util.Date dateofAward;
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 10)
    @Column(name = "[Overall Classification]")
    private String overallClassification;
    @Basic(optional = false)
    @NotNull
    @Column(name = "[Enough Data]")
    private short enoughData;

    public NUSTUSDApplicantEducation() {
    }

    public NUSTUSDApplicantEducation(NUSTUSDApplicantEducationPK nUSTUSDApplicantEducationPK) {
        this.nUSTUSDApplicantEducationPK = nUSTUSDApplicantEducationPK;
    }

    public NUSTUSDApplicantEducation(NUSTUSDApplicantEducationPK nUSTUSDApplicantEducationPK, int startYear, int endYear, String programmeofStudy, String subjectsandGrades, String subjectsandGrades2, short qualificationCompleted, Date dateofAward, String overallClassification, short enoughData) {
        this.nUSTUSDApplicantEducationPK = nUSTUSDApplicantEducationPK;
        this.startYear = startYear;
        this.endYear = endYear;
        this.programmeofStudy = programmeofStudy;
        this.subjectsandGrades = subjectsandGrades;
        this.subjectsandGrades2 = subjectsandGrades2;
        this.qualificationCompleted = qualificationCompleted;
        this.dateofAward = dateofAward;
        this.overallClassification = overallClassification;
        this.enoughData = enoughData;
    }

    public NUSTUSDApplicantEducation(String applicantNo, String name) {
        this.nUSTUSDApplicantEducationPK = new NUSTUSDApplicantEducationPK(applicantNo, name);
    }

    public NUSTUSDApplicantEducationPK getNUSTUSDApplicantEducationPK() {
        return nUSTUSDApplicantEducationPK;
    }

    public void setNUSTUSDApplicantEducationPK(NUSTUSDApplicantEducationPK nUSTUSDApplicantEducationPK) {
        this.nUSTUSDApplicantEducationPK = nUSTUSDApplicantEducationPK;
    }

    public int getStartYear() {
        return startYear;
    }

    public void setStartYear(int startYear) {
        this.startYear = startYear;
    }

    public int getEndYear() {
        return endYear;
    }

    public void setEndYear(int endYear) {
        this.endYear = endYear;
    }

    public String getProgrammeofStudy() {
        return programmeofStudy;
    }

    public void setProgrammeofStudy(String programmeofStudy) {
        this.programmeofStudy = programmeofStudy;
    }

    public String getSubjectsandGrades() {
        return subjectsandGrades;
    }

    public void setSubjectsandGrades(String subjectsandGrades) {
        this.subjectsandGrades = subjectsandGrades;
    }

    public String getSubjectsandGrades2() {
        return subjectsandGrades2;
    }

    public void setSubjectsandGrades2(String subjectsandGrades2) {
        this.subjectsandGrades2 = subjectsandGrades2;
    }

    public short getQualificationCompleted() {
        return qualificationCompleted;
    }

    public void setQualificationCompleted(short qualificationCompleted) {
        this.qualificationCompleted = qualificationCompleted;
    }

    public Date getDateofAward() {
        return dateofAward;
    }

    public void setDateofAward(Date dateofAward) {
        this.dateofAward = dateofAward;
    }

    public String getOverallClassification() {
        return overallClassification;
    }

    public void setOverallClassification(String overallClassification) {
        this.overallClassification = overallClassification;
    }

    public short getEnoughData() {
        return enoughData;
    }

    public void setEnoughData(short enoughData) {
        this.enoughData = enoughData;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (nUSTUSDApplicantEducationPK != null ? nUSTUSDApplicantEducationPK.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof NUSTUSDApplicantEducation)) {
            return false;
        }
        NUSTUSDApplicantEducation other = (NUSTUSDApplicantEducation) object;
        if ((this.nUSTUSDApplicantEducationPK == null && other.nUSTUSDApplicantEducationPK != null) || (this.nUSTUSDApplicantEducationPK != null && !this.nUSTUSDApplicantEducationPK.equals(other.nUSTUSDApplicantEducationPK))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "nust.systems.workingcrud.entities.NUSTUSDApplicantEducation[ nUSTUSDApplicantEducationPK=" + nUSTUSDApplicantEducationPK + " ]";
    }
    
}
