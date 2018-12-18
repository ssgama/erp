/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package nust.systems.workingcrud.dao;

import java.util.List;
import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.EntityNotFoundException;
import javax.persistence.Query;
import javax.persistence.criteria.CriteriaQuery;
import javax.servlet.http.HttpServletRequest;
import nust.systems.workingcrud.config.PersistanceUnit;
import nust.systems.workingcrud.dao.exceptions.NonexistentEntityException;
import nust.systems.workingcrud.entities.NUSTUSDApplicantChoice;
import nust.systems.workingcrud.entities.NUSTUSDApplicantChoicePK;

/**
 *
 * @author Rodney
 */
public class NUSTUSDApplicantChoiceDao {
    PersistanceUnit pu = PersistanceUnit.getInstance();

    public NUSTUSDApplicantChoiceDao(EntityManagerFactory emf) {
        this.emf = emf;
    }

    public NUSTUSDApplicantChoiceDao() {
    }

    private EntityManagerFactory emf = pu.enFactory;

    public EntityManager getEntityManager() {
        return emf.createEntityManager();
    }

    public void create(NUSTUSDApplicantChoice nustusdapplicantchoice) {
        EntityManager em = null;
        try {
            em = getEntityManager();
            em.getTransaction().begin();
            em.persist(nustusdapplicantchoice);
            em.getTransaction().commit();
        } finally {
            if (em != null) {
                em.close();
            }
        }
    }
    
    
    //Code to insert choices
    
    
      
    public void createChoice(HttpServletRequest request,NUSTUSDApplicantChoice NUSTUSDApplicantChoice){
        
        EntityManager em = null;
        String applicantNumber = request.getParameter("applicantNumber");
        String [] conventional = request.getParameterValues("conv");
        String [] choice = request.getParameterValues("choice_num");
    
        String [] parallel = request.getParameterValues("para");
        String [] choice2 = request.getParameterValues("choice_para");
    
        String [] block = request.getParameterValues("blockprog");
        String [] choice3 =request.getParameterValues("choice_block");
     
    System.out.println("Array reading Done");
    
         int year = 2018;
           
            if (conventional!=null && conventional.length>0){
             int type =1;//conventional
         int sum=0;          
          for(String a: conventional){
          
          if(a.isEmpty()){
          
          }
          else
              sum++;
          }   
            for(int j= 0; j <sum; j++){
            
                  
                  em = getEntityManager();
                em.getTransaction().begin();
                
                
	  Query sql4= em.createNativeQuery("INSERT INTO [TEST_NUST2017].[dbo].[NUST_USD$Applicant Choice]([Applicant No_],[Type],[Choice],[Programme Code],[Score],[Status],[Internal Status],[Processed],[Mandatory Subjects Count],[Mandatory Subjects Points],[Best3Points],[Desired Subjects Count],[Desired Subjects Points],[Commited],[Weiight],[Enough DatA],[Added Advantage],[Year],[Ranking No_],[HasQualification],[Programme Name],[Algorithim Choice],[Location])\n" +
"VALUES('"+applicantNumber+"','"+type+"','"+choice[j]+"','"+conventional[j]+"','0','0','0','0','0','0','0','0','0','0','0','0','0','"+year+"','0','0',(CASE '"+conventional[j]+"' WHEN 'BAR' THEN 'Bachelor of Architectural Studies Honours Degree' WHEN 'BPE' THEN 'Bachelor of Science Honours Degree in Property Development and \n" +
"Estate Management' WHEN 'BQS' THEN 'Bachelor of Quantity Surveying Honours Degree' WHEN 'BTE-AADSHO' THEN 'Bachelor of Technical Education (Honours) Degree in Applied Art & \n" +
"Design' WHEN 'BTE-CCE' THEN 'Bachelor of Technical Education (Honours) Degree in Civil and Construction Engineering' WHEN 'BTE-EEE' THEN 'Bachelor of Technical Education \n" +
"(Honours) Degree in Electrical and Electronic Engineering' WHEN 'BTE-SPH' THEN 'Bachelor of Technical Education Honours Degree in Physics' WHEN 'BTE-TXT' THEN 'Bachelor of \n" +
"Technical Education (Honours) Degree in Clothing, Textile and Fashion Design' WHEN 'BTE-WT' THEN 'Bachelor of Technical Education Honours degree in Wood Technology' \n" +
"WHEN 'CAC' THEN 'Bachelor of Commerce Honours Degree in Accounting' WHEN 'CBA' THEN 'Bachelor of Commerce Honours Degree in Banking' WHEN 'CBA-BIM' THEN 'Bachelor of Commerce \n" +
"Honours Degree in Banking and Investment Management' WHEN 'CBU-HRM' THEN 'Bachelor of Commerce Honours Degree in Human Resources Management'WHEN 'CBU-HRM-B' THEN 'Bachelor of \n" +
"Commerce Honours Degree in Human Resources' WHEN 'CBU-MGT' THEN 'Bachelor of Commerce Honours Degree in Management' WHEN 'CBU-MGTB' THEN 'Bachelor of Commerce Honours Degree in \n" +
"Management' WHEN 'CBU-MKT' THEN 'Bachelor of Commerce Honours Degree in Marketing' WHEN 'CFI' THEN 'Bachelor of Commerce Honours Degree in Finance' WHEN 'CFS' THEN 'Bachelor of \n" +
"Commerce Honours Degree in Fiscal Studies' WHEN 'CIN-ACT' THEN 'Bachelor of Commerce Honours Degree in Actuarial Science' WHEN 'CIN-RSK' THEN 'Bachelor of Commerce Honours Degree in Risk Management and Insurance'\n" +
"WHEN 'EAD-AADC' THEN 'Bachelor of Design Education Honours (BDesED Hons) in Applied Art and Design' WHEN 'EAD-CTFC' THEN 'Bachelor of \n" +
"Design Education Honours (BDesED) in Clothing, Textile and Fashion Design'  WHEN 'EAD-DTEC' THEN 'Bachelor of Design Education  Honours (BDesED Hons) in Design and Technology' \n" +
"WHEN 'EFW' THEN 'Bachelor of Science Honours Degree in Forest Resources and Wildlife Management' WHEN 'EMR' THEN 'Bachelor Of Engineering Honours In Minerals Engineering' WHEN \n" +
"'ESH' THEN 'Bachelor of Science Honours Degree in Environmental Science and Health' WHEN 'EST-ABSC' THEN 'Bachelor of Science Education Honours (BScED Hons) in Accounting and \n" +
"Business Studies' WHEN 'EST-BIOC' THEN 'Bachelor of Science Education Honours (BScEd Hons) in Biology' WHEN 'EST-CHEC' THEN 'Bachelor of Science Education Honours Degree in \n" +
"(BScEd Hons) in Chemistry' WHEN 'EST-CSCC' THEN 'Bachelor of Science Education Honours (BScEd Hons) in Computer Science' WHEN 'BLD' THEN 'Building Studies' WHEN 'EST-MATC' THEN \n" +
"'Bachelor of Science Education Honours (BScEd Hons) in Mathematics and Statistics' WHEN 'EST-PHYC' THEN 'Bachelor of Science Education Honours (BScED) in Physics' WHEN 'ETE-\n" +
"CCE' THEN 'Bachelor of Technology Education Honours (BTechEd Hons) in Civil and Construction Engineering' WHEN 'ETE-EEE' THEN 'Bachelor of Technology Education Honours (BtechEd \n" +
"Hons) in Electrical and Electronic Engineering' WHEN 'ETE-MIE' THEN 'Bachelor of Technology Education Honours (BtechEd Hons) in Mechanical and Industrial Engineering' WHEN \n" +
"'ETE-TEG' THEN 'Bachelor of Technology Education Honours (BTechEd Hons) in Technical Graphics' WHEN 'ETE-WST' THEN 'Bachelor of Technology Education Honours (BTechEd Hons) in \n" +
"Wood Science and Technology' WHEN 'GSU-EGS' THEN 'BSc (Honours) Degree in Geomatics and Surveying' WHEN 'GSU-EMI' THEN 'Bachelor of Engineering Honours Degree in Mining \n" +
"Engineering' WHEN 'GSU-EMR' THEN 'Bachelor of Engineering Honours Degree in Metallurgical Engineering' WHEN 'GSU-LAS' THEN 'Bachelor of Science Honours Degree in Animal \n" +
"Science' WHEN 'GSU-LCS' THEN 'BSc (Honours) in Crop Science' WHEN 'IJM' THEN 'Bachelor of Science Honours Degree in Journalism and Media Studies' WHEN 'IJM-OLD' THEN 'Bachelor \n" +
"of Science Honours Degree in Journalism and Media Studies' WHEN 'ILI' THEN 'Bachelor of Science Honours in Library and Information Science' WHEN 'IMPAE' THEN 'Industrial, \n" +
"Mechanical,Production and Automotive Engineering' WHEN 'AMAT' THEN 'Additional Mathematics' WHEN 'IPU' THEN 'Bachelor of Science Honours Degree in Publishing' WHEN 'IRA' THEN \n" +
"'Bachelor of Science Honours Degree in Records and Archives Management' WHEN 'LAS' THEN 'Bachelor Of Science Honours In Animal Science' WHEN 'LCS' THEN 'Bachelor Of Science \n" +
"Honours In Crop Science' WHEN 'MBBS' THEN 'Bachelor of Medicine and Bachelor of Surgery Degree' WHEN 'SBB' THEN 'Bachelor of Science Honours Degree in Applied Biology' WHEN \n" +
"'SCH' THEN 'Bachelor of Science Honours Degree in Applied Chemistry' WHEN 'SCI' THEN 'Bachelor of Science Honours Degree in Informatics' WHEN 'SCS' THEN 'Bachelor of Science \n" +
"Honours Degree in Computer Science' WHEN 'SMO' THEN 'Bachelor of Science Honours Degree in Operations Research and Statistics' WHEN 'SORS' THEN 'Bachelor of Science Honours \n" +
"Degree  in Operations Research and Statistics' WHEN 'SPH' THEN 'Bachelor of Science Honours Degree in Applied Physics' WHEN 'SRA' THEN 'Bachelor of Science Honours Degree in \n" +
"Radiography' WHEN 'SSC' THEN 'Bachelor of Science Honours Degree in Sports Science and Coaching' WHEN 'TCE' THEN 'Bachelor of Engineering Honours Degree in Chemical Engineering' \n" +
"WHEN 'TCW' THEN 'Bachelor of Engineering Honours Degree in Civil and Water Engineering' WHEN 'TEE' THEN 'Bachelor of Engineering Honours Degree in Electronic Engineering' WHEN \n" +
"'TFE' THEN 'Bachelor of Engineering Honours Degree in Fibre and Polymer Materials Engineering' WHEN 'TIE' THEN 'Bachelor of Engineering Honours Degree in Industrial and \n" +
"Manufacturing Engineering' WHEN 'TST-CH' THEN 'Bachelor of Science Education Honours Degree' WHEN 'TXT' THEN 'Bachelor of Textile Technology Honours Degree'end),'','0')");
       
sql4.executeUpdate();
em.getTransaction().commit();
              
         
              }
            }
    
            else{
            
            System.out.println("Dololoooooooooooooo");
            
            }
    
            //Code for inserting parallel choices starts here
            
             if (parallel!=null && parallel.length>0){
               int typeParra=2;
               int sum=0;          
          for(String a: parallel){
          
          if(a.isEmpty()){
          
          }
          else
              sum++;
          }
               
              for(int k= 0; k <sum; k++){
                  
                //  EntityManager em = null;
                  em = getEntityManager();
                  em.getTransaction().begin();
	Query sql5= em.createNativeQuery("INSERT INTO [TEST_NUST2017].[dbo].[NUST_USD$Applicant Choice]([Applicant No_],[Type],[Choice],[Programme Code],[Score],[Status],[Internal Status],[Processed],[Mandatory Subjects Count],[Mandatory Subjects Points],[Best3Points],[Desired Subjects Count],[Desired Subjects Points],[Commited],[Weiight],[Enough DatA],[Added Advantage],[Year],[Ranking No_],[HasQualification],[Programme Name],[Algorithim Choice],[Location])\n" +
"VALUES('"+applicantNumber+"','"+typeParra+"','"+choice2[k]+"','"+parallel[k]+"','0','0','0','0','0','0','0','0','0','0','0','0','0','"+year+"','0','0',(CASE '"+parallel[k]+"' WHEN 'BPEP' THEN 'Bachelor Science Honours Degree in Property Development and Estate Management' WHEN 'BQSP' THEN 'Bachelor of Quantity Surveying Honours Degree' WHEN 'CACP' THEN 'Bachelor of Commerce Honours Degree in Accounting' WHEN 'CBAP' THEN 'Bachelor of Commerce Honours  Degree in Banking' WHEN 'CBU-HRMP' THEN 'Bachelor of Commerce Honours Degree in Human Resources Management' WHEN 'CBU-MGTP' THEN 'Bachelor of Commerce Honours Degree in Management' WHEN 'CBU-MKTP' THEN 'Bachelor of Commerce Honours Degree in Marketing' WHEN 'CFIP' THEN 'Bachelor of Commerce Honours Degree in Finance' WHEN 'CFSP' THEN 'Bachelor of Commerce Honours Degree in Fiscal Studies' WHEN 'CIN-RSKP' THEN 'Bachelor of Commerce Honours Degree in Risk Management and Insurance' WHEN 'EFWP' THEN 'Forest Resources and Wildlife Management' WHEN 'ESHP' THEN 'Bachelor of Science Honours Degree in Environmental Science and Health' WHEN 'ESPH' THEN 'Bachelor of Science Honours Degree in Environmental Science & Health Honours'\n" +
"WHEN 'TXTP' THEN 'Bachelor of Textile Technology Honours Degree' WHEN 'TCWP' THEN 'Bachelor of Engineering Honours Degree in Civil and Water Engineering' WHEN 'TCEP' THEN 'Bachelor of Engineering Honours Degree in Chemical Engineering' WHEN 'TEEP' THEN 'Bachelor Of Engineering Honours Degree in Electronic Engineering' WHEN 'TIEP' THEN 'Bachelor of Engineering Honours Degree in Industrial and Manufacturing Engineering' WHEN 'SSCP' THEN 'Bachelor of Science Honours Degree in Sports Science and Coaching' WHEN 'SRA-SP' THEN 'Bachelor of Science Special Honours Degree In Radiography' WHEN 'SORSP' THEN 'Bachelor of Science  Honours Degree in Operations Research and Statistics' WHEN 'SBBP' THEN 'Bachelor of Science Honours Degree in Applied Biology' WHEN 'SCHP' THEN 'Bachelor of Science Honours Degree in Applied Chemistry' \n" +
"WHEN 'SCIP' THEN 'Bachelor of Science Honours Degree in Informatics' WHEN 'SCSP' THEN 'Bachelor of Science Honours Degree in Computer Science' WHEN 'SMOP' THEN 'Bachelor of Science Honours Degree in Operations Research and Statistics' WHEN 'SORSP' THEN 'Bachelor of Science Honours Degree  in Operations Research and Statistics' WHEN 'SORS-SP' THEN 'Bachelor of Science  Honours Degree in Operations Research and Statistics' WHEN 'SMAP' THEN 'Bachelor of Science Honours Degree in Applied Mathematics' \n" +
"WHEN 'IRAP' THEN 'Bachelor of Science Honours Degree in Records & Archives Management' WHEN 'IJMP' THEN 'Bachelor of Science Honours Degree in Journalism and Media Studies' WHEN 'ILIP' THEN 'Bachelor of Science Honours Degree in Library and Information Science' WHEN 'SRAP' THEN 'Bachelor of Science Honours Degree in Radiography' WHEN 'SPHP' THEN 'Bachelor of Science Honours Degree in Applied Physics' WHEN 'IPUP' THEN 'Bachelor of Science Honours Degree in Publishing'end),'','0')");
            sql5.executeUpdate();
            em.getTransaction().commit();
              
              
              }
            
            
            
            
    
    }
    
             else{
                 System.out.println("No parallel prograammes chosen");
             }
         //code to insert block programmes    
             if (block!=null && block.length>0){
              int typeBlock=3;
              int sum=0;          
          for(String a: block){
          
          if(a.isEmpty()){
          
          }
          else
              sum++;
          }
              for(int l= 0; l < sum; l++){
                 // EntityManager em = null;
                  em = getEntityManager();
                  em.getTransaction().begin();
                  Query sql6= em.createNativeQuery("INSERT INTO [TEST_NUST2017].[dbo].[NUST_USD$Applicant Choice]([Applicant No_],[Type],[Choice],[Programme Code],[Score],[Status],[Internal Status],[Processed],[Mandatory Subjects Count],[Mandatory Subjects Points],[Best3Points],[Desired Subjects Count],[Desired Subjects Points],[Commited],[Weiight],[Enough DatA],[Added Advantage],[Year],[Ranking No_],[HasQualification],[Programme Name],[Algorithim Choice],[Location])\n" +
" VALUES('"+applicantNumber+"','"+typeBlock+"','"+choice3[l]+"','"+block[l]+"','0','0','0','0','0','0','0','0','0','0','0','0','0','"+year+"','0','0',(CASE '"+block[l]+"' WHEN 'BPEB' THEN 'Bachelor of Science Honours Degree in Property Development and Estate Management' WHEN 'BQSB-HRE' THEN 'Bachelor of Quantity Surveying Honours Degree' WHEN 'BSC-MW' THEN 'Bachelor of Science Honours Degree in Midwifery' WHEN 'CACB' THEN 'Bachelor of Commerce Honours Degree in Accounting' WHEN 'CBU-HRMB' THEN 'Bachelor of Commerce Honours Degree in Human Resources Management' WHEN 'CFIB' THEN 'Bachelor of Commerce  Honours Degree in Finance' WHEN 'CFI-HRE' THEN 'Bachelor of Commerce Honours Degree in Finance' WHEN 'CFS-HRE' THEN 'Bachelor of Commerce Honours Degree in Fiscal Studies (Block Release)-Harare' WHEN 'CIN-RSKB' THEN 'Bachelor of Commerce Honours Degree in Risk Management and Insurance' WHEN 'EAD-AAD' THEN 'Bachelor of Design Education Honours (BDesED Hons) in Applied Art and Design' WHEN 'EAD-CTF' THEN 'Bachelor of Design Education Honours (BDesED Hons) in Clothing, Textile and Fashion Design' WHEN 'EAD-DTE' THEN 'Bachelor of Design Education Honours (BDesED Hons) in Design and Technology' WHEN 'EPH' THEN 'Bachelor of Environmental Science Honours Degree in Public Health' WHEN 'EPH1' THEN 'Bachelor of Environmental Science (Honours) Degree in Public Health' WHEN 'EPH1-JUL' THEN 'Bachelor of Environmental Science (Honours) Degree in Public Health' WHEN 'EPH-JUL' THEN 'Bachelor of Environmental Science Honours Degree in Public Health' \n" +
"WHEN 'EPH-OLD' THEN 'Bachelor of Environmental Science Honours Degree in Public Health' WHEN 'EST-ABS' THEN 'Bachelor of Science Education Honours (BScED Hons) in Accounting and Business Studies' WHEN 'EST-BIO' THEN 'Bachelor of Science Education Honours (BScED Hons) in Biology' WHEN 'EST-CHE' THEN 'Bachelor of Science Education Honours (BScED Hons) in Chemistry' WHEN 'EST-CSC' THEN 'Bachelor of Science Education Honours (BScEd Hons) in Computer Science' WHEN 'EST-EVS' THEN 'Bachelor of Science Education Honours (BScEd Hons) in Environmental Science' WHEN 'EST-MAT' THEN 'Bachelor of Science Education Honours (BScEd Hons) in Mathematics and Statistics' WHEN 'EST-PHY' THEN 'Bachelor of Science Education Honours (BScEd Hons) in Physics' WHEN 'TST-SCS' THEN 'BACHELOR OF SCIENCE EDUCATION HONOURS' WHEN 'TST-SMA' THEN 'BACHELOR OF SCIENCE EDUCATION HONOURS' WHEN 'TTE-AAD' THEN 'Bachelor of Technical Teacher Education Honours Degree in Applied Art and Design' WHEN 'TTE-CCE' THEN 'Bachelor of Technical Education Honours Degree in Civil and Construction  Engineering' WHEN 'TBE-TXT' THEN 'Bachelor of Technical Education Honors Degree in Electrical and Electronic Engineering' WHEN 'TTE-TXT' THEN 'Bachelor of Technical Education Honours Degree in Textile Technology' WHEN 'TST-B' THEN 'Bachelor of Science Education Honours Degree' WHEN 'TBE-SMA' THEN 'Bachelor of Education Honours Degree in Mathematics' WHEN 'TBE-SPH' THEN 'Bachelor of Education Honours Degree in Physics' WHEN 'TBE-TG' THEN 'Bachelor of Education Honours Degree in Technical Graphics' WHEN 'TBE-TIE' THEN 'Bachelor of Technical  Education Honours Degree in Mechanical and Automotive Engineering' WHEN 'TBE-TXT' THEN 'Bachelor of Education Honours Degree in Clothing Textile and Fashion Design' WHEN 'TBE-WT' THEN 'Bachelor of Education Honours Degree in Wood Technology' WHEN 'TBE CAC' THEN 'Bachelor of Education Honours Degree in Accounting' WHEN 'TBE-ADD' THEN 'Bachelor of Education Honours Degree in Art and Design' WHEN 'TBE-ENG' THEN 'Bachelor of Education  Honours Degree in Mechanical Engineering' WHEN 'TBE-SBB' THEN 'Bachelor of Education Honours Degree in Biology' WHEN 'TBE-SCH' THEN 'Bachelor of Education Honours Degree in Chemistry' WHEN 'TBE-SCH-II' THEN 'Bachelor of Education Honours Degree in Chemistry' WHEN 'TBE-SCS' THEN 'Bachelor of Education Honours Degree in Computer Science' WHEN 'SSCB' THEN 'Bachelor of Science Honours Degree in Sports Science and Coaching' WHEN 'SES' THEN 'Bachelor of Science Honours Degree in Earth Science' WHEN 'SMA' THEN 'Bachelor of Science Honours Degree in Applied Mathematics' WHEN 'SCIB' THEN 'Bachelor of Science Honours Degree in Informatics' WHEN 'IRAB' THEN 'Bachelor of Science Honours Degree in Records and Archives Management'end),'','0')");
      
                  sql6.executeUpdate();
                  em.getTransaction().commit();
    }
             
             }
             else{
                 System.out.println("Choices have been made");
             } 
    
    
    }
    
      public void edit(NUSTUSDApplicantChoice nustusdapplicantchoice) throws NonexistentEntityException, Exception {
        EntityManager em = null;
        try {
            em = getEntityManager();
            em.getTransaction().begin();
            nustusdapplicantchoice = em.merge(nustusdapplicantchoice);
            em.getTransaction().commit();
        } catch (Exception ex) {
            String msg = ex.getLocalizedMessage();
            if (msg == null || msg.length() == 0) {
                NUSTUSDApplicantChoicePK nustusdapplicantchoicepk ;
                nustusdapplicantchoicepk = nustusdapplicantchoice.getNUSTUSDApplicantChoicePK();
                if (findApplicant(nustusdapplicantchoicepk) == null) {
                    throw new NonexistentEntityException("The student with id " + nustusdapplicantchoicepk + " no longer exists.");
                }
            }
            throw ex;
        } finally {
            if (em != null) {
                em.close();
            }
        }
    }

    public List<NUSTUSDApplicantChoice> findChoiceEntities() {
        return findChoiceEntities(true, -1, -1);
    }

    public List<NUSTUSDApplicantChoice> findChoiceEntities(int maxResults, int firstResult) {
        return findChoiceEntities(false, maxResults, firstResult);
    }

    private List<NUSTUSDApplicantChoice> findChoiceEntities(boolean all, int maxResults, int firstResult) {
        EntityManager em = getEntityManager();
        try {
            CriteriaQuery cq = em.getCriteriaBuilder().createQuery();
            cq.select(cq.from(NUSTUSDApplicantChoice.class));
            Query q = em.createQuery(cq);
            if (!all) {
                q.setMaxResults(maxResults);
                q.setFirstResult(firstResult);
            }
            return q.getResultList();
        } finally {
            em.close();
        }
    }

    public NUSTUSDApplicantChoice findApplicant(NUSTUSDApplicantChoicePK nustusdapplicantchoicepk) {
        EntityManager em = getEntityManager();
        try {
            return em.find(NUSTUSDApplicantChoice.class, nustusdapplicantchoicepk);
        } finally {
            em.close();
        }
    }
    
    public void destroy(NUSTUSDApplicantChoicePK nustusdapplicantchoicepk) throws NonexistentEntityException {
        EntityManager em = null;
        try {
            em = getEntityManager();
            em.getTransaction().begin();
            NUSTUSDApplicantChoice nustusdapplicantchoice;
            try {
                nustusdapplicantchoice = em.getReference(NUSTUSDApplicantChoice.class, nustusdapplicantchoicepk);
                nustusdapplicantchoice.getNUSTUSDApplicantChoicePK();
            } catch (EntityNotFoundException enfe) {
                throw new NonexistentEntityException("The student with id " + nustusdapplicantchoicepk + " no longer exists.", enfe);
            }
            em.remove(nustusdapplicantchoice);
            em.getTransaction().commit();
        } finally {
            if (em != null) {
                em.close();
            }
        }
    } 
    
    public void getChoice(){
    
    
    
    
    }
    
     public void createPostChoice(HttpServletRequest request,NUSTUSDApplicantChoice NUSTUSDApplicantChoice){
				
EntityManager em =null;
String applicantNumber = request.getParameter("applicantNumber"); 
String programmeCode = request.getParameter("post");
String mastersSpecify = request.getParameter("mastersSpecify").toUpperCase();
 int year = 2019;
 em = getEntityManager();
 em.getTransaction().begin();

if (programmeCode!=null){


 Query sql1 =em.createNativeQuery("INSERT INTO [TEST_NUST2017].[dbo].[NUST_USD$Applicant Choice]([Applicant No_],[Type],[Choice],[Programme Code],[Score],[Status],[Internal Status],[Processed],[Mandatory Subjects Count],[Mandatory Subjects Points],[Best3Points],[Desired Subjects Count],[Desired Subjects Points],[Commited],[Weiight],[Enough DatA],[Added Advantage],[Year],[Ranking No_],[HasQualification],[Programme Name],[Algorithim Choice],[Location])\n" +
"     VALUES('"+applicantNumber+"','3','1','"+programmeCode+"','0','0','0','0','0','0','0','0','0','0','0','0','0','"+year+"','0','0',(CASE '"+programmeCode+"' WHEN 'BARCP' THEN 'Bachelor of Architecture Degree' WHEN 'CTA' THEN 'Certificate in Theory of Accounting '\n" +
" WHEN 'DDM' THEN 'Diploma in Development and Disaster Management' WHEN 'DPEEN' THEN 'Postgraduate Diploma in Electronic Engineering'\n" +
" WHEN 'EMBA' THEN 'Master of Business Administration Degree (Executive) - Bulawayo Cohort' WHEN 'EMBA-HRE' THEN 'Master of Business Administration (Executive) - Harare Cohort '\n" +
" WHEN 'GMBA' THEN 'Master of Business Administration Degree (General) - Bulawayo Cohort'\n" +
" WHEN 'GMBA-HRE' THEN 'Master of Business Administration Degree (General) - Harare Cohort' WHEN 'GMBA-HRE-J' THEN 'Master of Business Administration Degree (General) - Harare Cohort' WHEN 'GMBA-J' THEN 'Master of Business Administration Degree (General) - Bulawayo Cohort '\n" +
" WHEN 'MACC' THEN 'Masters Accounting (Conventional)' WHEN 'MACCP' THEN 'Masters Accounting (Parallel)'\n" +
" WHEN 'MARC' THEN 'MASTER OF ARCHITECTURE DEGREE' WHEN 'MARCB' THEN 'Master of Architecture Degree'\n" +
" WHEN 'MBA' THEN 'Business Administration' WHEN 'MBA-BARC' THEN 'MBA- Barclays' WHEN 'MBAN' THEN 'Master of Science Degree in Banking and Financial Services'\n" +
" WHEN 'MBF' THEN 'Master of Business Administration Degree in Banking and Finance' WHEN 'MBF-BARC' THEN 'Master Of Business Administration in Banking and Financial Services '\n" +
" WHEN 'MBFE' THEN 'Master of Science Degree in Banking and Financial Economics (Bulawayo Cohort)' WHEN 'MBFE-HRE' THEN 'Master of Science Degree in Banking and Financial Economics (Harare Cohort)'\n" +
" WHEN 'MBF-HRE' THEN 'Master of Bussiness Administration in Banking and Financial Economics (Harare Cohort)'\n" +
" WHEN 'MCEN' THEN 'Chemical Engineering' WHEN 'MCH' THEN 'Applied Chemistry' \n" +
" WHEN 'MCSC' THEN 'Master of Science Degree in Computer Science'\n" +
" WHEN 'MCSCB' THEN 'Master of Science Degree in Computer Science (Block Release)' WHEN 'MCWE' THEN 'Civil & Water Engineering '\n" +
" WHEN 'MEBC' THEN 'Master of Science Degree in Ecotourism and Biodiversity Conservation' WHEN 'MEEN' THEN 'Electronic Engineering' WHEN 'MEENP' THEN 'Electronic Engineering' WHEN 'MFIN' THEN 'Master of Science Degree in Finance and Investment (Bulawayo Cohort)' WHEN 'MFRW' THEN 'Forest Resources & Management' WHEN 'MGPH' THEN 'Master of Science Degree in Geophysics' WHEN 'MIE-MEOM' THEN 'Master of Engineering Degree in Manufacturing Engineering and Operations Management'\n"+
" WHEN 'MIE-MSOM' THEN 'Master of Engineering Degree in Manufacturing Systems and Operations Management' WHEN 'MIE-MSOM-O' THEN 'Master of Engineering Degree in Manufacturing Systems and Operations Management' WHEN 'MIEN' THEN 'Industrial & Manufacturing Engineering' WHEN 'MIENP' THEN 'Industrial & Manufacturing Engineering' WHEN 'MIMT' THEN 'Industrial Mathematics' WHEN 'MLA' THEN 'Masters of Landscape Architecture Degree' WHEN 'MLAO' THEN 'Lasers and Applied Optics'\n"+
" WHEN 'MLISP' THEN 'Library & Information Science' WHEN 'MMES' THEN 'Medicine & Surgery' WHEN 'MMKT' THEN 'Msc Marketing' WHEN 'MMT' THEN 'Applied Mathematics' WHEN 'MMTP' THEN 'Applied Mathematics' WHEN 'MPEEN' THEN 'Electronic Engineering' WHEN 'MPHFRW' THEN 'Forest Resources & Management' WHEN 'MPHIL-AAD' THEN 'MASTER OF PHYLOSOPHY IN APPLIED ART AND DESIGN' WHEN 'MPHIL-ACT' THEN 'MASTER OF PHILOSOPHY DEGREE IN ACTUARIAL SCIENCE' WHEN 'MPHIL-BAR' THEN 'M Phil Architecture'\n"+
" WHEN 'MPHIL-BFE' THEN 'Master of Philosophy Degree In Banking and Financial Economics' WHEN 'MPHIL-CAC' THEN 'Master of Philosophy Degree in Accounting' WHEN 'MPHIL-CFS' THEN 'Master of Philosophy Degree in Fiscal Studies' WHEN 'MPHIL-DM' THEN 'Master of Philosophy Degree in Disaster Management' WHEN 'MPHILESH' THEN 'MPHIL ENVIRONMENTAL SCIENCE AND HEALTH' WHEN 'MPHIL-FENG' THEN 'Master of Philosophy Degree in Financial Engineering' WHEN 'MPHIL-FIN' THEN 'Master of Philosophy Degree in Finance and Investment' WHEN 'MPHIL-FRW' THEN 'Master of Philosophy in Forest Resources and wildlife Management'\n"+
" WHEN 'MPHIL-MGT' THEN 'Master of Philosophy in Records and Archives Management' WHEN 'MPHIL' THEN 'Masters of Philosophy in Management' WHEN 'MPHIL-MKT' THEN 'Master of Philosophy Degree in Marketing' WHEN 'MPHIL-OR' THEN 'Master of Philosophy Degree in Operations Research' WHEN 'MPHIL-SBB' THEN 'Master of Philosophy Degree in Applied Biology and Biochemistry' WHEN 'MPHIL-SCH' THEN 'Master of Philosophy Degree in Applied Chemistry' WHEN 'MPHIL-SCS' THEN 'Master of Philosophy in Computer Science'\n"+
" WHEN 'MPHIL-SMA' THEN 'MASTER OF PHILOSOPHY (Mphil) DEGREE PROGRAMME:DEPARTMENT OF APPLIED MATHEMATICS' WHEN 'MPHIL-SMO' THEN 'MASTER OF PHILOSOPHY (Mphil) DEGREE PROGRAMME:DEPARTMENT OF APPLIED MATHEMATICS' WHEN 'MPHIL-SPH' THEN 'Master of Philosophy (Mphil) Degree Programme: Department of Applied Physics' WHEN 'MPHILSSC' THEN 'MPhil Sports Science & Coaching' WHEN 'MPHIL-TCW' THEN 'MASTER OF PHILOSOPHY IN CIVIL AND WATER ENGINEERING' WHEN 'MSC-CAC' THEN 'Master Of Science Degree in Accounting And Finance (Bulawayo Cohort)'\n"+
" WHEN 'MSC-CACHRE' THEN 'Master of Science Degree in Accounting and Finance (Harare Cohort)' WHEN 'MSC-CFS' THEN 'Master of Science Degree in Fiscal Studies' WHEN 'MSC-CFSHRE' THEN 'Master of Science Degree in Fiscal Studies (Harare)' WHEN 'MSC-CPM' THEN 'Master of Science Degree in Construction Project Management' WHEN 'MSC-DM' THEN 'Master of Science Degree in Disaster Management (Bulawayo Cohort)' WHEN 'MSC-DMHRE' THEN 'Master of Science Degree in Disaster Management (Harare Cohort)' WHEN 'MSC-DMHREO' THEN 'Master of Science Degree in Disaster Management (Harare)' WHEN 'MSC-DS' THEN 'Master of Science Degree in Development Studies (Bulawayo Cohort)' WHEN 'PS' THEN 'Physical Science' WHEN 'MSCDS-HRE' THEN 'Master of Science Degree in Development Studies (Harare Cohort)'\n"+
 " WHEN 'MSCDS-HREO' THEN 'Master of Science Degree in Development Studies' WHEN 'MSC-DSO' THEN 'Master of Science Degree in Environmental Health' WHEN 'MSC-FENG' THEN 'Master of Science Degree in Financial Engineering (Bulawayo Cohort)' WHEN 'MSC-FENGHR' THEN 'Master of Science Degree in Financial Engineering (Bulawayo Cohort)'\n"+
" WHEN 'MSC-FINHRE' THEN 'Master of Science Degree in Finance and Investment (Harare Cohort)' WHEN 'MSC-IJM' THEN 'Master of Science Degree in Journalism and Media Studies' WHEN 'MSC-ILI' THEN 'Master of Science Degree in Library and Information Science'\n"+
" WHEN 'MSC-ILI-2016' THEN 'Master of Science Degree in Library and Information Science' WHEN 'MSC-IRA' THEN 'Master of Science Degree in Records and Archives Management' WHEN 'MSC-IS' THEN 'Master of Science Degree in Information Systems' WHEN 'MSC-IS5' THEN 'Master of Science Degree in Information Systems (Block Release)' WHEN 'MSC-LAO' THEN 'Master of Science Degree in Lasers and Optics'\n"+
 "WHEN 'MSC-MBB' THEN 'Master of Science Degree in Applied Microbiology and Biotechnology' WHEN 'MSC-MKT' THEN 'Master of Science Degree in Marketing' WHEN 'MSC-MKTHRE' THEN 'Master of Science Degree in Marketing (Harare Cohort' WHEN 'MSC-MPH' THEN 'Master of Science Degree in Medical Physics'\n"+
" WHEN 'MSC-MWE' THEN 'Master of Science Degree in Midwifery Education' WHEN 'MSC-RSK' THEN 'Master of Science Degree in Risk Management and Insurance (Bulawayo Cohort)' WHEN 'MSC-RSKHRE' THEN 'Master of Science Degree in Risk Management and Insurance (Harare Cohort)' WHEN 'MSCRSK-HRE' THEN 'Master of Science Degree in Risk Management and Insurance (Harare Cohort)'\n"+
" WHEN 'MSC-SMA' THEN 'Master of Science Degree in Applied Mathematical Modelling' WHEN 'MSC-SMO' THEN 'Master of Science Degree in Operations Research' WHEN 'MSC-SMO-II' THEN 'Master of Science Degree in Operations Research' WHEN 'MSC-SORS' THEN 'Master of Science Degree in Operations Research and Statistics' WHEN 'MSC-SRA' THEN 'Master of Science Degree in Radiography'\n"+
" WHEN 'MSC-SSC' THEN 'Sports Science and Coaching' WHEN 'MSE-ABS' THEN 'MASTER OF SCIENCE EDUCATION IN ACCOUNTING AND BUSINESS STUDIES' WHEN 'MSE-BIO' THEN 'MASTER OF SCIENCE EDUCATION IN BIOLOGY' WHEN 'MSE-CHE' THEN 'MASTER OF SCIENCE EDUCATION IN CHEMISTRY' WHEN 'MSE-CSC' THEN 'MASTER OF SCIENCE EDUCATION IN COMPUTER SCIENCE' WHEN 'MSE-EVS' THEN 'MASTER OF TECHNOLOGY EDUCATION IN ENVIRONMENTAL SCIENCE'\n"+
" WHEN 'MSE-MAT' THEN 'MASTER OF SCIENCE EDUCATION IN MATHEMATICS AND STATISTICS' WHEN 'MSE-PHY' THEN 'MASTER OF SCIENCE EDUCATION IN PHYSICS' WHEN 'MTE-AAD' THEN 'MASTER OF TECHNOLOGY EDUCATION IN APPLIED ART AND DESIGN' \n"+
" WHEN 'MTE-CCE' THEN 'MASTER OF TECHNOLOGY EDUCATION IN CIVIL AND CONSTRUCTION ENGINEERING' WHEN 'MTE-CTF' THEN 'MASTER OF TECHNOLOGY EDUCATION IN CLOTHING TEXTILE AND FASHION DESIGN' WHEN 'MTE-DTE' THEN 'MASTER OF TECHNOLOGY EDUCATION IN DESIGN AND TECHNOLOGY' WHEN 'MTE-EEE' THEN 'MASTER OF TECHNOLOGY EDUCATION IN ELECTRICAL AND ELECTRONIC ENGINEERING'\n"+
" WHEN 'MTE-MIE' THEN 'MASTER OF TECHNOLOGY EDUCATION IN MECHANICAL AND INDUSTRIAL ENGINEERING' WHEN 'MTE-TEG' THEN 'MASTER OF TECHNOLOGY EDUCATION IN TECHNICAL GRAPHICS'\n"+
" WHEN 'MTE-WST' THEN 'MASTER OF TECHNOLOGY EDUCATION IN WOOD SCIENCE TECHNOLOGY' WHEN 'MTTE' THEN 'Technical Teacher Education' WHEN 'MTTE' THEN 'Technical Teacher Education' WHEN 'MUD' THEN 'Master of Urban Design Degree'\n"+
" WHEN 'MUD-2016' THEN 'Master of Urban Design Degree' WHEN 'PGCED' THEN 'PostGraduate Certificate in Education' WHEN 'PGCED2' THEN 'Post Graduate Certificate in Education Intake 2' WHEN 'PGDDM' THEN 'PostGraduate Diploma in Disaster Management'\n"+
 " WHEN 'PGDEEN' THEN 'Electronic Engineering' WHEN 'PGDIEN' THEN 'Industrial and Manufacturing Engineering' WHEN 'PGDLIS' THEN 'Postgraduate Diploma in Library and Information Science' WHEN 'PGDM' THEN 'Post Graduate Diploma in Management' WHEN 'PGDPM' THEN 'PostGraduate Diploma in Public Management'\n"+ 
" WHEN 'PGDSMO' THEN 'Post Graduate Diploma in applied Maths' WHEN 'PHD-ESH' THEN 'PHD Environmental Science' WHEN 'PUMBA' THEN 'Master of Business Administration in Public Management' WHEN 'SMBA' THEN 'Master of Business Administration Degree in Strategic Management (Bulawayo Cohort)'\n"+
" WHEN 'SMBA-HRE' THEN 'Master of Business Administration Degree in Strategic Management (Harare Cohort)' WHEN 'SMBA-HRE' THEN 'Master of Business Administration Degree in Strategic Management (Harare Cohort)' WHEN 'SMBA-HRE-J' THEN 'Master of Business Administration Degree in Strategic Management (Harare Cohort)' WHEN 'SMBA-J' THEN 'Master of Business Administration Degree in Strategic Management (Bulawayo Cohort)'end),'','0')");
  sql1.executeUpdate();
em.getTransaction().commit();
}

if (mastersSpecify!=null){
    em = getEntityManager();
 em.getTransaction().begin();

 Query sql11=em.createNativeQuery("UPDATE [TEST_NUST2017].[dbo].[NUST_USD$Applicant] SET [Proposed Field of Study] = '"+mastersSpecify+"' WHERE [No_] = '79657'");
 
 sql11.executeUpdate();
 em.getTransaction().commit();
 
 }
    }
    
    
    
    
}
