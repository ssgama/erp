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
 * @author tawanda
 */
@Entity
@Table(name = "NUST_USD$Applicant Selection Aid Journ_")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "NUSTUSDApplicantSelectionAidJourn.findAll", query = "SELECT n FROM NUSTUSDApplicantSelectionAidJourn n")
    , @NamedQuery(name = "NUSTUSDApplicantSelectionAidJourn.findByNo", query = "SELECT n FROM NUSTUSDApplicantSelectionAidJourn n WHERE n.nUSTUSDApplicantSelectionAidJournPK.no = :no")
    , @NamedQuery(name = "NUSTUSDApplicantSelectionAidJourn.findByProgramme", query = "SELECT n FROM NUSTUSDApplicantSelectionAidJourn n WHERE n.nUSTUSDApplicantSelectionAidJournPK.programme = :programme")
    , @NamedQuery(name = "NUSTUSDApplicantSelectionAidJourn.findByBatchName", query = "SELECT n FROM NUSTUSDApplicantSelectionAidJourn n WHERE n.batchName = :batchName")
    , @NamedQuery(name = "NUSTUSDApplicantSelectionAidJourn.findByLineNo", query = "SELECT n FROM NUSTUSDApplicantSelectionAidJourn n WHERE n.lineNo = :lineNo")
    , @NamedQuery(name = "NUSTUSDApplicantSelectionAidJourn.findByBatchType", query = "SELECT n FROM NUSTUSDApplicantSelectionAidJourn n WHERE n.batchType = :batchType")
    , @NamedQuery(name = "NUSTUSDApplicantSelectionAidJourn.findByEntryType", query = "SELECT n FROM NUSTUSDApplicantSelectionAidJourn n WHERE n.entryType = :entryType")
    , @NamedQuery(name = "NUSTUSDApplicantSelectionAidJourn.findBySex", query = "SELECT n FROM NUSTUSDApplicantSelectionAidJourn n WHERE n.sex = :sex")
    , @NamedQuery(name = "NUSTUSDApplicantSelectionAidJourn.findByType", query = "SELECT n FROM NUSTUSDApplicantSelectionAidJourn n WHERE n.type = :type")
    , @NamedQuery(name = "NUSTUSDApplicantSelectionAidJourn.findByEn", query = "SELECT n FROM NUSTUSDApplicantSelectionAidJourn n WHERE n.en = :en")
    , @NamedQuery(name = "NUSTUSDApplicantSelectionAidJourn.findByMt", query = "SELECT n FROM NUSTUSDApplicantSelectionAidJourn n WHERE n.mt = :mt")
    , @NamedQuery(name = "NUSTUSDApplicantSelectionAidJourn.findByBest3Points", query = "SELECT n FROM NUSTUSDApplicantSelectionAidJourn n WHERE n.best3Points = :best3Points")
    , @NamedQuery(name = "NUSTUSDApplicantSelectionAidJourn.findByAlevel1", query = "SELECT n FROM NUSTUSDApplicantSelectionAidJourn n WHERE n.alevel1 = :alevel1")
    , @NamedQuery(name = "NUSTUSDApplicantSelectionAidJourn.findByAlevel2", query = "SELECT n FROM NUSTUSDApplicantSelectionAidJourn n WHERE n.alevel2 = :alevel2")
    , @NamedQuery(name = "NUSTUSDApplicantSelectionAidJourn.findByAlevel3", query = "SELECT n FROM NUSTUSDApplicantSelectionAidJourn n WHERE n.alevel3 = :alevel3")
    , @NamedQuery(name = "NUSTUSDApplicantSelectionAidJourn.findByAlevel4", query = "SELECT n FROM NUSTUSDApplicantSelectionAidJourn n WHERE n.alevel4 = :alevel4")
    , @NamedQuery(name = "NUSTUSDApplicantSelectionAidJourn.findByAlevel5", query = "SELECT n FROM NUSTUSDApplicantSelectionAidJourn n WHERE n.alevel5 = :alevel5")
    , @NamedQuery(name = "NUSTUSDApplicantSelectionAidJourn.findByAlevel6", query = "SELECT n FROM NUSTUSDApplicantSelectionAidJourn n WHERE n.alevel6 = :alevel6")
    , @NamedQuery(name = "NUSTUSDApplicantSelectionAidJourn.findByAlevel7", query = "SELECT n FROM NUSTUSDApplicantSelectionAidJourn n WHERE n.alevel7 = :alevel7")
    , @NamedQuery(name = "NUSTUSDApplicantSelectionAidJourn.findByAlevel8", query = "SELECT n FROM NUSTUSDApplicantSelectionAidJourn n WHERE n.alevel8 = :alevel8")
    , @NamedQuery(name = "NUSTUSDApplicantSelectionAidJourn.findBySurname", query = "SELECT n FROM NUSTUSDApplicantSelectionAidJourn n WHERE n.surname = :surname")
    , @NamedQuery(name = "NUSTUSDApplicantSelectionAidJourn.findByForenames", query = "SELECT n FROM NUSTUSDApplicantSelectionAidJourn n WHERE n.forenames = :forenames")
    , @NamedQuery(name = "NUSTUSDApplicantSelectionAidJourn.findByChoiceNumber", query = "SELECT n FROM NUSTUSDApplicantSelectionAidJourn n WHERE n.choiceNumber = :choiceNumber")
    , @NamedQuery(name = "NUSTUSDApplicantSelectionAidJourn.findByStatus", query = "SELECT n FROM NUSTUSDApplicantSelectionAidJourn n WHERE n.status = :status")
    , @NamedQuery(name = "NUSTUSDApplicantSelectionAidJourn.findByAvailable", query = "SELECT n FROM NUSTUSDApplicantSelectionAidJourn n WHERE n.available = :available")
    , @NamedQuery(name = "NUSTUSDApplicantSelectionAidJourn.findByMandatorySubjectsCount", query = "SELECT n FROM NUSTUSDApplicantSelectionAidJourn n WHERE n.mandatorySubjectsCount = :mandatorySubjectsCount")
    , @NamedQuery(name = "NUSTUSDApplicantSelectionAidJourn.findByMandatorySubjectsPoints", query = "SELECT n FROM NUSTUSDApplicantSelectionAidJourn n WHERE n.mandatorySubjectsPoints = :mandatorySubjectsPoints")
    , @NamedQuery(name = "NUSTUSDApplicantSelectionAidJourn.findByDesiredSubjectsCount", query = "SELECT n FROM NUSTUSDApplicantSelectionAidJourn n WHERE n.desiredSubjectsCount = :desiredSubjectsCount")
    , @NamedQuery(name = "NUSTUSDApplicantSelectionAidJourn.findByDesiredSubjectsPoints", query = "SELECT n FROM NUSTUSDApplicantSelectionAidJourn n WHERE n.desiredSubjectsPoints = :desiredSubjectsPoints")
    , @NamedQuery(name = "NUSTUSDApplicantSelectionAidJourn.findByRound", query = "SELECT n FROM NUSTUSDApplicantSelectionAidJourn n WHERE n.round = :round")
    , @NamedQuery(name = "NUSTUSDApplicantSelectionAidJourn.findByALevelBasedSelection", query = "SELECT n FROM NUSTUSDApplicantSelectionAidJourn n WHERE n.aLevelBasedSelection = :aLevelBasedSelection")
    , @NamedQuery(name = "NUSTUSDApplicantSelectionAidJourn.findByOLevelBasedSelection", query = "SELECT n FROM NUSTUSDApplicantSelectionAidJourn n WHERE n.oLevelBasedSelection = :oLevelBasedSelection")
    , @NamedQuery(name = "NUSTUSDApplicantSelectionAidJourn.findByAandOLevelBasedSelection", query = "SELECT n FROM NUSTUSDApplicantSelectionAidJourn n WHERE n.aandOLevelBasedSelection = :aandOLevelBasedSelection")
    , @NamedQuery(name = "NUSTUSDApplicantSelectionAidJourn.findByRankingNo", query = "SELECT n FROM NUSTUSDApplicantSelectionAidJourn n WHERE n.rankingNo = :rankingNo")
    , @NamedQuery(name = "NUSTUSDApplicantSelectionAidJourn.findByENMTPoints", query = "SELECT n FROM NUSTUSDApplicantSelectionAidJourn n WHERE n.eNMTPoints = :eNMTPoints")
    , @NamedQuery(name = "NUSTUSDApplicantSelectionAidJourn.findByMixed", query = "SELECT n FROM NUSTUSDApplicantSelectionAidJourn n WHERE n.mixed = :mixed")
    , @NamedQuery(name = "NUSTUSDApplicantSelectionAidJourn.findByWeight", query = "SELECT n FROM NUSTUSDApplicantSelectionAidJourn n WHERE n.weight = :weight")
    , @NamedQuery(name = "NUSTUSDApplicantSelectionAidJourn.findByAddedAdvantage", query = "SELECT n FROM NUSTUSDApplicantSelectionAidJourn n WHERE n.addedAdvantage = :addedAdvantage")
    , @NamedQuery(name = "NUSTUSDApplicantSelectionAidJourn.findByAffirmativeweight", query = "SELECT n FROM NUSTUSDApplicantSelectionAidJourn n WHERE n.affirmativeweight = :affirmativeweight")
    , @NamedQuery(name = "NUSTUSDApplicantSelectionAidJourn.findByAffirmativeAdjustment", query = "SELECT n FROM NUSTUSDApplicantSelectionAidJourn n WHERE n.affirmativeAdjustment = :affirmativeAdjustment")
    , @NamedQuery(name = "NUSTUSDApplicantSelectionAidJourn.findByYear", query = "SELECT n FROM NUSTUSDApplicantSelectionAidJourn n WHERE n.year = :year")
    , @NamedQuery(name = "NUSTUSDApplicantSelectionAidJourn.findByXCommited", query = "SELECT n FROM NUSTUSDApplicantSelectionAidJourn n WHERE n.xCommited = :xCommited")
    , @NamedQuery(name = "NUSTUSDApplicantSelectionAidJourn.findByScore", query = "SELECT n FROM NUSTUSDApplicantSelectionAidJourn n WHERE n.score = :score")
    , @NamedQuery(name = "NUSTUSDApplicantSelectionAidJourn.findByPreferedProgramme", query = "SELECT n FROM NUSTUSDApplicantSelectionAidJourn n WHERE n.preferedProgramme = :preferedProgramme")
    , @NamedQuery(name = "NUSTUSDApplicantSelectionAidJourn.findByMandatoryNOTRequired", query = "SELECT n FROM NUSTUSDApplicantSelectionAidJourn n WHERE n.mandatoryNOTRequired = :mandatoryNOTRequired")
    , @NamedQuery(name = "NUSTUSDApplicantSelectionAidJourn.findByDesiredNOTRequired", query = "SELECT n FROM NUSTUSDApplicantSelectionAidJourn n WHERE n.desiredNOTRequired = :desiredNOTRequired")
    , @NamedQuery(name = "NUSTUSDApplicantSelectionAidJourn.findByDepartment", query = "SELECT n FROM NUSTUSDApplicantSelectionAidJourn n WHERE n.department = :department")
    , @NamedQuery(name = "NUSTUSDApplicantSelectionAidJourn.findByOption", query = "SELECT n FROM NUSTUSDApplicantSelectionAidJourn n WHERE n.option = :option")})
public class NUSTUSDApplicantSelectionAidJourn implements Serializable {

    private static final long serialVersionUID = 1L;
    @EmbeddedId
    protected NUSTUSDApplicantSelectionAidJournPK nUSTUSDApplicantSelectionAidJournPK;
    @Basic(optional = false)
    @NotNull
    @Lob
    @Column(name = "[timestamp]")
    private byte[] timestamp;
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 10)
    @Column(name = "[Batch Name]")
    private String batchName;
    @Basic(optional = false)
    @NotNull
    @Column(name = "[Line No_]")
    private int lineNo;
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 10)
    @Column(name = "[Batch Type]")
    private String batchType;
    @Basic(optional = false)
    @NotNull
    @Column(name = "[Entry Type]")
    private int entryType;
    @Basic(optional = false)
    @NotNull
    @Column(name = "[Sex]")
    private int sex;
    @Basic(optional = false)
    @NotNull
    @Column(name = "[Type]")
    private int type;
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 5)
    @Column(name = "[EN]")
    private String en;
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 5)
    @Column(name = "[MT]")
    private String mt;
    // @Max(value=?)  @Min(value=?)//if you know range of your decimal fields consider using these annotations to enforce field validation
    @Basic(optional = false)
    @NotNull
    @Column(name = "[Best3Points]")
    private BigDecimal best3Points;
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 10)
    @Column(name = "[Alevel1]")
    private String alevel1;
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 10)
    @Column(name = "[Alevel2]")
    private String alevel2;
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 10)
    @Column(name = "[Alevel3]")
    private String alevel3;
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 10)
    @Column(name = "[Alevel4]")
    private String alevel4;
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 10)
    @Column(name = "[Alevel5]")
    private String alevel5;
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 10)
    @Column(name = "[Alevel6]")
    private String alevel6;
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 10)
    @Column(name = "[Alevel7]")
    private String alevel7;
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 10)
    @Column(name = "[Alevel8]")
    private String alevel8;
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 30)
    @Column(name = "[Surname]")
    private String surname;
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 30)
    @Column(name = "[Forenames]")
    private String forenames;
    @Basic(optional = false)
    @NotNull
    @Column(name = "[Choice Number]")
    private int choiceNumber;
    @Basic(optional = false)
    @NotNull
    @Column(name = "[Status]")
    private int status;
    @Basic(optional = false)
    @NotNull
    @Column(name = "[Available]")
    private short available;
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
    @Column(name = "[Desired Subjects Count]")
    private int desiredSubjectsCount;
    @Basic(optional = false)
    @NotNull
    @Column(name = "[Desired Subjects Points]")
    private int desiredSubjectsPoints;
    @Basic(optional = false)
    @NotNull
    @Column(name = "[Round]")
    private int round;
    @Basic(optional = false)
    @NotNull
    @Column(name = "[A Level Based Selection]")
    private short aLevelBasedSelection;
    @Basic(optional = false)
    @NotNull
    @Column(name = "[O Level Based Selection]")
    private short oLevelBasedSelection;
    @Basic(optional = false)
    @NotNull
    @Column(name = "[A and O Level Based Selection]")
    private short aandOLevelBasedSelection;
    @Basic(optional = false)
    @NotNull
    @Column(name = "[Ranking  No_]")
    private int rankingNo;
    @Basic(optional = false)
    @NotNull
    @Column(name = "[ENMT Points]")
    private int eNMTPoints;
    @Basic(optional = false)
    @NotNull
    @Column(name = "[Mixed]")
    private short mixed;
    @Basic(optional = false)
    @NotNull
    @Column(name = "[Weight]")
    private int weight;
    @Basic(optional = false)
    @NotNull
    @Column(name = "[Added Advantage]")
    private int addedAdvantage;
    @Basic(optional = false)
    @NotNull
    @Column(name = "[Affirmative weight]")
    private int affirmativeweight;
    @Basic(optional = false)
    @NotNull
    @Column(name = "[Affirmative Adjustment]")
    private short affirmativeAdjustment;
    @Basic(optional = false)
    @NotNull
    @Column(name = "[Year]")
    private int year;
    @Basic(optional = false)
    @NotNull
    @Column(name = "[xCommited]")
    private short xCommited;
    @Basic(optional = false)
    @NotNull
    @Column(name = "[Score]")
    private BigDecimal score;
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 20)
    @Column(name = "[Prefered Programme]")
    private String preferedProgramme;
    @Basic(optional = false)
    @NotNull
    @Column(name = "[Mandatory NOT Required]")
    private short mandatoryNOTRequired;
    @Basic(optional = false)
    @NotNull
    @Column(name = "[Desired NOT Required]")
    private short desiredNOTRequired;
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 20)
    @Column(name = "[Department]")
    private String department;
    @Basic(optional = false)
    @NotNull
    @Column(name = "[Option]")
    private int option;

    public NUSTUSDApplicantSelectionAidJourn() {
    }

    public NUSTUSDApplicantSelectionAidJourn(NUSTUSDApplicantSelectionAidJournPK nUSTUSDApplicantSelectionAidJournPK) {
        this.nUSTUSDApplicantSelectionAidJournPK = nUSTUSDApplicantSelectionAidJournPK;
    }

    public NUSTUSDApplicantSelectionAidJourn(NUSTUSDApplicantSelectionAidJournPK nUSTUSDApplicantSelectionAidJournPK, byte[] timestamp, String batchName, int lineNo, String batchType, int entryType, int sex, int type, String en, String mt, BigDecimal best3Points, String alevel1, String alevel2, String alevel3, String alevel4, String alevel5, String alevel6, String alevel7, String alevel8, String surname, String forenames, int choiceNumber, int status, short available, int mandatorySubjectsCount, int mandatorySubjectsPoints, int desiredSubjectsCount, int desiredSubjectsPoints, int round, short aLevelBasedSelection, short oLevelBasedSelection, short aandOLevelBasedSelection, int rankingNo, int eNMTPoints, short mixed, int weight, int addedAdvantage, int affirmativeweight, short affirmativeAdjustment, int year, short xCommited, BigDecimal score, String preferedProgramme, short mandatoryNOTRequired, short desiredNOTRequired, String department, int option) {
        this.nUSTUSDApplicantSelectionAidJournPK = nUSTUSDApplicantSelectionAidJournPK;
        this.timestamp = timestamp;
        this.batchName = batchName;
        this.lineNo = lineNo;
        this.batchType = batchType;
        this.entryType = entryType;
        this.sex = sex;
        this.type = type;
        this.en = en;
        this.mt = mt;
        this.best3Points = best3Points;
        this.alevel1 = alevel1;
        this.alevel2 = alevel2;
        this.alevel3 = alevel3;
        this.alevel4 = alevel4;
        this.alevel5 = alevel5;
        this.alevel6 = alevel6;
        this.alevel7 = alevel7;
        this.alevel8 = alevel8;
        this.surname = surname;
        this.forenames = forenames;
        this.choiceNumber = choiceNumber;
        this.status = status;
        this.available = available;
        this.mandatorySubjectsCount = mandatorySubjectsCount;
        this.mandatorySubjectsPoints = mandatorySubjectsPoints;
        this.desiredSubjectsCount = desiredSubjectsCount;
        this.desiredSubjectsPoints = desiredSubjectsPoints;
        this.round = round;
        this.aLevelBasedSelection = aLevelBasedSelection;
        this.oLevelBasedSelection = oLevelBasedSelection;
        this.aandOLevelBasedSelection = aandOLevelBasedSelection;
        this.rankingNo = rankingNo;
        this.eNMTPoints = eNMTPoints;
        this.mixed = mixed;
        this.weight = weight;
        this.addedAdvantage = addedAdvantage;
        this.affirmativeweight = affirmativeweight;
        this.affirmativeAdjustment = affirmativeAdjustment;
        this.year = year;
        this.xCommited = xCommited;
        this.score = score;
        this.preferedProgramme = preferedProgramme;
        this.mandatoryNOTRequired = mandatoryNOTRequired;
        this.desiredNOTRequired = desiredNOTRequired;
        this.department = department;
        this.option = option;
    }

    public NUSTUSDApplicantSelectionAidJourn(String no, String programme) {
        this.nUSTUSDApplicantSelectionAidJournPK = new NUSTUSDApplicantSelectionAidJournPK(no, programme);
    }

    public NUSTUSDApplicantSelectionAidJournPK getNUSTUSDApplicantSelectionAidJournPK() {
        return nUSTUSDApplicantSelectionAidJournPK;
    }

    public void setNUSTUSDApplicantSelectionAidJournPK(NUSTUSDApplicantSelectionAidJournPK nUSTUSDApplicantSelectionAidJournPK) {
        this.nUSTUSDApplicantSelectionAidJournPK = nUSTUSDApplicantSelectionAidJournPK;
    }

    public byte[] getTimestamp() {
        return timestamp;
    }

    public void setTimestamp(byte[] timestamp) {
        this.timestamp = timestamp;
    }

    public String getBatchName() {
        return batchName;
    }

    public void setBatchName(String batchName) {
        this.batchName = batchName;
    }

    public int getLineNo() {
        return lineNo;
    }

    public void setLineNo(int lineNo) {
        this.lineNo = lineNo;
    }

    public String getBatchType() {
        return batchType;
    }

    public void setBatchType(String batchType) {
        this.batchType = batchType;
    }

    public int getEntryType() {
        return entryType;
    }

    public void setEntryType(int entryType) {
        this.entryType = entryType;
    }

    public int getSex() {
        return sex;
    }

    public void setSex(int sex) {
        this.sex = sex;
    }

    public int getType() {
        return type;
    }

    public void setType(int type) {
        this.type = type;
    }

    public String getEn() {
        return en;
    }

    public void setEn(String en) {
        this.en = en;
    }

    public String getMt() {
        return mt;
    }

    public void setMt(String mt) {
        this.mt = mt;
    }

    public BigDecimal getBest3Points() {
        return best3Points;
    }

    public void setBest3Points(BigDecimal best3Points) {
        this.best3Points = best3Points;
    }

    public String getAlevel1() {
        return alevel1;
    }

    public void setAlevel1(String alevel1) {
        this.alevel1 = alevel1;
    }

    public String getAlevel2() {
        return alevel2;
    }

    public void setAlevel2(String alevel2) {
        this.alevel2 = alevel2;
    }

    public String getAlevel3() {
        return alevel3;
    }

    public void setAlevel3(String alevel3) {
        this.alevel3 = alevel3;
    }

    public String getAlevel4() {
        return alevel4;
    }

    public void setAlevel4(String alevel4) {
        this.alevel4 = alevel4;
    }

    public String getAlevel5() {
        return alevel5;
    }

    public void setAlevel5(String alevel5) {
        this.alevel5 = alevel5;
    }

    public String getAlevel6() {
        return alevel6;
    }

    public void setAlevel6(String alevel6) {
        this.alevel6 = alevel6;
    }

    public String getAlevel7() {
        return alevel7;
    }

    public void setAlevel7(String alevel7) {
        this.alevel7 = alevel7;
    }

    public String getAlevel8() {
        return alevel8;
    }

    public void setAlevel8(String alevel8) {
        this.alevel8 = alevel8;
    }

    public String getSurname() {
        return surname;
    }

    public void setSurname(String surname) {
        this.surname = surname;
    }

    public String getForenames() {
        return forenames;
    }

    public void setForenames(String forenames) {
        this.forenames = forenames;
    }

    public int getChoiceNumber() {
        return choiceNumber;
    }

    public void setChoiceNumber(int choiceNumber) {
        this.choiceNumber = choiceNumber;
    }

    public int getStatus() {
        return status;
    }

    public void setStatus(int status) {
        this.status = status;
    }

    public short getAvailable() {
        return available;
    }

    public void setAvailable(short available) {
        this.available = available;
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

    public int getRound() {
        return round;
    }

    public void setRound(int round) {
        this.round = round;
    }

    public short getALevelBasedSelection() {
        return aLevelBasedSelection;
    }

    public void setALevelBasedSelection(short aLevelBasedSelection) {
        this.aLevelBasedSelection = aLevelBasedSelection;
    }

    public short getOLevelBasedSelection() {
        return oLevelBasedSelection;
    }

    public void setOLevelBasedSelection(short oLevelBasedSelection) {
        this.oLevelBasedSelection = oLevelBasedSelection;
    }

    public short getAandOLevelBasedSelection() {
        return aandOLevelBasedSelection;
    }

    public void setAandOLevelBasedSelection(short aandOLevelBasedSelection) {
        this.aandOLevelBasedSelection = aandOLevelBasedSelection;
    }

    public int getRankingNo() {
        return rankingNo;
    }

    public void setRankingNo(int rankingNo) {
        this.rankingNo = rankingNo;
    }

    public int getENMTPoints() {
        return eNMTPoints;
    }

    public void setENMTPoints(int eNMTPoints) {
        this.eNMTPoints = eNMTPoints;
    }

    public short getMixed() {
        return mixed;
    }

    public void setMixed(short mixed) {
        this.mixed = mixed;
    }

    public int getWeight() {
        return weight;
    }

    public void setWeight(int weight) {
        this.weight = weight;
    }

    public int getAddedAdvantage() {
        return addedAdvantage;
    }

    public void setAddedAdvantage(int addedAdvantage) {
        this.addedAdvantage = addedAdvantage;
    }

    public int getAffirmativeweight() {
        return affirmativeweight;
    }

    public void setAffirmativeweight(int affirmativeweight) {
        this.affirmativeweight = affirmativeweight;
    }

    public short getAffirmativeAdjustment() {
        return affirmativeAdjustment;
    }

    public void setAffirmativeAdjustment(short affirmativeAdjustment) {
        this.affirmativeAdjustment = affirmativeAdjustment;
    }

    public int getYear() {
        return year;
    }

    public void setYear(int year) {
        this.year = year;
    }

    public short getXCommited() {
        return xCommited;
    }

    public void setXCommited(short xCommited) {
        this.xCommited = xCommited;
    }

    public BigDecimal getScore() {
        return score;
    }

    public void setScore(BigDecimal score) {
        this.score = score;
    }

    public String getPreferedProgramme() {
        return preferedProgramme;
    }

    public void setPreferedProgramme(String preferedProgramme) {
        this.preferedProgramme = preferedProgramme;
    }

    public short getMandatoryNOTRequired() {
        return mandatoryNOTRequired;
    }

    public void setMandatoryNOTRequired(short mandatoryNOTRequired) {
        this.mandatoryNOTRequired = mandatoryNOTRequired;
    }

    public short getDesiredNOTRequired() {
        return desiredNOTRequired;
    }

    public void setDesiredNOTRequired(short desiredNOTRequired) {
        this.desiredNOTRequired = desiredNOTRequired;
    }

    public String getDepartment() {
        return department;
    }

    public void setDepartment(String department) {
        this.department = department;
    }

    public int getOption() {
        return option;
    }

    public void setOption(int option) {
        this.option = option;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (nUSTUSDApplicantSelectionAidJournPK != null ? nUSTUSDApplicantSelectionAidJournPK.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof NUSTUSDApplicantSelectionAidJourn)) {
            return false;
        }
        NUSTUSDApplicantSelectionAidJourn other = (NUSTUSDApplicantSelectionAidJourn) object;
        if ((this.nUSTUSDApplicantSelectionAidJournPK == null && other.nUSTUSDApplicantSelectionAidJournPK != null) || (this.nUSTUSDApplicantSelectionAidJournPK != null && !this.nUSTUSDApplicantSelectionAidJournPK.equals(other.nUSTUSDApplicantSelectionAidJournPK))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "nust.systems.workingcrud.entities.NUSTUSDApplicantSelectionAidJourn[ nUSTUSDApplicantSelectionAidJournPK=" + nUSTUSDApplicantSelectionAidJournPK + " ]";
    }
    
}
