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
@Table(name = "NUST_USD$Applicant")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "NUSTUSDApplicant.findAll", query = "SELECT n FROM NUSTUSDApplicant n"),
    @NamedQuery(name = "NUSTUSDApplicant.findByNo", query = "SELECT n FROM NUSTUSDApplicant n WHERE n.nUSTUSDApplicantPK.no = :no"),
    @NamedQuery(name = "NUSTUSDApplicant.findByCustomerNo", query = "SELECT n FROM NUSTUSDApplicant n WHERE n.nUSTUSDApplicantPK.customerNo = :customerNo"),
    @NamedQuery(name = "NUSTUSDApplicant.findBySurname", query = "SELECT n FROM NUSTUSDApplicant n WHERE n.surname = :surname"),
    @NamedQuery(name = "NUSTUSDApplicant.findBySearchName", query = "SELECT n FROM NUSTUSDApplicant n WHERE n.searchName = :searchName"),
    @NamedQuery(name = "NUSTUSDApplicant.findByForenames", query = "SELECT n FROM NUSTUSDApplicant n WHERE n.forenames = :forenames"),
    @NamedQuery(name = "NUSTUSDApplicant.findByPermanentAddress", query = "SELECT n FROM NUSTUSDApplicant n WHERE n.permanentAddress = :permanentAddress"),
    @NamedQuery(name = "NUSTUSDApplicant.findByPermanentAddress2", query = "SELECT n FROM NUSTUSDApplicant n WHERE n.permanentAddress2 = :permanentAddress2"),
    @NamedQuery(name = "NUSTUSDApplicant.findByCity", query = "SELECT n FROM NUSTUSDApplicant n WHERE n.city = :city"),
    @NamedQuery(name = "NUSTUSDApplicant.findByPhoneH", query = "SELECT n FROM NUSTUSDApplicant n WHERE n.phoneH = :phoneH"),
    @NamedQuery(name = "NUSTUSDApplicant.findByEMail", query = "SELECT n FROM NUSTUSDApplicant n WHERE n.eMail = :eMail"),
    @NamedQuery(name = "NUSTUSDApplicant.findByYear", query = "SELECT n FROM NUSTUSDApplicant n WHERE n.year = :year"),
    @NamedQuery(name = "NUSTUSDApplicant.findByEntryType", query = "SELECT n FROM NUSTUSDApplicant n WHERE n.entryType = :entryType"),
    @NamedQuery(name = "NUSTUSDApplicant.findByTitle", query = "SELECT n FROM NUSTUSDApplicant n WHERE n.title = :title"),
    @NamedQuery(name = "NUSTUSDApplicant.findByPreviousSurname", query = "SELECT n FROM NUSTUSDApplicant n WHERE n.previousSurname = :previousSurname"),
    @NamedQuery(name = "NUSTUSDApplicant.findByMaritalStatus", query = "SELECT n FROM NUSTUSDApplicant n WHERE n.maritalStatus = :maritalStatus"),
    @NamedQuery(name = "NUSTUSDApplicant.findBySex", query = "SELECT n FROM NUSTUSDApplicant n WHERE n.sex = :sex"),
    @NamedQuery(name = "NUSTUSDApplicant.findByNationality", query = "SELECT n FROM NUSTUSDApplicant n WHERE n.nationality = :nationality"),
    @NamedQuery(name = "NUSTUSDApplicant.findByCitizenship", query = "SELECT n FROM NUSTUSDApplicant n WHERE n.citizenship = :citizenship"),
    @NamedQuery(name = "NUSTUSDApplicant.findByPermanentResident", query = "SELECT n FROM NUSTUSDApplicant n WHERE n.permanentResident = :permanentResident"),
    @NamedQuery(name = "NUSTUSDApplicant.findByResidencePermitDescription", query = "SELECT n FROM NUSTUSDApplicant n WHERE n.residencePermitDescription = :residencePermitDescription"),
    @NamedQuery(name = "NUSTUSDApplicant.findByPeriodofResidence", query = "SELECT n FROM NUSTUSDApplicant n WHERE n.periodofResidence = :periodofResidence"),
    @NamedQuery(name = "NUSTUSDApplicant.findByDateofBirth", query = "SELECT n FROM NUSTUSDApplicant n WHERE n.dateofBirth = :dateofBirth"),
    @NamedQuery(name = "NUSTUSDApplicant.findByPlaceofBirth", query = "SELECT n FROM NUSTUSDApplicant n WHERE n.placeofBirth = :placeofBirth"),
    @NamedQuery(name = "NUSTUSDApplicant.findByBirthCertificateNo", query = "SELECT n FROM NUSTUSDApplicant n WHERE n.birthCertificateNo = :birthCertificateNo"),
    @NamedQuery(name = "NUSTUSDApplicant.findByNationalIDNo", query = "SELECT n FROM NUSTUSDApplicant n WHERE n.nationalIDNo = :nationalIDNo"),
    @NamedQuery(name = "NUSTUSDApplicant.findByPhysicalDisability", query = "SELECT n FROM NUSTUSDApplicant n WHERE n.physicalDisability = :physicalDisability"),
    @NamedQuery(name = "NUSTUSDApplicant.findByPhysicalDisabilityDetail", query = "SELECT n FROM NUSTUSDApplicant n WHERE n.physicalDisabilityDetail = :physicalDisabilityDetail"),
    @NamedQuery(name = "NUSTUSDApplicant.findByDisabilityCode", query = "SELECT n FROM NUSTUSDApplicant n WHERE n.disabilityCode = :disabilityCode"),
    @NamedQuery(name = "NUSTUSDApplicant.findByPermanentAddress3", query = "SELECT n FROM NUSTUSDApplicant n WHERE n.permanentAddress3 = :permanentAddress3"),
    @NamedQuery(name = "NUSTUSDApplicant.findByContactAddress", query = "SELECT n FROM NUSTUSDApplicant n WHERE n.contactAddress = :contactAddress"),
    @NamedQuery(name = "NUSTUSDApplicant.findByContactAddress1", query = "SELECT n FROM NUSTUSDApplicant n WHERE n.contactAddress1 = :contactAddress1"),
    @NamedQuery(name = "NUSTUSDApplicant.findByContactAddress2", query = "SELECT n FROM NUSTUSDApplicant n WHERE n.contactAddress2 = :contactAddress2"),
    @NamedQuery(name = "NUSTUSDApplicant.findByPhoneW", query = "SELECT n FROM NUSTUSDApplicant n WHERE n.phoneW = :phoneW"),
    @NamedQuery(name = "NUSTUSDApplicant.findByProposedFieldofResearch", query = "SELECT n FROM NUSTUSDApplicant n WHERE n.proposedFieldofResearch = :proposedFieldofResearch"),
    @NamedQuery(name = "NUSTUSDApplicant.findByLastSchoolAttended", query = "SELECT n FROM NUSTUSDApplicant n WHERE n.lastSchoolAttended = :lastSchoolAttended"),
    @NamedQuery(name = "NUSTUSDApplicant.findByLastSchoolAddress", query = "SELECT n FROM NUSTUSDApplicant n WHERE n.lastSchoolAddress = :lastSchoolAddress"),
    @NamedQuery(name = "NUSTUSDApplicant.findByLastSchoolAddress1", query = "SELECT n FROM NUSTUSDApplicant n WHERE n.lastSchoolAddress1 = :lastSchoolAddress1"),
    @NamedQuery(name = "NUSTUSDApplicant.findByLastSchoolStartYear", query = "SELECT n FROM NUSTUSDApplicant n WHERE n.lastSchoolStartYear = :lastSchoolStartYear"),
    @NamedQuery(name = "NUSTUSDApplicant.findByLastSchoolEndYear", query = "SELECT n FROM NUSTUSDApplicant n WHERE n.lastSchoolEndYear = :lastSchoolEndYear"),
    @NamedQuery(name = "NUSTUSDApplicant.findByFormerStudent", query = "SELECT n FROM NUSTUSDApplicant n WHERE n.formerStudent = :formerStudent"),
    @NamedQuery(name = "NUSTUSDApplicant.findByStudentRegistrationNo", query = "SELECT n FROM NUSTUSDApplicant n WHERE n.studentRegistrationNo = :studentRegistrationNo"),
    @NamedQuery(name = "NUSTUSDApplicant.findByWorkExperience", query = "SELECT n FROM NUSTUSDApplicant n WHERE n.workExperience = :workExperience"),
    @NamedQuery(name = "NUSTUSDApplicant.findBySponsorType", query = "SELECT n FROM NUSTUSDApplicant n WHERE n.sponsorType = :sponsorType"),
    @NamedQuery(name = "NUSTUSDApplicant.findBySponsorName", query = "SELECT n FROM NUSTUSDApplicant n WHERE n.sponsorName = :sponsorName"),
    @NamedQuery(name = "NUSTUSDApplicant.findByStaffDependant", query = "SELECT n FROM NUSTUSDApplicant n WHERE n.staffDependant = :staffDependant"),
    @NamedQuery(name = "NUSTUSDApplicant.findByStaffMember", query = "SELECT n FROM NUSTUSDApplicant n WHERE n.staffMember = :staffMember"),
    @NamedQuery(name = "NUSTUSDApplicant.findByApplicationDate", query = "SELECT n FROM NUSTUSDApplicant n WHERE n.applicationDate = :applicationDate"),
    @NamedQuery(name = "NUSTUSDApplicant.findByNationalIDVerified", query = "SELECT n FROM NUSTUSDApplicant n WHERE n.nationalIDVerified = :nationalIDVerified"),
    @NamedQuery(name = "NUSTUSDApplicant.findByBirthCertificateVerified", query = "SELECT n FROM NUSTUSDApplicant n WHERE n.birthCertificateVerified = :birthCertificateVerified"),
    @NamedQuery(name = "NUSTUSDApplicant.findByMarriageCertVerified", query = "SELECT n FROM NUSTUSDApplicant n WHERE n.marriageCertVerified = :marriageCertVerified"),
    @NamedQuery(name = "NUSTUSDApplicant.findByOLevelCertVerified", query = "SELECT n FROM NUSTUSDApplicant n WHERE n.oLevelCertVerified = :oLevelCertVerified"),
    @NamedQuery(name = "NUSTUSDApplicant.findByALevelCertVerified", query = "SELECT n FROM NUSTUSDApplicant n WHERE n.aLevelCertVerified = :aLevelCertVerified"),
    @NamedQuery(name = "NUSTUSDApplicant.findBySchoolCertVerified", query = "SELECT n FROM NUSTUSDApplicant n WHERE n.schoolCertVerified = :schoolCertVerified"),
    @NamedQuery(name = "NUSTUSDApplicant.findByUniversityCertVerified", query = "SELECT n FROM NUSTUSDApplicant n WHERE n.universityCertVerified = :universityCertVerified"),
    @NamedQuery(name = "NUSTUSDApplicant.findByOtherCertVerified", query = "SELECT n FROM NUSTUSDApplicant n WHERE n.otherCertVerified = :otherCertVerified"),
    @NamedQuery(name = "NUSTUSDApplicant.findByReceiptAck", query = "SELECT n FROM NUSTUSDApplicant n WHERE n.receiptAck = :receiptAck"),
    @NamedQuery(name = "NUSTUSDApplicant.findByReceiptPrev", query = "SELECT n FROM NUSTUSDApplicant n WHERE n.receiptPrev = :receiptPrev"),
    @NamedQuery(name = "NUSTUSDApplicant.findBySoughtTranscript", query = "SELECT n FROM NUSTUSDApplicant n WHERE n.soughtTranscript = :soughtTranscript"),
    @NamedQuery(name = "NUSTUSDApplicant.findBySoughtRef", query = "SELECT n FROM NUSTUSDApplicant n WHERE n.soughtRef = :soughtRef"),
    @NamedQuery(name = "NUSTUSDApplicant.findBySoughtRef1", query = "SELECT n FROM NUSTUSDApplicant n WHERE n.soughtRef1 = :soughtRef1"),
    @NamedQuery(name = "NUSTUSDApplicant.findByReceivedTranscript", query = "SELECT n FROM NUSTUSDApplicant n WHERE n.receivedTranscript = :receivedTranscript"),
    @NamedQuery(name = "NUSTUSDApplicant.findByReceivedRef1", query = "SELECT n FROM NUSTUSDApplicant n WHERE n.receivedRef1 = :receivedRef1"),
    @NamedQuery(name = "NUSTUSDApplicant.findByReceivedRef2", query = "SELECT n FROM NUSTUSDApplicant n WHERE n.receivedRef2 = :receivedRef2"),
    @NamedQuery(name = "NUSTUSDApplicant.findByReceivedRef3", query = "SELECT n FROM NUSTUSDApplicant n WHERE n.receivedRef3 = :receivedRef3"),
    @NamedQuery(name = "NUSTUSDApplicant.findByPAAdmit", query = "SELECT n FROM NUSTUSDApplicant n WHERE n.pAAdmit = :pAAdmit"),
    @NamedQuery(name = "NUSTUSDApplicant.findByReject", query = "SELECT n FROM NUSTUSDApplicant n WHERE n.reject = :reject"),
    @NamedQuery(name = "NUSTUSDApplicant.findByWithdraws", query = "SELECT n FROM NUSTUSDApplicant n WHERE n.withdraws = :withdraws"),
    @NamedQuery(name = "NUSTUSDApplicant.findByLetterRNQ", query = "SELECT n FROM NUSTUSDApplicant n WHERE n.letterRNQ = :letterRNQ"),
    @NamedQuery(name = "NUSTUSDApplicant.findByResearchDocSeen", query = "SELECT n FROM NUSTUSDApplicant n WHERE n.researchDocSeen = :researchDocSeen"),
    @NamedQuery(name = "NUSTUSDApplicant.findByAcceptanceLetterReceived", query = "SELECT n FROM NUSTUSDApplicant n WHERE n.acceptanceLetterReceived = :acceptanceLetterReceived"),
    @NamedQuery(name = "NUSTUSDApplicant.findByNoSeries", query = "SELECT n FROM NUSTUSDApplicant n WHERE n.noSeries = :noSeries"),
    @NamedQuery(name = "NUSTUSDApplicant.findByCustomerType", query = "SELECT n FROM NUSTUSDApplicant n WHERE n.customerType = :customerType"),
    @NamedQuery(name = "NUSTUSDApplicant.findByProposedFieldofStudy", query = "SELECT n FROM NUSTUSDApplicant n WHERE n.proposedFieldofStudy = :proposedFieldofStudy"),
    @NamedQuery(name = "NUSTUSDApplicant.findByProposedTitleofThesis", query = "SELECT n FROM NUSTUSDApplicant n WHERE n.proposedTitleofThesis = :proposedTitleofThesis"),
    @NamedQuery(name = "NUSTUSDApplicant.findByPlaceofWork", query = "SELECT n FROM NUSTUSDApplicant n WHERE n.placeofWork = :placeofWork"),
    @NamedQuery(name = "NUSTUSDApplicant.findByFacilitiesforResearch", query = "SELECT n FROM NUSTUSDApplicant n WHERE n.facilitiesforResearch = :facilitiesforResearch"),
    @NamedQuery(name = "NUSTUSDApplicant.findByPropSupervisor", query = "SELECT n FROM NUSTUSDApplicant n WHERE n.propSupervisor = :propSupervisor"),
    @NamedQuery(name = "NUSTUSDApplicant.findByPropJointSupervisor", query = "SELECT n FROM NUSTUSDApplicant n WHERE n.propJointSupervisor = :propJointSupervisor"),
    @NamedQuery(name = "NUSTUSDApplicant.findByPropAssocSupervisor", query = "SELECT n FROM NUSTUSDApplicant n WHERE n.propAssocSupervisor = :propAssocSupervisor"),
    @NamedQuery(name = "NUSTUSDApplicant.findByPropStartingDate", query = "SELECT n FROM NUSTUSDApplicant n WHERE n.propStartingDate = :propStartingDate"),
    @NamedQuery(name = "NUSTUSDApplicant.findByPropMinStudyPeriod", query = "SELECT n FROM NUSTUSDApplicant n WHERE n.propMinStudyPeriod = :propMinStudyPeriod"),
    @NamedQuery(name = "NUSTUSDApplicant.findBySourceofFundingself", query = "SELECT n FROM NUSTUSDApplicant n WHERE n.sourceofFundingself = :sourceofFundingself"),
    @NamedQuery(name = "NUSTUSDApplicant.findBySourceofFundingresearch", query = "SELECT n FROM NUSTUSDApplicant n WHERE n.sourceofFundingresearch = :sourceofFundingresearch"),
    @NamedQuery(name = "NUSTUSDApplicant.findBySponsorshipAppliedFor", query = "SELECT n FROM NUSTUSDApplicant n WHERE n.sponsorshipAppliedFor = :sponsorshipAppliedFor"),
    @NamedQuery(name = "NUSTUSDApplicant.findByProcessApplicant", query = "SELECT n FROM NUSTUSDApplicant n WHERE n.processApplicant = :processApplicant"),
    @NamedQuery(name = "NUSTUSDApplicant.findByProcessed", query = "SELECT n FROM NUSTUSDApplicant n WHERE n.processed = :processed"),
    @NamedQuery(name = "NUSTUSDApplicant.findBySelectedProgramme", query = "SELECT n FROM NUSTUSDApplicant n WHERE n.selectedProgramme = :selectedProgramme"),
    @NamedQuery(name = "NUSTUSDApplicant.findByCell", query = "SELECT n FROM NUSTUSDApplicant n WHERE n.cell = :cell"),
    @NamedQuery(name = "NUSTUSDApplicant.findByWorkAddress", query = "SELECT n FROM NUSTUSDApplicant n WHERE n.workAddress = :workAddress"),
    @NamedQuery(name = "NUSTUSDApplicant.findByFileLocation", query = "SELECT n FROM NUSTUSDApplicant n WHERE n.fileLocation = :fileLocation"),
    @NamedQuery(name = "NUSTUSDApplicant.findByApplicantType", query = "SELECT n FROM NUSTUSDApplicant n WHERE n.applicantType = :applicantType"),
    @NamedQuery(name = "NUSTUSDApplicant.findByOriginalApplicantNo", query = "SELECT n FROM NUSTUSDApplicant n WHERE n.originalApplicantNo = :originalApplicantNo"),
    @NamedQuery(name = "NUSTUSDApplicant.findByEmployeeNo", query = "SELECT n FROM NUSTUSDApplicant n WHERE n.employeeNo = :employeeNo"),
    @NamedQuery(name = "NUSTUSDApplicant.findBySelectionBatchName", query = "SELECT n FROM NUSTUSDApplicant n WHERE n.selectionBatchName = :selectionBatchName"),
    @NamedQuery(name = "NUSTUSDApplicant.findBySelectionBatchRecNo", query = "SELECT n FROM NUSTUSDApplicant n WHERE n.selectionBatchRecNo = :selectionBatchRecNo"),
    @NamedQuery(name = "NUSTUSDApplicant.findByReviewed", query = "SELECT n FROM NUSTUSDApplicant n WHERE n.reviewed = :reviewed"),
    @NamedQuery(name = "NUSTUSDApplicant.findByALevelPoints", query = "SELECT n FROM NUSTUSDApplicant n WHERE n.aLevelPoints = :aLevelPoints"),
    @NamedQuery(name = "NUSTUSDApplicant.findByCommited", query = "SELECT n FROM NUSTUSDApplicant n WHERE n.commited = :commited"),
    @NamedQuery(name = "NUSTUSDApplicant.findByCommitedProgramme", query = "SELECT n FROM NUSTUSDApplicant n WHERE n.commitedProgramme = :commitedProgramme"),
    @NamedQuery(name = "NUSTUSDApplicant.findByChoiceunderConsideration", query = "SELECT n FROM NUSTUSDApplicant n WHERE n.choiceunderConsideration = :choiceunderConsideration"),
    @NamedQuery(name = "NUSTUSDApplicant.findByBest3Alevels", query = "SELECT n FROM NUSTUSDApplicant n WHERE n.best3Alevels = :best3Alevels"),
    @NamedQuery(name = "NUSTUSDApplicant.findByRegion", query = "SELECT n FROM NUSTUSDApplicant n WHERE n.region = :region"),
    @NamedQuery(name = "NUSTUSDApplicant.findByEnoughData", query = "SELECT n FROM NUSTUSDApplicant n WHERE n.enoughData = :enoughData"),
    @NamedQuery(name = "NUSTUSDApplicant.findByConverted", query = "SELECT n FROM NUSTUSDApplicant n WHERE n.converted = :converted"),
    @NamedQuery(name = "NUSTUSDApplicant.findByLastSchoolAtt", query = "SELECT n FROM NUSTUSDApplicant n WHERE n.lastSchoolAtt = :lastSchoolAtt"),
    @NamedQuery(name = "NUSTUSDApplicant.findByCapturedBy", query = "SELECT n FROM NUSTUSDApplicant n WHERE n.capturedBy = :capturedBy"),
    @NamedQuery(name = "NUSTUSDApplicant.findByDateCaptured", query = "SELECT n FROM NUSTUSDApplicant n WHERE n.dateCaptured = :dateCaptured"),
    @NamedQuery(name = "NUSTUSDApplicant.findByExcludeFromSelection", query = "SELECT n FROM NUSTUSDApplicant n WHERE n.excludeFromSelection = :excludeFromSelection"),
    @NamedQuery(name = "NUSTUSDApplicant.findBySelectedBy", query = "SELECT n FROM NUSTUSDApplicant n WHERE n.selectedBy = :selectedBy"),
    @NamedQuery(name = "NUSTUSDApplicant.findByDateSelected", query = "SELECT n FROM NUSTUSDApplicant n WHERE n.dateSelected = :dateSelected"),
    @NamedQuery(name = "NUSTUSDApplicant.findByOnlineApplicantId", query = "SELECT n FROM NUSTUSDApplicant n WHERE n.onlineApplicantId = :onlineApplicantId"),
    @NamedQuery(name = "NUSTUSDApplicant.findByArchived", query = "SELECT n FROM NUSTUSDApplicant n WHERE n.archived = :archived"),
    @NamedQuery(name = "NUSTUSDApplicant.findByPublish", query = "SELECT n FROM NUSTUSDApplicant n WHERE n.publish = :publish"),
    @NamedQuery(name = "NUSTUSDApplicant.findByBarcode", query = "SELECT n FROM NUSTUSDApplicant n WHERE n.barcode = :barcode"),
    @NamedQuery(name = "NUSTUSDApplicant.findByProgrammeClass", query = "SELECT n FROM NUSTUSDApplicant n WHERE n.programmeClass = :programmeClass"),
    @NamedQuery(name = "NUSTUSDApplicant.findBySelectionBatchTotalApplicants", query = "SELECT n FROM NUSTUSDApplicant n WHERE n.selectionBatchTotalApplicants = :selectionBatchTotalApplicants"),
    @NamedQuery(name = "NUSTUSDApplicant.findByDepositPaid", query = "SELECT n FROM NUSTUSDApplicant n WHERE n.depositPaid = :depositPaid"),
    @NamedQuery(name = "NUSTUSDApplicant.findByTotalDepositPaid", query = "SELECT n FROM NUSTUSDApplicant n WHERE n.totalDepositPaid = :totalDepositPaid"), 
    @NamedQuery(name = "NUSTUSDApplicant.findByApplicantDepositOverride", query = "SELECT n FROM NUSTUSDApplicant n WHERE n.applicantDepositOverride = :applicantDepositOverride"),
    @NamedQuery(name = "NUSTUSDApplicant.findByOverrider", query = "SELECT n FROM NUSTUSDApplicant n WHERE n.overrider = :overrider"),
    @NamedQuery(name = "NUSTUSDApplicant.findByNextofKin", query = "SELECT n FROM NUSTUSDApplicant n WHERE n.nextofKin = :nextofKin"),
    @NamedQuery(name = "NUSTUSDApplicant.findByNextofKinAddress", query = "SELECT n FROM NUSTUSDApplicant n WHERE n.nextofKinAddress = :nextofKinAddress"),
    @NamedQuery(name = "NUSTUSDApplicant.findByNextofKinAddress1", query = "SELECT n FROM NUSTUSDApplicant n WHERE n.nextofKinAddress1 = :nextofKinAddress1"),
    @NamedQuery(name = "NUSTUSDApplicant.findByNextofKinAddress2", query = "SELECT n FROM NUSTUSDApplicant n WHERE n.nextofKinAddress2 = :nextofKinAddress2"),
    @NamedQuery(name = "NUSTUSDApplicant.findByNextofKinPhoneNo", query = "SELECT n FROM NUSTUSDApplicant n WHERE n.nextofKinPhoneNo = :nextofKinPhoneNo")})
public class NUSTUSDApplicant implements Serializable {

    private static final long serialVersionUID = 1L;
    @EmbeddedId
    protected NUSTUSDApplicantPK nUSTUSDApplicantPK;
    @Basic(optional = false)
    @Column(name = "[Surname]")
    private String surname;
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 30)
    @Column(name = "[Search Name]")
    private String searchName;
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 30)
    @Column(name = "[Forenames]")
    private String forenames;
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 30)
    @Column(name = "[Permanent Address]")
    private String permanentAddress;
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 30)
    @Column(name = "[Permanent Address 2]")
    private String permanentAddress2;
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 30)
    @Column(name = "[City]")
    private String city;
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 30)
    @Column(name = "[Phone (H)]")
    private String phoneH;
    // @Pattern(regexp="[a-z0-9!#$%&'*+/=?^_`{|}~-]+(?:\\.[a-z0-9!#$%&'*+/=?^_`{|}~-]+)*@(?:[a-z0-9](?:[a-z0-9-]*[a-z0-9])?\\.)+[a-z0-9](?:[a-z0-9-]*[a-z0-9])?", message="Invalid email")//if the field contains email address consider using this annotation to enforce field validation
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 80)
    @Column(name = "[E-Mail]")
    private String eMail;
    @Basic(optional = false)
    @NotNull
    @Column(name = "[Year]")
    private int year;
    @Basic(optional = false)
    @NotNull
    @Column(name = "[Entry Type]")
    private int entryType;
    @Basic(optional = false)
    @NotNull
    @Column(name = "[Title]")
    private int title;
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 30)
    @Column(name = "[Previous Surname]")
    private String previousSurname;
    @Basic(optional = false)
    @NotNull
    @Column(name = "[Marital Status]")
    private int maritalStatus;
    @Basic(optional = false)
    @NotNull
    @Column(name = "[Sex]")
    private int sex;
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 30)
    @Column(name = "[Nationality]")
    private String nationality;
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 10)
    @Column(name = "[Citizenship]")
    private String citizenship;
    @Basic(optional = false)
    @NotNull
    @Column(name = "[Permanent Resident]")
    private short permanentResident;
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 30)
    @Column(name = "[Residence Permit Description]")
    private String residencePermitDescription;
    // @Max(value=?)  @Min(value=?)//if you know range of your decimal fields consider using these annotations to enforce field validation
    @Basic(optional = false)
    @NotNull
    @Column(name = "[Period of Residence]")
    private BigDecimal periodofResidence;
    @Basic(optional = false)
    @NotNull
    @Column(name = "[Date of Birth]")
    @Temporal(TemporalType.TIMESTAMP)
    private Date dateofBirth;
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 30)
    @Column(name = "[Place of Birth]")
    private String placeofBirth;
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 20)
    @Column(name = "[Birth Certificate No_]")
    private String birthCertificateNo;
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 20)
    @Column(name = "[National I_D_ No_]")
    private String nationalIDNo;
    @Basic(optional = false)
    @NotNull
    @Column(name = "[Physical Disability]")
    private short physicalDisability;
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 30)
    @Column(name = "[Physical Disability Detail]")
    private String physicalDisabilityDetail;
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 10)
    @Column(name = "[Disability Code]")
    private String disabilityCode;
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 30)
    @Column(name = "[Permanent Address 3]")
    private String permanentAddress3;
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 30)
    @Column(name = "[Contact Address]")
    private String contactAddress;
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 30)
    @Column(name = "[Contact Address 1]")
    private String contactAddress1;
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 30)
    @Column(name = "[Contact Address 2]")
    private String contactAddress2;
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 30)
    @Column(name = "[Phone (W)]")
    private String phoneW;
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 100)
    @Column(name = "[Proposed Field of Research]")
    private String proposedFieldofResearch;
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 100)
    @Column(name = "[Last School Attended]")
    private String lastSchoolAttended;
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 100)
    @Column(name = "[Last School Address]")
    private String lastSchoolAddress;
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 100)
    @Column(name = "[Last School Address 1]")
    private String lastSchoolAddress1;
    @Basic(optional = false)
    @NotNull
    @Column(name = "[Last School Start Year]")
    private int lastSchoolStartYear;
    @Basic(optional = false)
    @NotNull
    @Column(name = "[Last School End Year]")
    private int lastSchoolEndYear;
    @Basic(optional = false)
    @NotNull
    @Column(name = "[Former Student]")
    private short formerStudent;
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 20)
    @Column(name = "[Student Registration No_]")
    private String studentRegistrationNo;
    @Basic(optional = false)
    @NotNull
    @Column(name = "[Work Experience]")
    private short workExperience;
    @Basic(optional = false)
    @NotNull
    @Column(name = "[Sponsor Type]")
    private int sponsorType;
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 30)
    @Column(name = "[Sponsor Name]")
    private String sponsorName;
    @Basic(optional = false)
    @NotNull
    @Column(name = "[Staff Dependant]")
    private short staffDependant;
    @Basic(optional = false)
    @NotNull
    @Column(name = "[Staff Member]")
    private short staffMember;
    @Basic(optional = false)
    @NotNull
    @Column(name = "[Application Date]")
    @Temporal(TemporalType.TIMESTAMP)
    private Date applicationDate;
    @Basic(optional = false)
    @NotNull
    @Column(name = "[National I_D_ Verified]")
    private short nationalIDVerified;
    @Basic(optional = false)
    @NotNull
    @Column(name = "[Birth Certificate Verified]")
    private short birthCertificateVerified;
    @Basic(optional = false)
    @NotNull
    @Column(name = "[Marriage Cert_ Verified]")
    private short marriageCertVerified;
    @Basic(optional = false)
    @NotNull
    @Column(name = "[O_Level Cert_ Verified]")
    private short oLevelCertVerified;
    @Basic(optional = false)
    @NotNull
    @Column(name = "[A_Level Cert_ Verified]")
    private short aLevelCertVerified;
    @Basic(optional = false)
    @NotNull
    @Column(name = "[School Cert_ Verified]")
    private short schoolCertVerified;
    @Basic(optional = false)
    @NotNull
    @Column(name = "[University Cert_ Verified]")
    private short universityCertVerified;
    @Basic(optional = false)
    @NotNull
    @Column(name = "[Other Cert_ Verified]")
    private short otherCertVerified;
    @Basic(optional = false)
    @NotNull
    @Column(name = "[Receipt Ack_]")
    @Temporal(TemporalType.TIMESTAMP)
    private Date receiptAck;
    @Basic(optional = false)
    @NotNull
    @Column(name = "[Receipt Prev_]")
    @Temporal(TemporalType.TIMESTAMP)
    private Date receiptPrev;
    @Basic(optional = false)
    @NotNull
    @Column(name = "[Sought Transcript]")
    @Temporal(TemporalType.TIMESTAMP)
    private Date soughtTranscript;
    @Basic(optional = false)
    @NotNull
    @Column(name = "[Sought Ref]")
    @Temporal(TemporalType.TIMESTAMP)
    private Date soughtRef;
    @Basic(optional = false)
    @NotNull
    @Column(name = "[Sought Ref 1]")
    @Temporal(TemporalType.TIMESTAMP)
    private Date soughtRef1;
    @Basic(optional = false)
    @NotNull
    @Column(name = "[Received Transcript]")
    @Temporal(TemporalType.TIMESTAMP)
    private Date receivedTranscript;
    @Basic(optional = false)
    @NotNull
    @Column(name = "[Received Ref 1]")
    @Temporal(TemporalType.TIMESTAMP)
    private Date receivedRef1;
    @Basic(optional = false)
    @NotNull
    @Column(name = "[Received Ref 2]")
    @Temporal(TemporalType.TIMESTAMP)
    private Date receivedRef2;
    @Basic(optional = false)
    @NotNull
    @Column(name = "[Received Ref 3]")
    @Temporal(TemporalType.TIMESTAMP)
    private Date receivedRef3;
    @Basic(optional = false)
    @NotNull
    @Column(name = "[P_A Admit]")
    @Temporal(TemporalType.TIMESTAMP)
    private Date pAAdmit;
    @Basic(optional = false)
    @NotNull
    @Column(name = "[Reject]")
    @Temporal(TemporalType.TIMESTAMP)
    private Date reject;
    @Basic(optional = false)
    @NotNull
    @Column(name = "[Withdraws]")
    @Temporal(TemporalType.TIMESTAMP)
    private Date withdraws;
    @Basic(optional = false)
    @NotNull
    @Column(name = "[Letter (R;NQ)]")
    @Temporal(TemporalType.TIMESTAMP)
    private Date letterRNQ;
    @Basic(optional = false)
    @NotNull
    @Column(name = "[Research Doc_ Seen]")
    private short researchDocSeen;
    @Basic(optional = false)
    @NotNull
    @Column(name = "[Acceptance Letter Received]")
    private short acceptanceLetterReceived;
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 10)
    @Column(name = "[No_ Series]")
    private String noSeries;
    @Basic(optional = false)
    @NotNull
    @Column(name = "[Customer Type]")
    private int customerType;
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 30)
    @Column(name = "[Proposed Field of Study]")
    private String proposedFieldofStudy;
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 30)
    @Column(name = "[Proposed Title of Thesis]")
    private String proposedTitleofThesis;
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 30)
    @Column(name = "[Place of Work]")
    private String placeofWork;
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 30)
    @Column(name = "[Facilities for Research]")
    private String facilitiesforResearch;
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 30)
    @Column(name = "[Prop_ Supervisor]")
    private String propSupervisor;
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 30)
    @Column(name = "[Prop_ Joint Supervisor]")
    private String propJointSupervisor;
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 30)
    @Column(name = "[Prop_ Assoc_ Supervisor]")
    private String propAssocSupervisor;
    @Basic(optional = false)
    @NotNull
    @Column(name = "[Prop_ Starting Date]")
    @Temporal(TemporalType.TIMESTAMP)
    private Date propStartingDate;
    @Basic(optional = false)
    @NotNull
    @Column(name = "[Prop_ Min_ Study Period]")
    private int propMinStudyPeriod;
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 30)
    @Column(name = "[Source of Funding (self)]")
    private String sourceofFundingself;
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 30)
    @Column(name = "[Source of Funding (research)]")
    private String sourceofFundingresearch;
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 30)
    @Column(name = "[Sponsorship Applied For]")
    private String sponsorshipAppliedFor;
    @Basic(optional = false)
    @NotNull
    @Column(name = "[Process Applicant]")
    private short processApplicant;
    @Basic(optional = false)
    @NotNull
    @Column(name = "[Processed]")
    private short processed;
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 20)
    @Column(name = "[Selected Programme]")
    private String selectedProgramme;
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 20)
    @Column(name = "[Cell]")
    private String cell;
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 100)
    @Column(name = "[Work Address]")
    private String workAddress;
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 150)
    @Column(name = "[File Location]")
    private String fileLocation;
    @Basic(optional = false)
    @NotNull
    @Column(name = "[Applicant Type]")
    private int applicantType;
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 10)
    @Column(name = "[Original Applicant No_]")
    private String originalApplicantNo;
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 20)
    @Column(name = "[Employee No]")
    private String employeeNo;
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 20)
    @Column(name = "[SelectionBatchName]")
    private String selectionBatchName;
    @Basic(optional = false)
    @NotNull
    @Column(name = "[SelectionBatchRecNo]")
    private int selectionBatchRecNo;
    @Basic(optional = false)
    @NotNull
    @Column(name = "[Reviewed]")
    private short reviewed;
    @Basic(optional = false)
    @NotNull
    @Column(name = "[A_Level Points]")
    private int aLevelPoints;
    @Basic(optional = false)
    @NotNull
    @Column(name = "[commited]")
    private short commited;
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 20)
    @Column(name = "[commitedProgramme]")
    private String commitedProgramme;
    @Basic(optional = false)
    @NotNull
    @Column(name = "[choiceunderConsideration]")
    private int choiceunderConsideration;
    @Basic(optional = false)
    @NotNull
    @Column(name = "[Best3Alevels]")
    private BigDecimal best3Alevels;
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 20)
    @Column(name = "[Region]")
    private String region;
    @Basic(optional = false)
    @NotNull
    @Column(name = "[Enough Data]")
    private short enoughData;
    @Basic(optional = false)
    @NotNull
    @Column(name = "[Converted]")
    private short converted;
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 10)
    @Column(name = "[Last School Att_]")
    private String lastSchoolAtt;
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 25)
    @Column(name = "[Captured By]")
    private String capturedBy;
    @Basic(optional = false)
    @NotNull
    @Column(name = "[Date Captured]")
    @Temporal(TemporalType.TIMESTAMP)
    private Date dateCaptured;
    @Basic(optional = false)
    @NotNull
    @Column(name = "[ExcludeFromSelection]")
    private short excludeFromSelection;
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 25)
    @Column(name = "[Selected By]")
    private String selectedBy;
    @Basic(optional = false)
    @NotNull
    @Column(name = "[Date Selected]")
    @Temporal(TemporalType.TIMESTAMP)
    private Date dateSelected;
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 10)
    @Column(name = "[OnlineApplicantId]")
    private String onlineApplicantId;
    @Basic(optional = false)
    @NotNull
    @Column(name = "[Archived]")
    private short archived;
    @Basic(optional = false)
    @NotNull
    @Column(name = "[Publish]")
    private short publish;
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 20)
    @Column(name = "[Barcode]")
    private String barcode;
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 20)
    @Column(name = "[Programme Class]")
    private String programmeClass;
    @Basic(optional = false)
    @NotNull
    @Column(name = "[SelectionBatchTotalApplicants]")
    private int selectionBatchTotalApplicants;
    @Basic(optional = false)
    @NotNull
    @Column(name = "[DepositPaid]")
    private short depositPaid;
    @Basic(optional = false)
    @NotNull
    @Column(name = "[TotalDepositPaid]")
    private BigDecimal totalDepositPaid;
    @Column(name = "[Applicant Deposit Override]")
    private short applicantDepositOverride;
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 50)
    @Column(name = "[Overrider]")
    private String overrider;
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 30)
    @Column(name = "[Next of Kin]")
    private String nextofKin;
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 30)
    @Column(name = "[Next of Kin Address]")
    private String nextofKinAddress;
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 30)
    @Column(name = "[Next of Kin Address 1]")
    private String nextofKinAddress1;
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 30)
    @Column(name = "[Next of Kin Address 2]")
    private String nextofKinAddress2;
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 30)
    @Column(name = "[Next of Kin Phone No_]")
    private String nextofKinPhoneNo;

    public NUSTUSDApplicant() {
    }

    public NUSTUSDApplicant(NUSTUSDApplicantPK nUSTUSDApplicantPK) {
        this.nUSTUSDApplicantPK = nUSTUSDApplicantPK;
    }

    public NUSTUSDApplicant(NUSTUSDApplicantPK nUSTUSDApplicantPK, String surname, String searchName, String forenames, String permanentAddress, String permanentAddress2, String city, String phoneH, String eMail, int year, int entryType, int title, String previousSurname, int maritalStatus, int sex, String nationality, String citizenship, short permanentResident, String residencePermitDescription, BigDecimal periodofResidence, Date dateofBirth, String placeofBirth, String birthCertificateNo, String nationalIDNo, short physicalDisability, String physicalDisabilityDetail, String disabilityCode, String permanentAddress3, String contactAddress, String contactAddress1, String contactAddress2, String phoneW, String proposedFieldofResearch, String lastSchoolAttended, String lastSchoolAddress, String lastSchoolAddress1, int lastSchoolStartYear, int lastSchoolEndYear, short formerStudent, String studentRegistrationNo, short workExperience, int sponsorType, String sponsorName, short staffDependant, short staffMember, Date applicationDate, short nationalIDVerified, short birthCertificateVerified, short marriageCertVerified, short oLevelCertVerified, short aLevelCertVerified, short schoolCertVerified, short universityCertVerified, short otherCertVerified, Date receiptAck, Date receiptPrev, Date soughtTranscript, Date soughtRef, Date soughtRef1, Date receivedTranscript, Date receivedRef1, Date receivedRef2, Date receivedRef3, Date pAAdmit, Date reject, Date withdraws, Date letterRNQ, short researchDocSeen, short acceptanceLetterReceived, String noSeries, int customerType, String proposedFieldofStudy, String proposedTitleofThesis, String placeofWork, String facilitiesforResearch, String propSupervisor, String propJointSupervisor, String propAssocSupervisor, Date propStartingDate, int propMinStudyPeriod, String sourceofFundingself, String sourceofFundingresearch, String sponsorshipAppliedFor, short processApplicant, short processed, String selectedProgramme, String cell, String workAddress, String fileLocation, int applicantType, String originalApplicantNo, String employeeNo, String selectionBatchName, int selectionBatchRecNo, short reviewed, int aLevelPoints, short commited, String commitedProgramme, int choiceunderConsideration, BigDecimal best3Alevels, String region, short enoughData, short converted, String lastSchoolAtt, String capturedBy, Date dateCaptured, short excludeFromSelection, String selectedBy, Date dateSelected, String onlineApplicantId, short archived, short publish, String barcode, String programmeClass, int selectionBatchTotalApplicants, short depositPaid, BigDecimal totalDepositPaid, short applicantDepositOverride, String overrider, String nextofKin, String nextofKinAddress, String nextofKinAddress1, String nextofKinAddress2, String nextofKinPhoneNo) {
        this.nUSTUSDApplicantPK = nUSTUSDApplicantPK;
        this.surname = surname;
        this.searchName = searchName;
        this.forenames = forenames;
        this.permanentAddress = permanentAddress;
        this.permanentAddress2 = permanentAddress2;
        this.city = city;
        this.phoneH = phoneH;
        this.eMail = eMail;
        this.year = year;
        this.entryType = entryType;
        this.title = title;
        this.previousSurname = previousSurname;
        this.maritalStatus = maritalStatus;
        this.sex = sex;
        this.nationality = nationality;
        this.citizenship = citizenship;
        this.permanentResident = permanentResident;
        this.residencePermitDescription = residencePermitDescription;
        this.periodofResidence = periodofResidence;
        this.dateofBirth = dateofBirth;
        this.placeofBirth = placeofBirth;
        this.birthCertificateNo = birthCertificateNo;
        this.nationalIDNo = nationalIDNo;
        this.physicalDisability = physicalDisability;
        this.physicalDisabilityDetail = physicalDisabilityDetail;
        this.disabilityCode = disabilityCode;
        this.permanentAddress3 = permanentAddress3;
        this.contactAddress = contactAddress;
        this.contactAddress1 = contactAddress1;
        this.contactAddress2 = contactAddress2;
        this.phoneW = phoneW;
        this.proposedFieldofResearch = proposedFieldofResearch;
        this.lastSchoolAttended = lastSchoolAttended;
        this.lastSchoolAddress = lastSchoolAddress;
        this.lastSchoolAddress1 = lastSchoolAddress1;
        this.lastSchoolStartYear = lastSchoolStartYear;
        this.lastSchoolEndYear = lastSchoolEndYear;
        this.formerStudent = formerStudent;
        this.studentRegistrationNo = studentRegistrationNo;
        this.workExperience = workExperience;
        this.sponsorType = sponsorType;
        this.sponsorName = sponsorName;
        this.staffDependant = staffDependant;
        this.staffMember = staffMember;
        this.applicationDate = applicationDate;
        this.nationalIDVerified = nationalIDVerified;
        this.birthCertificateVerified = birthCertificateVerified;
        this.marriageCertVerified = marriageCertVerified;
        this.oLevelCertVerified = oLevelCertVerified;
        this.aLevelCertVerified = aLevelCertVerified;
        this.schoolCertVerified = schoolCertVerified;
        this.universityCertVerified = universityCertVerified;
        this.otherCertVerified = otherCertVerified;
        this.receiptAck = receiptAck;
        this.receiptPrev = receiptPrev;
        this.soughtTranscript = soughtTranscript;
        this.soughtRef = soughtRef;
        this.soughtRef1 = soughtRef1;
        this.receivedTranscript = receivedTranscript;
        this.receivedRef1 = receivedRef1;
        this.receivedRef2 = receivedRef2;
        this.receivedRef3 = receivedRef3;
        this.pAAdmit = pAAdmit;
        this.reject = reject;
        this.withdraws = withdraws;
        this.letterRNQ = letterRNQ;
        this.researchDocSeen = researchDocSeen;
        this.acceptanceLetterReceived = acceptanceLetterReceived;
        this.noSeries = noSeries;
        this.customerType = customerType;
        this.proposedFieldofStudy = proposedFieldofStudy;
        this.proposedTitleofThesis = proposedTitleofThesis;
        this.placeofWork = placeofWork;
        this.facilitiesforResearch = facilitiesforResearch;
        this.propSupervisor = propSupervisor;
        this.propJointSupervisor = propJointSupervisor;
        this.propAssocSupervisor = propAssocSupervisor;
        this.propStartingDate = propStartingDate;
        this.propMinStudyPeriod = propMinStudyPeriod;
        this.sourceofFundingself = sourceofFundingself;
        this.sourceofFundingresearch = sourceofFundingresearch;
        this.sponsorshipAppliedFor = sponsorshipAppliedFor;
        this.processApplicant = processApplicant;
        this.processed = processed;
        this.selectedProgramme = selectedProgramme;
        this.cell = cell;
        this.workAddress = workAddress;
        this.fileLocation = fileLocation;
        this.applicantType = applicantType;
        this.originalApplicantNo = originalApplicantNo;
        this.employeeNo = employeeNo;
        this.selectionBatchName = selectionBatchName;
        this.selectionBatchRecNo = selectionBatchRecNo;
        this.reviewed = reviewed;
        this.aLevelPoints = aLevelPoints;
        this.commited = commited;
        this.commitedProgramme = commitedProgramme;
        this.choiceunderConsideration = choiceunderConsideration;
        this.best3Alevels = best3Alevels;
        this.region = region;
        this.enoughData = enoughData;
        this.converted = converted;
        this.lastSchoolAtt = lastSchoolAtt;
        this.capturedBy = capturedBy;
        this.dateCaptured = dateCaptured;
        this.excludeFromSelection = excludeFromSelection;
        this.selectedBy = selectedBy;
        this.dateSelected = dateSelected;
        this.onlineApplicantId = onlineApplicantId;
        this.archived = archived;
        this.publish = publish;
        this.barcode = barcode;
        this.programmeClass = programmeClass;
        this.selectionBatchTotalApplicants = selectionBatchTotalApplicants;
        this.depositPaid = depositPaid;
        this.totalDepositPaid = totalDepositPaid;
        this.applicantDepositOverride = applicantDepositOverride;
        this.overrider = overrider;
        this.nextofKin = nextofKin;
        this.nextofKinAddress = nextofKinAddress;
        this.nextofKinAddress1 = nextofKinAddress1;
        this.nextofKinAddress2 = nextofKinAddress2;
        this.nextofKinPhoneNo = nextofKinPhoneNo;
    }

    public NUSTUSDApplicant(String no, String customerNo) {
        this.nUSTUSDApplicantPK = new NUSTUSDApplicantPK(no, customerNo);
    }

    public NUSTUSDApplicantPK getNUSTUSDApplicantPK() {
        return nUSTUSDApplicantPK;
    }

    public void setNUSTUSDApplicantPK(NUSTUSDApplicantPK nUSTUSDApplicantPK) {
        this.nUSTUSDApplicantPK = nUSTUSDApplicantPK;
    }

    public String getSurname() {
        return surname;
    }

    public void setSurname(String surname) {
        this.surname = surname;
    }

    public String getSearchName() {
        return searchName;
    }

    public void setSearchName(String searchName) {
        this.searchName = searchName;
    }

    public String getForenames() {
        return forenames;
    }

    public void setForenames(String forenames) {
        this.forenames = forenames;
    }

    public String getPermanentAddress() {
        return permanentAddress;
    }

    public void setPermanentAddress(String permanentAddress) {
        this.permanentAddress = permanentAddress;
    }

    public String getPermanentAddress2() {
        return permanentAddress2;
    }

    public void setPermanentAddress2(String permanentAddress2) {
        this.permanentAddress2 = permanentAddress2;
    }

    public String getCity() {
        return city;
    }

    public void setCity(String city) {
        this.city = city;
    }

    public String getPhoneH() {
        return phoneH;
    }

    public void setPhoneH(String phoneH) {
        this.phoneH = phoneH;
    }

    public String getEMail() {
        return eMail;
    }

    public void setEMail(String eMail) {
        this.eMail = eMail;
    }

    public int getYear() {
        return year;
    }

    public void setYear(int year) {
        this.year = year;
    }

    public int getEntryType() {
        return entryType;
    }

    public void setEntryType(int entryType) {
        this.entryType = entryType;
    }

    public int getTitle() {
        return title;
    }

    public void setTitle(int title) {
        this.title = title;
    }

    public String getPreviousSurname() {
        return previousSurname;
    }

    public void setPreviousSurname(String previousSurname) {
        this.previousSurname = previousSurname;
    }

    public int getMaritalStatus() {
        return maritalStatus;
    }

    public void setMaritalStatus(int maritalStatus) {
        this.maritalStatus = maritalStatus;
    }

    public int getSex() {
        return sex;
    }

    public void setSex(int sex) {
        this.sex = sex;
    }

    public String getNationality() {
        return nationality;
    }

    public void setNationality(String nationality) {
        this.nationality = nationality;
    }

    public String getCitizenship() {
        return citizenship;
    }

    public void setCitizenship(String citizenship) {
        this.citizenship = citizenship;
    }

    public short getPermanentResident() {
        return permanentResident;
    }

    public void setPermanentResident(short permanentResident) {
        this.permanentResident = permanentResident;
    }

    public String getResidencePermitDescription() {
        return residencePermitDescription;
    }

    public void setResidencePermitDescription(String residencePermitDescription) {
        this.residencePermitDescription = residencePermitDescription;
    }

    public BigDecimal getPeriodofResidence() {
        return periodofResidence;
    }

    public void setPeriodofResidence(BigDecimal periodofResidence) {
        this.periodofResidence = periodofResidence;
    }

    public Date getDateofBirth() {
        return dateofBirth;
    }

    public void setDateofBirth(Date dateofBirth) {
        this.dateofBirth = dateofBirth;
    }

    public String getPlaceofBirth() {
        return placeofBirth;
    }

    public void setPlaceofBirth(String placeofBirth) {
        this.placeofBirth = placeofBirth;
    }

    public String getBirthCertificateNo() {
        return birthCertificateNo;
    }

    public void setBirthCertificateNo(String birthCertificateNo) {
        this.birthCertificateNo = birthCertificateNo;
    }

    public String getNationalIDNo() {
        return nationalIDNo;
    }

    public void setNationalIDNo(String nationalIDNo) {
        this.nationalIDNo = nationalIDNo;
    }

    public short getPhysicalDisability() {
        return physicalDisability;
    }

    public void setPhysicalDisability(short physicalDisability) {
        this.physicalDisability = physicalDisability;
    }

    public String getPhysicalDisabilityDetail() {
        return physicalDisabilityDetail;
    }

    public void setPhysicalDisabilityDetail(String physicalDisabilityDetail) {
        this.physicalDisabilityDetail = physicalDisabilityDetail;
    }

    public String getDisabilityCode() {
        return disabilityCode;
    }

    public void setDisabilityCode(String disabilityCode) {
        this.disabilityCode = disabilityCode;
    }

    public String getPermanentAddress3() {
        return permanentAddress3;
    }

    public void setPermanentAddress3(String permanentAddress3) {
        this.permanentAddress3 = permanentAddress3;
    }

    public String getContactAddress() {
        return contactAddress;
    }

    public void setContactAddress(String contactAddress) {
        this.contactAddress = contactAddress;
    }

    public String getContactAddress1() {
        return contactAddress1;
    }

    public void setContactAddress1(String contactAddress1) {
        this.contactAddress1 = contactAddress1;
    }

    public String getContactAddress2() {
        return contactAddress2;
    }

    public void setContactAddress2(String contactAddress2) {
        this.contactAddress2 = contactAddress2;
    }

    public String getPhoneW() {
        return phoneW;
    }

    public void setPhoneW(String phoneW) {
        this.phoneW = phoneW;
    }

    public String getProposedFieldofResearch() {
        return proposedFieldofResearch;
    }

    public void setProposedFieldofResearch(String proposedFieldofResearch) {
        this.proposedFieldofResearch = proposedFieldofResearch;
    }

    public String getLastSchoolAttended() {
        return lastSchoolAttended;
    }

    public void setLastSchoolAttended(String lastSchoolAttended) {
        this.lastSchoolAttended = lastSchoolAttended;
    }

    public String getLastSchoolAddress() {
        return lastSchoolAddress;
    }

    public void setLastSchoolAddress(String lastSchoolAddress) {
        this.lastSchoolAddress = lastSchoolAddress;
    }

    public String getLastSchoolAddress1() {
        return lastSchoolAddress1;
    }

    public void setLastSchoolAddress1(String lastSchoolAddress1) {
        this.lastSchoolAddress1 = lastSchoolAddress1;
    }

    public int getLastSchoolStartYear() {
        return lastSchoolStartYear;
    }

    public void setLastSchoolStartYear(int lastSchoolStartYear) {
        this.lastSchoolStartYear = lastSchoolStartYear;
    }

    public int getLastSchoolEndYear() {
        return lastSchoolEndYear;
    }

    public void setLastSchoolEndYear(int lastSchoolEndYear) {
        this.lastSchoolEndYear = lastSchoolEndYear;
    }

    public short getFormerStudent() {
        return formerStudent;
    }

    public void setFormerStudent(short formerStudent) {
        this.formerStudent = formerStudent;
    }

    public String getStudentRegistrationNo() {
        return studentRegistrationNo;
    }

    public void setStudentRegistrationNo(String studentRegistrationNo) {
        this.studentRegistrationNo = studentRegistrationNo;
    }

    public short getWorkExperience() {
        return workExperience;
    }

    public void setWorkExperience(short workExperience) {
        this.workExperience = workExperience;
    }

    public int getSponsorType() {
        return sponsorType;
    }

    public void setSponsorType(int sponsorType) {
        this.sponsorType = sponsorType;
    }

    public String getSponsorName() {
        return sponsorName;
    }

    public void setSponsorName(String sponsorName) {
        this.sponsorName = sponsorName;
    }

    public short getStaffDependant() {
        return staffDependant;
    }

    public void setStaffDependant(short staffDependant) {
        this.staffDependant = staffDependant;
    }

    public short getStaffMember() {
        return staffMember;
    }

    public void setStaffMember(short staffMember) {
        this.staffMember = staffMember;
    }

    public Date getApplicationDate() {
        return applicationDate;
    }

    public void setApplicationDate(Date applicationDate) {
        this.applicationDate = applicationDate;
    }

    public short getNationalIDVerified() {
        return nationalIDVerified;
    }

    public void setNationalIDVerified(short nationalIDVerified) {
        this.nationalIDVerified = nationalIDVerified;
    }

    public short getBirthCertificateVerified() {
        return birthCertificateVerified;
    }

    public void setBirthCertificateVerified(short birthCertificateVerified) {
        this.birthCertificateVerified = birthCertificateVerified;
    }

    public short getMarriageCertVerified() {
        return marriageCertVerified;
    }

    public void setMarriageCertVerified(short marriageCertVerified) {
        this.marriageCertVerified = marriageCertVerified;
    }

    public short getOLevelCertVerified() {
        return oLevelCertVerified;
    }

    public void setOLevelCertVerified(short oLevelCertVerified) {
        this.oLevelCertVerified = oLevelCertVerified;
    }

    public short getALevelCertVerified() {
        return aLevelCertVerified;
    }

    public void setALevelCertVerified(short aLevelCertVerified) {
        this.aLevelCertVerified = aLevelCertVerified;
    }

    public short getSchoolCertVerified() {
        return schoolCertVerified;
    }

    public void setSchoolCertVerified(short schoolCertVerified) {
        this.schoolCertVerified = schoolCertVerified;
    }

    public short getUniversityCertVerified() {
        return universityCertVerified;
    }

    public void setUniversityCertVerified(short universityCertVerified) {
        this.universityCertVerified = universityCertVerified;
    }

    public short getOtherCertVerified() {
        return otherCertVerified;
    }

    public void setOtherCertVerified(short otherCertVerified) {
        this.otherCertVerified = otherCertVerified;
    }

    public Date getReceiptAck() {
        return receiptAck;
    }

    public void setReceiptAck(Date receiptAck) {
        this.receiptAck = receiptAck;
    }

    public Date getReceiptPrev() {
        return receiptPrev;
    }

    public void setReceiptPrev(Date receiptPrev) {
        this.receiptPrev = receiptPrev;
    }

    public Date getSoughtTranscript() {
        return soughtTranscript;
    }

    public void setSoughtTranscript(Date soughtTranscript) {
        this.soughtTranscript = soughtTranscript;
    }

    public Date getSoughtRef() {
        return soughtRef;
    }

    public void setSoughtRef(Date soughtRef) {
        this.soughtRef = soughtRef;
    }

    public Date getSoughtRef1() {
        return soughtRef1;
    }

    public void setSoughtRef1(Date soughtRef1) {
        this.soughtRef1 = soughtRef1;
    }

    public Date getReceivedTranscript() {
        return receivedTranscript;
    }

    public void setReceivedTranscript(Date receivedTranscript) {
        this.receivedTranscript = receivedTranscript;
    }

    public Date getReceivedRef1() {
        return receivedRef1;
    }

    public void setReceivedRef1(Date receivedRef1) {
        this.receivedRef1 = receivedRef1;
    }

    public Date getReceivedRef2() {
        return receivedRef2;
    }

    public void setReceivedRef2(Date receivedRef2) {
        this.receivedRef2 = receivedRef2;
    }

    public Date getReceivedRef3() {
        return receivedRef3;
    }

    public void setReceivedRef3(Date receivedRef3) {
        this.receivedRef3 = receivedRef3;
    }

    public Date getPAAdmit() {
        return pAAdmit;
    }

    public void setPAAdmit(Date pAAdmit) {
        this.pAAdmit = pAAdmit;
    }

    public Date getReject() {
        return reject;
    }

    public void setReject(Date reject) {
        this.reject = reject;
    }

    public Date getWithdraws() {
        return withdraws;
    }

    public void setWithdraws(Date withdraws) {
        this.withdraws = withdraws;
    }

    public Date getLetterRNQ() {
        return letterRNQ;
    }

    public void setLetterRNQ(Date letterRNQ) {
        this.letterRNQ = letterRNQ;
    }

    public short getResearchDocSeen() {
        return researchDocSeen;
    }

    public void setResearchDocSeen(short researchDocSeen) {
        this.researchDocSeen = researchDocSeen;
    }

    public short getAcceptanceLetterReceived() {
        return acceptanceLetterReceived;
    }

    public void setAcceptanceLetterReceived(short acceptanceLetterReceived) {
        this.acceptanceLetterReceived = acceptanceLetterReceived;
    }

    public String getNoSeries() {
        return noSeries;
    }

    public void setNoSeries(String noSeries) {
        this.noSeries = noSeries;
    }

    public int getCustomerType() {
        return customerType;
    }

    public void setCustomerType(int customerType) {
        this.customerType = customerType;
    }

    public String getProposedFieldofStudy() {
        return proposedFieldofStudy;
    }

    public void setProposedFieldofStudy(String proposedFieldofStudy) {
        this.proposedFieldofStudy = proposedFieldofStudy;
    }

    public String getProposedTitleofThesis() {
        return proposedTitleofThesis;
    }

    public void setProposedTitleofThesis(String proposedTitleofThesis) {
        this.proposedTitleofThesis = proposedTitleofThesis;
    }

    public String getPlaceofWork() {
        return placeofWork;
    }

    public void setPlaceofWork(String placeofWork) {
        this.placeofWork = placeofWork;
    }

    public String getFacilitiesforResearch() {
        return facilitiesforResearch;
    }

    public void setFacilitiesforResearch(String facilitiesforResearch) {
        this.facilitiesforResearch = facilitiesforResearch;
    }

    public String getPropSupervisor() {
        return propSupervisor;
    }

    public void setPropSupervisor(String propSupervisor) {
        this.propSupervisor = propSupervisor;
    }

    public String getPropJointSupervisor() {
        return propJointSupervisor;
    }

    public void setPropJointSupervisor(String propJointSupervisor) {
        this.propJointSupervisor = propJointSupervisor;
    }

    public String getPropAssocSupervisor() {
        return propAssocSupervisor;
    }

    public void setPropAssocSupervisor(String propAssocSupervisor) {
        this.propAssocSupervisor = propAssocSupervisor;
    }

    public Date getPropStartingDate() {
        return propStartingDate;
    }

    public void setPropStartingDate(Date propStartingDate) {
        this.propStartingDate = propStartingDate;
    }

    public int getPropMinStudyPeriod() {
        return propMinStudyPeriod;
    }

    public void setPropMinStudyPeriod(int propMinStudyPeriod) {
        this.propMinStudyPeriod = propMinStudyPeriod;
    }

    public String getSourceofFundingself() {
        return sourceofFundingself;
    }

    public void setSourceofFundingself(String sourceofFundingself) {
        this.sourceofFundingself = sourceofFundingself;
    }

    public String getSourceofFundingresearch() {
        return sourceofFundingresearch;
    }

    public void setSourceofFundingresearch(String sourceofFundingresearch) {
        this.sourceofFundingresearch = sourceofFundingresearch;
    }

    public String getSponsorshipAppliedFor() {
        return sponsorshipAppliedFor;
    }

    public void setSponsorshipAppliedFor(String sponsorshipAppliedFor) {
        this.sponsorshipAppliedFor = sponsorshipAppliedFor;
    }

    public short getProcessApplicant() {
        return processApplicant;
    }

    public void setProcessApplicant(short processApplicant) {
        this.processApplicant = processApplicant;
    }

    public short getProcessed() {
        return processed;
    }

    public void setProcessed(short processed) {
        this.processed = processed;
    }

    public String getSelectedProgramme() {
        return selectedProgramme;
    }

    public void setSelectedProgramme(String selectedProgramme) {
        this.selectedProgramme = selectedProgramme;
    }

    public String getCell() {
        return cell;
    }

    public void setCell(String cell) {
        this.cell = cell;
    }

    public String getWorkAddress() {
        return workAddress;
    }

    public void setWorkAddress(String workAddress) {
        this.workAddress = workAddress;
    }

    public String getFileLocation() {
        return fileLocation;
    }

    public void setFileLocation(String fileLocation) {
        this.fileLocation = fileLocation;
    }

    public int getApplicantType() {
        return applicantType;
    }

    public void setApplicantType(int applicantType) {
        this.applicantType = applicantType;
    }

    public String getOriginalApplicantNo() {
        return originalApplicantNo;
    }

    public void setOriginalApplicantNo(String originalApplicantNo) {
        this.originalApplicantNo = originalApplicantNo;
    }

    public String getEmployeeNo() {
        return employeeNo;
    }

    public void setEmployeeNo(String employeeNo) {
        this.employeeNo = employeeNo;
    }

    public String getSelectionBatchName() {
        return selectionBatchName;
    }

    public void setSelectionBatchName(String selectionBatchName) {
        this.selectionBatchName = selectionBatchName;
    }

    public int getSelectionBatchRecNo() {
        return selectionBatchRecNo;
    }

    public void setSelectionBatchRecNo(int selectionBatchRecNo) {
        this.selectionBatchRecNo = selectionBatchRecNo;
    }

    public short getReviewed() {
        return reviewed;
    }

    public void setReviewed(short reviewed) {
        this.reviewed = reviewed;
    }

    public int getALevelPoints() {
        return aLevelPoints;
    }

    public void setALevelPoints(int aLevelPoints) {
        this.aLevelPoints = aLevelPoints;
    }

    public short getCommited() {
        return commited;
    }

    public void setCommited(short commited) {
        this.commited = commited;
    }

    public String getCommitedProgramme() {
        return commitedProgramme;
    }

    public void setCommitedProgramme(String commitedProgramme) {
        this.commitedProgramme = commitedProgramme;
    }

    public int getChoiceunderConsideration() {
        return choiceunderConsideration;
    }

    public void setChoiceunderConsideration(int choiceunderConsideration) {
        this.choiceunderConsideration = choiceunderConsideration;
    }

    public BigDecimal getBest3Alevels() {
        return best3Alevels;
    }

    public void setBest3Alevels(BigDecimal best3Alevels) {
        this.best3Alevels = best3Alevels;
    }

    public String getRegion() {
        return region;
    }

    public void setRegion(String region) {
        this.region = region;
    }

    public short getEnoughData() {
        return enoughData;
    }

    public void setEnoughData(short enoughData) {
        this.enoughData = enoughData;
    }

    public short getConverted() {
        return converted;
    }

    public void setConverted(short converted) {
        this.converted = converted;
    }

    public String getLastSchoolAtt() {
        return lastSchoolAtt;
    }

    public void setLastSchoolAtt(String lastSchoolAtt) {
        this.lastSchoolAtt = lastSchoolAtt;
    }

    public String getCapturedBy() {
        return capturedBy;
    }

    public void setCapturedBy(String capturedBy) {
        this.capturedBy = capturedBy;
    }

    public Date getDateCaptured() {
        return dateCaptured;
    }

    public void setDateCaptured(Date dateCaptured) {
        this.dateCaptured = dateCaptured;
    }

    public short getExcludeFromSelection() {
        return excludeFromSelection;
    }

    public void setExcludeFromSelection(short excludeFromSelection) {
        this.excludeFromSelection = excludeFromSelection;
    }

    public String getSelectedBy() {
        return selectedBy;
    }

    public void setSelectedBy(String selectedBy) {
        this.selectedBy = selectedBy;
    }

    public Date getDateSelected() {
        return dateSelected;
    }

    public void setDateSelected(Date dateSelected) {
        this.dateSelected = dateSelected;
    }

    public String getOnlineApplicantId() {
        return onlineApplicantId;
    }

    public void setOnlineApplicantId(String onlineApplicantId) {
        this.onlineApplicantId = onlineApplicantId;
    }

    public short getArchived() {
        return archived;
    }

    public void setArchived(short archived) {
        this.archived = archived;
    }

    public short getPublish() {
        return publish;
    }

    public void setPublish(short publish) {
        this.publish = publish;
    }

    public String getBarcode() {
        return barcode;
    }

    public void setBarcode(String barcode) {
        this.barcode = barcode;
    }

    public String getProgrammeClass() {
        return programmeClass;
    }

    public void setProgrammeClass(String programmeClass) {
        this.programmeClass = programmeClass;
    }

    public int getSelectionBatchTotalApplicants() {
        return selectionBatchTotalApplicants;
    }

    public void setSelectionBatchTotalApplicants(int selectionBatchTotalApplicants) {
        this.selectionBatchTotalApplicants = selectionBatchTotalApplicants;
    }

    public short getDepositPaid() {
        return depositPaid;
    }

    public void setDepositPaid(short depositPaid) {
        this.depositPaid = depositPaid;
    }

    public BigDecimal getTotalDepositPaid() {
        return totalDepositPaid;
    }
    public short getApplicantDepositOverride() {
        return applicantDepositOverride;
    }

    public void setApplicantDepositOverride(short applicantDepositOverride) {
        this.applicantDepositOverride = applicantDepositOverride;
    }

    public String getOverrider() {
        return overrider;
    }

    public void setOverrider(String overrider) {
        this.overrider = overrider;
    }

    public String getNextofKin() {
        return nextofKin;
    }

    public void setNextofKin(String nextofKin) {
        this.nextofKin = nextofKin;
    }

    public String getNextofKinAddress() {
        return nextofKinAddress;
    }

    public void setNextofKinAddress(String nextofKinAddress) {
        this.nextofKinAddress = nextofKinAddress;
    }

    public String getNextofKinAddress1() {
        return nextofKinAddress1;
    }

    public void setNextofKinAddress1(String nextofKinAddress1) {
        this.nextofKinAddress1 = nextofKinAddress1;
    }

    public String getNextofKinAddress2() {
        return nextofKinAddress2;
    }

    public void setNextofKinAddress2(String nextofKinAddress2) {
        this.nextofKinAddress2 = nextofKinAddress2;
    }

    public String getNextofKinPhoneNo() {
        return nextofKinPhoneNo;
    }

    public void setNextofKinPhoneNo(String nextofKinPhoneNo) {
        this.nextofKinPhoneNo = nextofKinPhoneNo;
    }
    public void setTotalDepositPaid(BigDecimal totalDepositPaid) {
        this.totalDepositPaid = totalDepositPaid;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (nUSTUSDApplicantPK != null ? nUSTUSDApplicantPK.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof NUSTUSDApplicant)) {
            return false;
        }
        NUSTUSDApplicant other = (NUSTUSDApplicant) object;
        if ((this.nUSTUSDApplicantPK == null && other.nUSTUSDApplicantPK != null) || (this.nUSTUSDApplicantPK != null && !this.nUSTUSDApplicantPK.equals(other.nUSTUSDApplicantPK))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "nust.systems.workingcrud.entities.NUSTUSDApplicant[ nUSTUSDApplicantPK=" + nUSTUSDApplicantPK + " ]";
    }
    
}
