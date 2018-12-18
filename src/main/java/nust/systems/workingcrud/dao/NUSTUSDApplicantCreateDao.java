package nust.systems.workingcrud.dao;

import java.text.SimpleDateFormat;
import java.util.Date;
import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Query;
import javax.servlet.RequestDispatcher;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import nust.systems.workingcrud.config.PersistanceUnit;
import nust.systems.workingcrud.entities.NUSTUSDApplicant;
import nust.systems.workingcrud.entities.NUSTUSDNoSeriesLine;
import nust.systems.workingcrud.services.Writeshit;
import org.springframework.web.bind.annotation.SessionAttributes;

/**
 *
 * @author User
 */
@SessionAttributes("applicantNumber")
public class NUSTUSDApplicantCreateDao {
    
    PersistanceUnit pu = PersistanceUnit.getInstance();

    public NUSTUSDApplicantCreateDao(EntityManagerFactory emf) {
        this.emf = emf;
    }

    public NUSTUSDApplicantCreateDao() {
    }

    private EntityManagerFactory emf = pu.enFactory;

    public EntityManager getEntityManager() {
        return emf.createEntityManager();
    }
    //method for saving post personal details
    
    public void createPostApplicant(HttpServletRequest request,NUSTUSDApplicant NUSTUSDApplicant){
   
    
    
                String applicantNumber = request.getParameter("applicantNumber");
                String Name = request.getParameter("Name").toUpperCase();
                String title = request.getParameter("title").toUpperCase();
                String Surname = request.getParameter("Surname").toUpperCase();
                String IdNumber = request.getParameter("IdNumber");
                String Sex = request.getParameter("Sex");
                String MaritalStatus = request.getParameter("MaritalStatus");
                String Dob = request.getParameter("Dob");
                String Pob = request.getParameter("Pob").toUpperCase();
                String Nationality = request.getParameter("Nationality");
                String Citizenship = request.getParameter("Citizenship");
                String PermitHeld = request.getParameter("PermitHeld");
                String PermanentResident = request.getParameter("PermanentResident");
                String Disability = request.getParameter("Disability");
                String Specify = request.getParameter("Specify");
                String Address1 = request.getParameter("Address1");
                String Address2 = request.getParameter("Address2");
                String City = request.getParameter("City");
                String HomeTelephone = request.getParameter("HomeTelephone");
                String MobileNumber = request.getParameter("MobileNumber");
                String LastSchoolAttended = request.getParameter("LastSchoolAttended");
                String Email =request.getParameter("Email");
                String EntryType =request.getParameter("EntryType");
                 HttpSession session = request.getSession(true); 
                 RequestDispatcher rd;
                System.out.println("this is the applicant is "+applicantNumber);
                 session.setAttribute("appId", applicantNumber);
           
           
                System.out.println("Form values obtained rrr");
                SimpleDateFormat sdf = new SimpleDateFormat("MM/dd/yy");
                Date now = new Date();
                Date date = new Date();
                String strDate = sdf.format(date);
                EntityManager em =null;
                NUSTUSDNoSeriesLineDao dd = new NUSTUSDNoSeriesLineDao();
                NUSTUSDNoSeriesLine n = new NUSTUSDNoSeriesLine();
                
 //Method to get last number from NoSeriesLine and updating it by 1
 
// dd.update(applicantNumber, n);
 em = getEntityManager();
 em.getTransaction().begin();


 Query sql1 =em.createNativeQuery("UPDATE [TEST_NUST2017].[dbo].[NUST_USD$Applicant] SET [Surname] ='"+Surname+"' , [Title] ='"+title+"' ,[Search Name] = '"+Surname+"' ,[Forenames] = '"+Name+"' ,[Permanent Address] = '"+Address1+"'\n" +
",[Permanent Address 2] = '"+Address2+"' ,[City] = '"+City+"' ,[Phone (H)] = '"+HomeTelephone+"'  ,[Marital Status] = '"+MaritalStatus+"' ,[Sex] = '"+Sex+"'\n" +
",[Nationality] = '"+Nationality+"' ,[Citizenship] = '"+Citizenship+"' ,[Permanent Resident]= '"+PermanentResident+"' ,[Residence Permit Description] = '"+PermitHeld+"'\n" +
",[Date of Birth] = '"+Dob+"' ,[Place of Birth] = '"+Pob+"'  ,[National I_D_ No_] = '"+IdNumber+"' ,[Physical Disability] = '"+Disability+"' ,[Physical Disability Detail] = \n" +
"'"+Specify+"' ,[Permanent Address 3] = '"+City+"' ,[Contact Address] = '"+Address1+"' ,[Contact Address 1] = '"+Address2+"' ,[Contact Address 2] = '"+City+"'\n" +
",[Phone (W)] = '"+MobileNumber+"'\n" +
",[Cell] = '"+MobileNumber+"' ,[E-Mail] = '"+Email+"',[Work Address] = 'NULL'  ,[Employee No] ='NULL'  ,[Last School Att_] = 'NULL'\n" +
"WHERE [No_]= '"+applicantNumber+"'");
  sql1.executeUpdate();
//em.persist(NUSTUSDApplicantQualification);
em.getTransaction().commit();


    } 
       
       
    
    
    
     //method for saving personal deatils of an normal and special undergrad applicant
    
       public void createApplicant(HttpServletRequest request,NUSTUSDApplicant NUSTUSDApplicant){
         
           
                String applicantNumber = request.getParameter("applicantNumber");
                String Name = request.getParameter("Name").toUpperCase();
                String title = request.getParameter("title").toUpperCase();
                String Surname = request.getParameter("Surname").toUpperCase();
                String IdNumber = request.getParameter("IdNumber");
                String Sex = request.getParameter("Sex");
                String MaritalStatus = request.getParameter("MaritalStatus");
                String Dob = request.getParameter("Dob");
                String Pob = request.getParameter("Pob").toUpperCase();
                String Nationality = request.getParameter("Nationality");
                String Citizenship = request.getParameter("Citizenship");
                String PermitHeld = request.getParameter("PermitHeld");
                String PermanentResident = request.getParameter("PermanentResident");
                String Disability = request.getParameter("Disability");
                String Specify = request.getParameter("Specify");
                String Address1 = request.getParameter("Address1");
                String Address2 = request.getParameter("Address2");
                String City = request.getParameter("City");
                String HomeTelephone = request.getParameter("HomeTelephone");
                String MobileNumber = request.getParameter("MobileNumber");
                String LastSchoolAttended = request.getParameter("LastSchoolAttended");
                String StartYear = request.getParameter("StartYear");
                String EndYear = request.getParameter("EndYear");
                String Email =request.getParameter("Email");
                String EntryType =request.getParameter("EntryType");
                 HttpSession session = request.getSession(true); 
                 RequestDispatcher rd;
                System.out.println("this is the applicant is "+applicantNumber);
                 session.setAttribute("appId", applicantNumber);
           
           
                System.out.println("Form values obtained rrr");
                SimpleDateFormat sdf = new SimpleDateFormat("MM/dd/yy");
                Date now = new Date();
                Date date = new Date();
                String strDate = sdf.format(date);
                EntityManager em =null;
                NUSTUSDNoSeriesLineDao dd = new NUSTUSDNoSeriesLineDao();
                NUSTUSDNoSeriesLine n = new NUSTUSDNoSeriesLine();
                
 //Method to get last number from NoSeriesLine and updating it by 1
 
// dd.update(applicantNumber, n);
 em = getEntityManager();
 em.getTransaction().begin();


 Query sql1 =em.createNativeQuery("UPDATE [TEST_NUST2017].[dbo].[NUST_USD$Applicant] SET [Surname] ='"+Surname+"' , [Title] ='"+title+"' ,[Search Name] = '"+Surname+"' ,[Forenames] = '"+Name+"' ,[Permanent Address] = '"+Address1+"'\n" +
",[Permanent Address 2] = '"+Address2+"' ,[City] = '"+City+"' ,[Phone (H)] = '"+HomeTelephone+"'  ,[Marital Status] = '"+MaritalStatus+"' ,[Sex] = '"+Sex+"'\n" +
",[Nationality] = '"+Nationality+"' ,[Citizenship] = '"+Citizenship+"' ,[Permanent Resident]= '"+PermanentResident+"' ,[Residence Permit Description] = '"+PermitHeld+"'\n" +
",[Date of Birth] = '"+Dob+"' ,[Place of Birth] = '"+Pob+"'  ,[National I_D_ No_] = '"+IdNumber+"' ,[Physical Disability] = '"+Disability+"' ,[Physical Disability Detail] = \n" +
"'"+Specify+"' ,[Permanent Address 3] = '"+City+"' ,[Contact Address] = '"+Address1+"' ,[Contact Address 1] = '"+Address2+"' ,[Contact Address 2] = '"+City+"'\n" +
",[Phone (W)] = '"+MobileNumber+"' ,[Last School Attended] = '"+LastSchoolAttended+"' ,[Last School Start Year] = '"+StartYear+"' ,[Last School End Year] = '"+EndYear+"'\n" +
",[Cell] = '"+MobileNumber+"' ,[E-Mail] = '"+Email+"',[Work Address] = 'NULL'  ,[Employee No] ='NULL'  ,[Last School Att_] = 'NULL'\n" +
"WHERE [No_]= '"+applicantNumber+"'");
  sql1.executeUpdate();
//em.persist(NUSTUSDApplicantQualification);
em.getTransaction().commit();


    } 
       
       
       public String createId(String EntryType){
       
       Writeshit ws = new Writeshit();
       String applicantNumber =ws.createStudent();
       EntityManager em =null;
 
 //Method to get last number from NoSeriesLine and updating it by 1
 
// dd.update(applicantNumber, n);
 em = getEntityManager();
 em.getTransaction().begin();

Query sql1 =em.createNativeQuery( "INSERT INTO [TEST_NUST2017].[dbo].[NUST_USD$Applicant]  \n" +
"           ([No_]\n" +
"           ,[Customer No_]\n" +
"           ,[Surname]\n" +
"           ,[Search Name]\n" +
"           ,[Forenames]\n" +
"           ,[Permanent Address]\n" +
"           ,[Permanent Address 2]\n" +
"           ,[City]\n" +
"           ,[Phone (H)]\n" +
"           ,[E-Mail]\n" +
"           ,[Year]\n" +
"           ,[Entry Type]\n" +
"           ,[Title]\n" +
"           ,[Previous Surname]\n" +
"           ,[Marital Status]\n" +
"           ,[Sex]\n" +
"           ,[Nationality]\n" +
"           ,[Citizenship]\n" +
"           ,[Permanent Resident]\n" +
"           ,[Residence Permit Description]\n" +
"           ,[Period of Residence]\n" +
"           ,[Date of Birth]\n" +
"           ,[Place of Birth]\n" +
"           ,[Birth Certificate No_]\n" +
"           ,[National I_D_ No_]\n" +
"           ,[Physical Disability]\n" +
"           ,[Physical Disability Detail]\n" +
"           ,[Disability Code]\n" +
"           ,[Permanent Address 3]\n" +
"           ,[Contact Address]\n" +
"           ,[Contact Address 1]\n" +
"           ,[Contact Address 2]\n" +
"           ,[Phone (W)]\n" +
"           ,[Proposed Field of Research]\n" +
"           ,[Last School Attended]\n" +
"           ,[Last School Address]\n" +
"           ,[Last School Address 1]\n" +
"           ,[Last School Start Year]\n" +
"           ,[Last School End Year]\n" +
"           ,[Former Student]\n" +
"           ,[Student Registration No_]\n" +
"           ,[Work Experience]\n" +
"           ,[Sponsor Type]\n" +
"           ,[Sponsor Name]\n" +
"           ,[Staff Dependant]\n" +
"           ,[Staff Member]\n" +
"           ,[Application Date]\n" +
"           ,[National I_D_ Verified]\n" +
"           ,[Birth Certificate Verified]\n" +
"           ,[Marriage Cert_ Verified]\n" +
"           ,[O_Level Cert_ Verified]\n" +
"           ,[A_Level Cert_ Verified]\n" +
"           ,[School Cert_ Verified]\n" +
"           ,[University Cert_ Verified]\n" +
"           ,[Other Cert_ Verified]\n" +
"           ,[Receipt Ack_]\n" +
"           ,[Receipt Prev_]\n" +
"           ,[Sought Transcript]\n" +
"           ,[Sought Ref]\n" +
"           ,[Sought Ref 1]\n" +
"           ,[Received Transcript]\n" +
"           ,[Received Ref 1]\n" +
"           ,[Received Ref 2]\n" +
"           ,[Received Ref 3]\n" +
"           ,[P_A Admit]\n" +
"           ,[Reject]\n" +
"           ,[Withdraws]\n" +
"           ,[Letter (R;NQ)]\n" +
"           ,[Research Doc_ Seen]\n" +
"           ,[Acceptance Letter Received]\n" +
"           ,[No_ Series]\n" +
"           ,[Customer Type]\n" +
"           ,[Proposed Field of Study]\n" +
"           ,[Proposed Title of Thesis]\n" +
"           ,[Place of Work]\n" +
"           ,[Facilities for Research]\n" +
"           ,[Prop_ Supervisor]\n" +
"           ,[Prop_ Joint Supervisor]\n" +
"           ,[Prop_ Assoc_ Supervisor]\n" +
"           ,[Prop_ Starting Date]\n" +
"           ,[Prop_ Min_ Study Period]\n" +
"           ,[Source of Funding (self)]\n" +
"           ,[Source of Funding (research)]\n" +
"           ,[Sponsorship Applied For]\n" +
"           ,[Process Applicant]\n" +
"           ,[Processed]\n" +
"           ,[Selected Programme]\n" +
"           ,[Cell]\n" +
"           ,[Work Address]\n" +
"           ,[File Location]\n" +
"           ,[Applicant Type]\n" +
"           ,[Original Applicant No_]\n" +
"           ,[Employee No]\n" +
"           ,[SelectionBatchName]\n" +
"           ,[SelectionBatchRecNo]\n" +
"           ,[Reviewed]\n" +
"           ,[A_Level Points]\n" +
"           ,[commited]\n" +
"           ,[commitedProgramme]\n" +
"           ,[choiceunderConsideration]\n" +
"           ,[Best3Alevels]\n" +
"           ,[Region]\n" +
"           ,[Enough Data]\n" +
"           ,[Converted]\n" +
"           ,[Last School Att_]\n" +
"           ,[Captured By]\n" +
"           ,[Date Captured]\n" +
"           ,[ExcludeFromSelection]\n" +
"           ,[Selected By]\n" +
"           ,[Date Selected]\n" +
"           ,[OnlineApplicantId]\n" +
"           ,[Archived]\n" +
"           ,[Publish]\n" +
"           ,[Barcode]\n" +
"           ,[Programme Class]\n" +
"           ,[SelectionBatchTotalApplicants]\n" +
"           ,[DepositPaid]\n" +
"           ,[TotalDepositPaid]\n" +
"           ,[Applicant Deposit Override]\n" +
"           ,[Overrider]\n" +
"           ,[Next of Kin]\n" +
"           ,[Next of Kin Address]\n" +
"           ,[Next of Kin Address 1]\n" +
"           ,[Next of Kin Address 2]\n" +
"           ,[Next of Kin Phone No_]\n)\n" +
"     VALUES\n" +
"           ('"+applicantNumber+"'\n" +
"           ,' '\n" +
"           ,' '\n" +
"           ,' '\n" +
"           ,' '\n" +
"           ,' '\n" +
"           ,' '\n" +
"           ,' '\n" +
"           ,' '\n" +
"           ,' '\n" +
"           ,'2018'\n" +
"           ,'"+EntryType+"'\n" +//entryType
"           ,''\n" +
"           ,' '\n" +
"           ,''\n" +
"           ,''\n" +
"           ,' '\n" +
"           ,' '\n" +
"           ,''\n" +
"           ,' '\n" +
"           ,'0'\n" +
"           ,'1753-01-01 00:00:00.000'\n" +//DOB
"           ,' '\n" +
"           ,' '\n" +
"           ,' '\n" +
"           ,''\n" +
"           ,' '\n" +
"           ,' '\n" +
"           ,' '\n" +
"           ,' '\n" +
"           ,' '\n" +
"           ,' '\n" +
"           ,' '\n" +
"           ,' '\n" +
"           ,' '\n" +
"           ,' '\n" +
"           ,' '\n" +
"           ,''\n" +
"           ,''\n" +
"           ,''\n" +
"           ,' '\n" +
"           ,''\n" +
"           ,''\n" +
"           ,' '\n" +
"           ,''\n" +
"           ,''\n" +
"           ,'1753-01-01 00:00:00.000'\n" +
"           ,'0'\n" +
"           ,'0'\n" +
"           ,'0'\n" +
"           ,'0'\n" +
"           ,'0'\n" +
"           ,'0'\n" +
"           ,'0'\n" +
"           ,'0'\n" +
"           ,'1753-01-01 00:00:00.000'\n" +
"           ,'1753-01-01 00:00:00.000'\n" +
"           ,'1753-01-01 00:00:00.000'\n" +
"           ,'1753-01-01 00:00:00.000'\n" +
"           ,'1753-01-01 00:00:00.000'\n" +
"           ,'1753-01-01 00:00:00.000'\n" +
"           ,'1753-01-01 00:00:00.000'\n" +
"           ,'1753-01-01 00:00:00.000'\n" +
"           ,'1753-01-01 00:00:00.000'\n" +
"           ,'1753-01-01 00:00:00.000'\n" +
"           ,'1753-01-01 00:00:00.000'\n" +
"           ,'1753-01-01 00:00:00.000'\n" +
"           ,'1753-01-01 00:00:00.000'\n" +
"           ,'0'\n" +
"           ,'0'\n" +
"           ,'NORMAL'\n" +
"           ,''\n" +
"           ,' '\n" +
"           ,' '\n" +
"           ,' '\n" +
"           ,' '\n" +
"           ,' '\n" +
"           ,' '\n" +
"           ,''\n" +
"           ,'1753-01-01 00:00:00.000'\n" +
"           ,'0'\n" +
"           ,' '\n" +
"           ,' '\n" +
"           ,' '\n" +
"           ,'0'\n" +
"           ,''\n" +
"           ,' '\n" +
"           ,' '\n" +
"           ,' '\n" +
"           ,' '\n" +
"           ,''\n" +
"           ,' '\n" +
"           ,' '\n" +
"           ,' '\n" +
"           ,''\n" +
"           ,''\n" +
"           ,''\n" +
"           ,'0'\n" +
"           ,' '\n" +
"           ,'1'\n" +
"           ,'0'\n" +
"           ,' '\n" +
"           ,'0'\n" +
"           ,'0'\n" +
"           ,' '\n" +
"           ,'NUSTERP.PLATFORM'\n" +
"           ,'1753-01-01 00:00:00.000'\n" +
"           ,'0'\n" +
"           ,' '\n" +
"           ,'1753-01-01 00:00:00.000'\n" +
"           ,'"+applicantNumber+"'\n" +
"           ,''\n" +
"           ,''\n" +
"           ,' '\n" +
"           ,' '\n" +
"           ,''\n" +
"           ,''\n" +
"           ,'0'\n" +
"           ,''\n" +
"           ,'NUSTERP'\n" +
"           ,' '\n" +
"           ,' '\n" +
"           ,' '\n" +
"           ,' '\n" +
"           ,' ')\n" +
"\n" +
"\n" +
"");

  sql1.executeUpdate();
//em.persist(NUSTUSDApplicantQualification);
em.getTransaction().commit();
           System.out.println("created appl#################################"+applicantNumber);       
       
       
       
return applicantNumber;      
       
       
       
       }
       
       
   public void updateApplicants(HttpServletRequest request,NUSTUSDApplicant NUSTUSDApplicant){
               System.out.println("Parameters here they come.....");
               
                   
                  String ApplicantNo = request.getParameter("appNo");
		System.out.println("Applicant Number Obtained IS " + ApplicantNo);
                          
                String Name = request.getParameter("Name").toUpperCase();
              System.out.println("Name is " + Name);
              
             
                String title = request.getParameter("title");
                 System.out.println("Title is " + title);
                 
                 
                 int Tytle = Integer.parseInt(title);
                
               
                String Surname = request.getParameter("Surname").toUpperCase();
                System.out.println("Surname is " + Surname);
               
                String IdNumber = request.getParameter("IdNumber");
                 System.out.println("ID Number is " + IdNumber);
                
                
                
                String Sex = request.getParameter("Sex");
                System.out.println("Sex: " + Sex);
                
                  
                String MaritalStatus = request.getParameter("MaritalStatus");
                System.out.println("Marital Status: " + MaritalStatus);
              
                String Dob = request.getParameter("Dob");
                System.out.println("DOB: " + Dob);
                
                
                String Pob = request.getParameter("Pob").toUpperCase();
                System.out.println("Pob: " + Pob);
                
                  
                String Nationality = request.getParameter("Nationality");
                System.out.println("Nationality: " + Nationality);
                
                
              
                String Citizenship = request.getParameter("Citizenship");
                System.out.println("Citizenship: " + Citizenship);
                
                
                String PermitHeld = request.getParameter("PermitHeld");
                System.out.println("Permit Held: " + PermitHeld);
                
                
                  
                String PermanentResident = request.getParameter("PermanentResident");
                System.out.println("Permanent Resident: " + PermanentResident);
                int Permanent = Integer.parseInt(PermanentResident);
                
                
               
              //  String Disability = request.getParameter("Disability");
               // System.out.println("Disability: " + Disability);

                
                 
                String Specify = request.getParameter("Specify");
                 System.out.println("Specify: " + Specify);
                
                
                String Address1 = request.getParameter("Address1");
                System.out.println("Address1: " + Address1);
                
               
                String Address2 = request.getParameter("Address2");
                System.out.println("Address2: " + Address2);

                 
                String City = request.getParameter("City");
                System.out.println("City: " + City);

                
                
                
                String HomeTelephone = request.getParameter("HomeTelephone");
                System.out.println("HomeTelephone: " + HomeTelephone);
                
                String MobileNumber = request.getParameter("MobileNumber");
                System.out.println("MobileNumber: " + MobileNumber);
                
                
                String LastSchoolAttended = request.getParameter("LastSchoolAttended");
                 System.out.println("LastSchoolAttended: " + LastSchoolAttended);

                
                
                String StartYear = request.getParameter("StartYear");
                System.out.println("StartYear: " + StartYear);
                
                int Start = Integer.parseInt(StartYear);

                
                
                String EndYear = request.getParameter("EndYear");
                System.out.println("EndYear: " + EndYear);

                int End = Integer.parseInt(EndYear);
               
                String Email =request.getParameter("Email");
                System.out.println("Email: " + Email);

                
                 
                String EntryType =request.getParameter("entryType");
                System.out.println("EntryType: " + EntryType);
                int Entry = Integer.parseInt(EntryType);
                 
               
                System.out.println("Form values obtained rrr");
                System.out.println("The Applicant Number Is----------" + ApplicantNo);
                SimpleDateFormat sdf = new SimpleDateFormat("MM/dd/yy");
                Date now = new Date();
                Date date = new Date();
              String strDate = sdf.format(date);
               EntityManager em =null;


// Writeshit ws = new Writeshit();
 //String applicantNumber =ws.createStudent();
 //Method to get last number from NoSeriesLine and updating it by 1
 
// dd.update(applicantNumber, n);

 em = getEntityManager();
 em.getTransaction().begin();
 
 
   if (ApplicantNo !=null){
       
       
 
 Query sql2= em.createNativeQuery("UPDATE [TEST_NUST2017].[dbo].[NUST_USD$Applicant] SET [No_] ='"+ApplicantNo+"' , [Title] ='"+Tytle+"' ,[Search Name] = '"+Surname+"' ,[Forenames] = '"+Name+"' ,[Permanent Address] = '"+Address1+"'\n" +
",[Permanent Address 2] = '"+Address2+"' ,[City] = '"+City+"' ,[Phone (H)] = '"+HomeTelephone+"'  ,[Marital Status] = '"+MaritalStatus+"' ,[Sex] = '"+Sex+"'\n" +
",[Nationality] = '"+Nationality+"' ,[Citizenship] = '"+Citizenship+"' ,[Permanent Resident]= '"+Permanent+"' ,[Residence Permit Description] = '"+PermitHeld+"'\n" +
",[Place of Birth] = '"+Pob+"'  ,[National I_D_ No_] = '"+IdNumber+"',[Entry Type] = '"+Entry+"',[Physical Disability Detail] = \n" +
"'"+Specify+"' ,[Permanent Address 3] = '"+City+"' ,[Contact Address] = '"+Address1+"' ,[Contact Address 1] = '"+Address2+"' ,[Contact Address 2] = '"+City+"'\n" +
",[Phone (W)] = '"+MobileNumber+"' ,[Last School Attended] = '"+LastSchoolAttended+"' ,[Last School Start Year] = '"+Start+"' ,[Last School End Year] = '"+End+"'\n" +
",[Cell] = '"+MobileNumber+"' ,[E-Mail] = '"+Email+"',[Work Address] = 'NULL'  ,[Employee No] ='NULL'  ,[Last School Att_] = 'NULL'\n" +
"WHERE [No_]= '"+ApplicantNo+"'");


 
 sql2.executeUpdate();
//em.persist(NUSTUSDApplicantQualification);
em.getTransaction().commit();
System.out.println("VALUES UPDATEd INTO DATABASE");




   }
   
    else{
                 System.out.println("The Applicant No Could Not be found");
        }
   
   

    } 


 
   public void updateChoices(HttpServletRequest request,NUSTUSDApplicant NUSTUSDApplicant){
               System.out.println("Parms here they come...................");
               
               String [] ApplicantNo = request.getParameterValues("appNo");
		System.out.println("Applicant Number Obtained IS " + ApplicantNo);
                System.out.println("The are :" + ApplicantNo.length + "Choices");
               
                   
                 String [] NoOfChoice = request.getParameterValues("choyice");
		System.out.println("the number of choices are " + NoOfChoice.length);
                
                
                
                String [] ProgramChoice = request.getParameterValues("programcode");
		System.out.println("Applicant Choice " + ProgramChoice);
                System.out.println("The are :" + ProgramChoice.length + "Program Choices");    
               // String TYPE = request.getParameter("type");
               // int Typhu = Integer.parseInt(TYPE);
                
               
                System.out.println("Form values obtained rrr");
                System.out.println("The Applicant Number Is----------" + ApplicantNo);
                SimpleDateFormat sdf = new SimpleDateFormat("MM/dd/yy");
                Date now = new Date();
                Date date = new Date();
              String strDate = sdf.format(date);
              
              
              
               String [] TYPE = request.getParameterValues("type");
                int [] Typhu = new int[TYPE.length];
                
                for(int t = 0 ; t <  Typhu.length ; t++){
                  Typhu[t] = Integer.parseInt(TYPE[t]);
                }
              
              
            


// Writeshit ws = new Writeshit();
 //String applicantNumber =ws.createStudent();
 //Method to get last number from NoSeriesLine and updating it by 1
 
// dd.update(applicantNumber, n);

 
   
       
       
       for(int z = 0 ; z < ApplicantNo.length ; z++ ){
           
           
           
       
       System.out.println("Now In FOOOOOOOOOOOR LOOOOOOOOOOP");
       EntityManager em =null;      
      em = getEntityManager();
      em.getTransaction().begin();
      
      
     
    if(ApplicantNo != null ) {   
 
 Query sql3= em.createNativeQuery("UPDATE [TEST_NUST2017].[dbo].[NUST_USD$Applicant Choice] SET [Applicant No_] ='"+ApplicantNo[z]+"', [Programme Code] ='"+ProgramChoice[z]+"'\n" +
"WHERE [Applicant No_]= '"+ApplicantNo[z]+"' AND  [Choice] = '"+NoOfChoice[z]+"' AND [Type]= '"+Typhu[z]+"'");

 


 
 
 sql3.executeUpdate();
//em.persist(NUSTUSDApplicantQualification);
em.getTransaction().commit();


System.out.println("HAS UUUUUUUPDATED");


 //System.out.println("Here Are Applicant Numbers" +  ApplicantNo[z]);
 //System.out.println("Here Are the Different Subjects" +  ProgramChoice[z]);
 
 
 System.out.println("Choice Number :::::::::" +  NoOfChoice[z]);
 



       }
    
    
    else{
                 System.out.println("The Applicant No Could Not be found");
        }
    
    
   }
   
    
   
   

    } 

              
              

               
     public void updateQualification(HttpServletRequest request,NUSTUSDApplicant NUSTUSDApplicant){
      String [] applicantId = request.getParameterValues("appNo");
      
      
      String [] Subject = request.getParameterValues("subjectCodeI");
      
      String [] levels = request.getParameterValues("levelI");
      int [] Leveeels = new int[levels.length];
     
     
     for(int i = 0; i < Leveeels.length ; i++){
      
      Leveeels[i] = Integer.parseInt(levels[i]);
      
     }
     
     
     String [] Classification = request.getParameterValues("classification");
     
     String [] SubjectF = request.getParameterValues("subjectCodeF");
      
      
      
    // String [] DateExamTaken = request.getParameterValues("datetaken"); removed for now
     String [] ExamBody = request.getParameterValues("exambody");
     
     
    
     
     String [] Codes = request.getParameterValues("code");
     
      String [] Points = request.getParameterValues("points");
  
     
     
     
 
     
     
    
     
     
     
     
     
     
      
       for(int j = 0 ; j < applicantId.length ; j++ ){
           
            System.out.println("The classifications are" + Classification[j]);

           
       
       System.out.println("Now In FOOOOOOOOOOOR LOOOOOOOOOOP");
       System.out.println("The Leevel Numbers are" +  Leveeels[j]);
       EntityManager em =null;      
      em = getEntityManager();
      em.getTransaction().begin();
      
      
      
     
      
 
        //updating A level courses
 
 
 
 
 
 System.out.println("The classifications are" + Classification[j]);
 
 
 if(Classification[j].equals("A")){
     
     System.out.println("AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA");
     
     em = getEntityManager();
      em.getTransaction().begin();
     
     int point = 5;
     
      Query sql4= em.createNativeQuery("UPDATE [TEST_NUST2017].[dbo].[NUST_USD$Applicant Qualification]\n" +
"SET [Level] = '"+Leveeels[j]+"', [Subject Points] = '"+point+"',[Classification] = '"+Classification[j]+"',[Code] ='"+Codes[j]+"',[Subject] = '"+SubjectF[j]+"', [Examination Body] = '"+ExamBody[j]+"' WHERE [Applicant No_]='"+applicantId[j]+"' AND [Code] ='"+Codes[j]+"'");
 
 
     
 sql4.executeUpdate();
 em.getTransaction().commit();
     
 
 }
 
 else if(Classification[j].equals("B")){
     System.out.println("BBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBB");
     em = getEntityManager();
      em.getTransaction().begin();
 
     int point = 4;
    
      Query sql21= em.createNativeQuery("UPDATE [TEST_NUST2017].[dbo].[NUST_USD$Applicant Qualification]\n" +
"SET [Level] = '"+Leveeels[j]+"', [Subject Points] = '"+point+"',[Classification] = '"+Classification[j]+"',[Code] ='"+Codes[j]+"',[Subject] = '"+SubjectF[j]+"', [Examination Body] = '"+ExamBody[j]+"' WHERE [Applicant No_]='"+applicantId[j]+"' AND [Code] ='"+Codes[j]+"'");
 
    
 sql21.executeUpdate();
 em.getTransaction().commit();
     
 }
 
 
  else if(Classification[j].equals("C")){
      
      System.out.println("CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC");
     em = getEntityManager();
      em.getTransaction().begin(); 
      
  int point = 3;
 
   Query sql4= em.createNativeQuery("UPDATE [TEST_NUST2017].[dbo].[NUST_USD$Applicant Qualification]\n" +
"SET [Level] = '"+Leveeels[j]+"', [Subject Points] = '"+point+"',[Classification] = '"+Classification[j]+"',[Code] ='"+Codes[j]+"',[Subject] = '"+SubjectF[j]+"', [Examination Body] = '"+ExamBody[j]+"' WHERE [Applicant No_]='"+applicantId[j]+"' AND [Code] ='"+Codes[j]+"'");
 
 
 sql4.executeUpdate();
 em.getTransaction().commit();
  
 }
 
  else if(Classification[j].equals("D")){
      System.out.println("DDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDD");
      em = getEntityManager();
      em.getTransaction().begin();
      
 int point = 2;
 
  Query sql41= em.createNativeQuery("UPDATE [TEST_NUST2017].[dbo].[NUST_USD$Applicant Qualification]\n" +
"SET [Level] = '"+Leveeels[j]+"', [Subject Points] = '"+point+"',[Classification] = '"+Classification[j]+"',[Code] ='"+Codes[j]+"',[Subject] = '"+SubjectF[j]+"', [Examination Body] = '"+ExamBody[j]+"' WHERE [Applicant No_]='"+applicantId[j]+"' AND [Code] ='"+Codes[j]+"'");
 
 
 sql41.executeUpdate();
 em.getTransaction().commit();
  
      
 }
 
  else if(Classification[j].equals("E")){
      System.out.println("EEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEE");
      em = getEntityManager();
      em.getTransaction().begin();
      int point = 1;
      
       Query sql4= em.createNativeQuery("UPDATE [TEST_NUST2017].[dbo].[NUST_USD$Applicant Qualification]\n" +
"SET [Level] = '"+Leveeels[j]+"', [Subject Points] = '"+point+"',[Classification] = '"+Classification[j]+"',[Code] ='"+Codes[j]+"',[Subject] = '"+SubjectF[j]+"', [Examination Body] = '"+ExamBody[j]+"' WHERE [Applicant No_]='"+applicantId[j]+"' AND [Code] ='"+Codes[j]+"'");
 
      
 sql4.executeUpdate();
 em.getTransaction().commit();
 
 }
 
  else {
      
            System.out.println("ELLLLLLLLLLLSSSSSSSSSSSSSSEEEEEEEEEEEEEEEEEEEEEEE");

      int point = 0;
      em = getEntityManager();
      em.getTransaction().begin();
      
       Query sql4= em.createNativeQuery("UPDATE [TEST_NUST2017].[dbo].[NUST_USD$Applicant Qualification]\n" +
"SET [Level] = '"+Leveeels[j]+"', [Subject Points] = '"+point+"',[Classification] = '"+Classification[j]+"',[Code] ='"+Codes[j]+"',[Subject] = '"+SubjectF[j]+"', [Examination Body] = '"+ExamBody[j]+"' WHERE [Applicant No_]='"+applicantId[j]+"' AND [Code] ='"+Codes[j]+"'");
 
 sql4.executeUpdate();
 em.getTransaction().commit();
 
 }

 
 
 

     
      
    
   
     
    
    
    
    
    
    
   }
     
     
                                  
                                  
    
   }
   
    
   
                  public void updateEducation(HttpServletRequest request,NUSTUSDApplicant NUSTUSDApplicant){
           System.out.println("Parms here they come...................");
               
           String [] ApplicantNo = request.getParameterValues("appNo");
           System.out.println("Applicant Number Obtained IS " + ApplicantNo);
                
           String [] Name = request.getParameterValues("Name");
               
               
           String [] OverallClassification = request.getParameterValues("overall");
	   String [] DateofAward = request.getParameterValues("dateofaward");

           String [] ProgrammeofStudy = request.getParameterValues("programmeofstudy");
           String [] SubjectandGrades = request.getParameterValues("subgrades");
           

           
           
               
          String [] endYear = request.getParameterValues("endyear");
          int [] eeendYear = new int[endYear.length];
          for(int a = 0; a < eeendYear.length ; a++){
      
      eeendYear[a] = Integer.parseInt(endYear[a]);
      
     }
          
          
          String [] strtYear = request.getParameterValues("startyear");
          int [] staaartYear = new int[strtYear.length];
           for(int b = 0; b < staaartYear.length ; b++){
      
      staaartYear[b] = Integer.parseInt(strtYear[b]);
      
     }

                
                
               
                System.out.println("Form values obtained rrr");
                System.out.println("The Applicant Number Is----------" + ApplicantNo);
                SimpleDateFormat sdf = new SimpleDateFormat("MM/dd/yy");
                Date now = new Date();
                Date date = new Date();
              String strDate = sdf.format(date);
            


// Writeshit ws = new Writeshit();
 //String applicantNumber =ws.createStudent();
 //Method to get last number from NoSeriesLine and updating it by 1
 
// dd.update(applicantNumber, n);

 
   
       
       
       for(int z = 0 ; z < ApplicantNo.length ; z++ ){
           
           
           
      System.out.println("The start year dates are " + staaartYear[z]  );
      
      System.out.println("The end year dates are" + eeendYear[z]  );     
       
       System.out.println("Now In FOOOOOOOOOOOR LOOOOOOOOOOP");
       EntityManager em =null;      
      em = getEntityManager();
      em.getTransaction().begin();
      
      
     
    if(ApplicantNo != null ) {   
 
 
  Query sql6=em.createNativeQuery("UPDATE [TEST_NUST2017].[dbo].[NUST_USD$Applicant Education]\n" +
"   SET [Start Year] = '"+staaartYear[z]+"'\n" +
"      ,[End Year]='"+eeendYear[z]+"'\n" +         
"      ,[Subjects and Grades]='"+SubjectandGrades[z]+"'\n" +
"      ,[Programme of Study] = '"+ProgrammeofStudy[z]+"'\n" +
"      ,[Date of Award] = '"+DateofAward[z]+"'\n" +        
"      ,[Overall Classification] = '"+OverallClassification[z]+"'\n" +
" WHERE [Applicant No_]='"+ApplicantNo[z]+"' AND [Name]='"+Name[z]+"'"); 
             
 
 
 sql6.executeUpdate();
//em.persist(NUSTUSDApplicantQualification);
em.getTransaction().commit();


System.out.println("EDUCATION TABLE UUUUUUUPDATED");


 //System.out.println("Here Are Applicant Numbers" +  ApplicantNo[z]);
 //System.out.println("Here Are the Different Subjects" +  ProgramChoice[z]);
 
 
 



       }
    
    
    else{
                 System.out.println("The Applicant No Could Not be found");
        }
    
    
   }
   
    
   
   

    } 

                  
        public void updateEmployment(HttpServletRequest request,NUSTUSDApplicant NUSTUSDApplicant){
               System.out.println("SEEEEEEEEEEEEESFIKILE");
            
            System.out.println("Parms here they come...................");
               
               String [] ApplicantNo = request.getParameterValues("appNo");
		System.out.println("First Applicant NO" + ApplicantNo[0]);
               
             String startedI [] = request.getParameterValues("startInitial");
             //System.out.println("Initial Date From Database" + startedI[0]);

             
            String start [] = request.getParameterValues("start");
           // System.out.println("Date From Form for Starting" + start[0]);

            
            String ended []= request.getParameterValues("end");
            System.out.println("End Date" + ended[0]);
            
            
            String occupationaldetails []= request.getParameterValues("ocupation");
            System.out.println("Occupational Detail" + occupationaldetails[0]);
            
            
            String employer []= request.getParameterValues("employer");
            System.out.println("Employer:" + employer[0]);
            
          
             String remarks []= request.getParameterValues("remarks");
              System.out.println("Remarks:" + remarks[0]);
            
  
                String Iremarks []= request.getParameterValues("remarksInitial");
              System.out.println("Remarks:" + remarks[0]);
                
               
                System.out.println("Form values obtained rrr");
                System.out.println("The Applicant Number Is----------" + ApplicantNo);
                SimpleDateFormat sdf = new SimpleDateFormat("MM/dd/yy");
                Date now = new Date();
                Date date = new Date();
              String strDate = sdf.format(date);
            


// Writeshit ws = new Writeshit();
 //String applicantNumber =ws.createStudent();
 //Method to get last number from NoSeriesLine and updating it by 1
 
// dd.update(applicantNumber, n);

 
   
       
       
       for(int z = 0 ; z < ApplicantNo.length ; z++ ){
           
           System.out.println("FOOOOOOOOOOOOOOOOOR LOOOOOOOOOOOOOP");
           
           
     // System.out.println("The start year dates are " + staaartYear[z]  );
      
     // System.out.println("The end year dates are" + eeendYear[z]  );     
       
       System.out.println("Now In FOOOOOOOOOOOR LOOOOOOOOOOP");
       EntityManager em =null;      
      em = getEntityManager();
      em.getTransaction().begin();
      
      
     
    if(ApplicantNo != null ) {   
 
          System.out.println("Now In IIIIIIFFFFFFFFFFFFFFFFFFF Statement");
          
          System.out.println("Start Date" + start[z]);
          System.out.println("End Date" + ended[z]);
          System.out.println("Occupational Details" + occupationaldetails[z]);
          System.out.println("Employer Details" + employer[z]);
         System.out.println("Remarks" + remarks[z]);
          System.out.println("Initial Remarks" + Iremarks[z]);
 
  
              
  
   Query sql9 = em.createNativeQuery("UPDATE [TEST_NUST2017].[dbo].[NUST_USD$Applicant Employment]\n" +
"   SET [Start Date] = '"+start[z]+"'\n" +
"      ,[End Date] = '"+ended[z]+"'\n" +
"      ,[Occupation Details] = '"+occupationaldetails[z]+"'\n" +
"      ,[Employer] = '"+employer[z]+"'\n" +
"      ,[Remarks] = '"+remarks[z]+"'\n" +
" WHERE [Applicant No_]='"+ApplicantNo[z]+"' AND [Remarks] = '"+Iremarks[z]+"'");
  
   
   System.out.println("BEFORE EXECUTED");
 
 sql9.executeUpdate();
//em.persist(NUSTUSDApplicantQualification);
em.getTransaction().commit();


System.out.println("EDUCATION TABLE UUUUUUUPDATED");


 //System.out.println("Here Are Applicant Numbers" +  ApplicantNo[z]);
 //System.out.println("Here Are the Different Subjects" +  ProgramChoice[z]);
 
 
 



       }
    
    
    else{
                 System.out.println("The Applicant No Could Not be found");
        }
    
    
   }
   
    
   
   

    } 

                  

    } 



