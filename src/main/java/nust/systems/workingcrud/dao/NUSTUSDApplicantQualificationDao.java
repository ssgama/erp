/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package nust.systems.workingcrud.dao;

/**
 *
 * @author gugxy
 */
/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
import java.util.List;
import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Query;
import javax.persistence.criteria.CriteriaQuery;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import nust.systems.workingcrud.config.PersistanceUnit;
import nust.systems.workingcrud.entities.NUSTUSDApplicantQualification;
import static org.springframework.test.web.servlet.request.MockMvcRequestBuilders.request;

/**
 *
 * @author Owen
 */
public class NUSTUSDApplicantQualificationDao {
    
    
    PersistanceUnit pu = PersistanceUnit.getInstance();

    public NUSTUSDApplicantQualificationDao(EntityManagerFactory emf) {
        this.emf = emf;
    }

    public NUSTUSDApplicantQualificationDao() {
    }

    private EntityManagerFactory emf = pu.enFactory;

    public EntityManager getEntityManager() {
        return emf.createEntityManager();
    }

    public void create(NUSTUSDApplicantQualification NUSTUSDApplicantQualification) {
        EntityManager em = null;
        try {
            em = getEntityManager();
            em.getTransaction().begin();
            em.persist(NUSTUSDApplicantQualification);
            em.getTransaction().commit();
        } finally {
            if (em != null) {
                em.close();
            }
        }
    }

    public List<NUSTUSDApplicantQualification> findStudentEntities() {
        return findStudentEntities(true, -1, -1);
    }

    public List<NUSTUSDApplicantQualification> findStudentEntities(int maxResults, int firstResult) {
        return findStudentEntities(false, maxResults, firstResult);
    }

    private List<NUSTUSDApplicantQualification> findStudentEntities(boolean all, int maxResults, int firstResult) {
        EntityManager em = getEntityManager();
        try {
            CriteriaQuery cq = em.getCriteriaBuilder().createQuery();
            cq.select(cq.from(NUSTUSDApplicantQualification.class));
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

    public NUSTUSDApplicantQualification findApplicant(Integer id) {
        EntityManager em = getEntityManager();
        try {
            return em.find(NUSTUSDApplicantQualification.class, id);
        } finally {
            em.close();
        }
    }
   
    	public void createQualification(HttpServletRequest request,NUSTUSDApplicantQualification NUSTUSDApplicantQualification){
		
		EntityManager em = null;
                String applicantNumber = request.getParameter("applicantNumber");
                HttpSession session = request.getSession();
           // applicantNumber = (String)session.getAttribute("appId"); 
            System.out.println("this is the applicant id in personal details controller\n"+applicantNumber);
            session.setAttribute("appId", applicantNumber);
                //Parameters for Alevel Qualifications
		String [] dateExamTaken = request.getParameterValues("dateAdvanced");
		String [] subjectAdvanced = request.getParameterValues("subjectUndergradAdvanced");
		String [] examBodyAdvanced = request.getParameterValues("examBodyAdvanced");
		String [] gradeAdvanced = request.getParameterValues("gradeAdvanced");
		String [] codeAlevel = request.getParameterValues("subjectCodeAlevel");
                //Parameters for O level Qualifications
                String [] dateOrdinary = request.getParameterValues("dateOrdinary");
                String [] subjectOrdinary = request.getParameterValues("subjectUndergradOrdinary");
                String [] examBodyOrdinary = request.getParameterValues("examBodyOrdinary");
                String [] gradeOrdinary = request.getParameterValues("gradeOrdinary");
                String [] codeOlevel = request.getParameterValues("subjectCodeOlevel");
                System.out.println("The appId is "+applicantNumber);
                //NUSTUSDApplicantQualificationDao nuaqd = NUSTUSDApplicantQualificationDao();
                System.out.println("These are the subjects"+subjectAdvanced);
		int level=2;
        int level2=1;
		if( subjectAdvanced!=null && subjectAdvanced.length>0){
                  System.out.println(" A level Array is not empty........................................");
             
                  
                    for(int j= 0; j <subjectAdvanced.length; ++j){
                        
                        		
			em = getEntityManager();
			em.getTransaction().begin();
	Query sql4= em.createNativeQuery("INSERT INTO [TEST_NUST2017].[dbo].[NUST_USD$Applicant Qualification] ([Applicant No_],[Exam Date],[Examination Body],[Level],[Subject],[Classification],[Candidate No_],[External Classification],[Mismatch],[Programme Description],[Subject Points],[PointSum],[Markk],[Code])\n" +
"VALUES('"+applicantNumber+"','"+dateExamTaken[j]+"','"+examBodyAdvanced[j]+"','"+level+"','"+subjectAdvanced[j]+"','"+gradeAdvanced[j]+"','NULL','NULL','0',(CASE '"+subjectAdvanced[j]+"' WHEN '8001' THEN 'General Paper' WHEN '8007 ' THEN 'English Lang and Com skills' WHEN '9154' THEN 'Divinity' WHEN '9093' THEN 'English Language' WHEN '9145' THEN 'Shona' WHEN '9146' THEN 'Afrikaans' WHEN '9147' THEN 'Ndebele' WHEN '9695' THEN 'Literature in English'\n" +
"WHEN '9155' THEN 'History' WHEN '9696' THEN 'Geography' WHEN '9157' THEN 'Sociology' WHEN '9158' THEN 'Economics' WHEN '9159' THEN 'Agriculture' WHEN '9163' THEN 'French' WHEN '9164' THEN 'Mathematics' WHEN '9187' THEN 'Further Mathematics' WHEN '9188' THEN 'Physics'\n" +
"WHEN '9701' THEN 'Chemistry' WHEN '9700' THEN 'Biology' WHEN '9191' THEN 'Art' WHEN '9193' THEN 'Textile and Clothing Design' WHEN '9194' THEN 'Food Science' WHEN 'CS' THEN 'Computing' WHEN '9196' THEN 'Geo, Mech, Building Drawing' WHEN '9197' THEN 'Accounting'\n" +
"WHEN '9198' THEN 'Management of Business' WHEN '9395' THEN 'Travel and Tourism' WHEN '9396' THEN 'Physical Education' WHEN '9609' THEN 'Business' WHEN '9704' THEN 'Art and Design' WHEN '9705' THEN 'Design and Technology' WHEN 'BLD' THEN 'Building Studies' \n" +
"WHEN '9713' THEN 'Applied ICT' WHEN 'LS' THEN 'Legal Studies' end),(CASE '"+gradeAdvanced[j]+"' WHEN 'A' THEN '5' WHEN 'B' THEN '4' WHEN 'C' THEN '3' WHEN 'D' THEN '2' WHEN 'E' THEN '1' WHEN 'O' THEN '0' WHEN 'F' THEN '0' end),(CASE '"+gradeAdvanced[j]+"' WHEN 'A' THEN '5' WHEN 'B' THEN '4' WHEN 'C' THEN '3' WHEN 'D' THEN '2' WHEN 'E' THEN '1' WHEN 'O' THEN '0' WHEN 'F' THEN '0' end),'0','"+j+"')\n" +
"\n" +
"");
sql4.executeUpdate();
//em.persist(NUSTUSDApplicantQualification);
em.getTransaction().commit();
     
			 
			
			
			
		}
                   
		
	}
     else{
            System.out.println("Araayyy is empty");               
                            
                            }
                
              // Code for inserting O level qualifications  
                if(subjectOrdinary!=null && subjectOrdinary.length>0){
                  System.out.println("O Level Array is not empty");
                  
         for(int k= 0; k <subjectOrdinary.length; ++k){
             
           int z = k+10;
             		
			em = getEntityManager();
			em.getTransaction().begin();
	Query sql5= em.createNativeQuery("INSERT INTO [TEST_NUST2017].[dbo].[NUST_USD$Applicant Qualification] ([Applicant No_],[Exam Date],[Examination Body],[Level],[Subject],[Classification],[Candidate No_],[External Classification],[Mismatch],[Programme Description],[Subject Points],[PointSum],[Markk],[Code])\n" +
"VALUES('"+applicantNumber+"','"+dateOrdinary[k]+"','"+examBodyOrdinary[k]+"','"+level2+"','"+subjectOrdinary[k]+"','"+gradeOrdinary[k]+"','tawa','tawa','0',(CASE '"+subjectOrdinary[k]+"' WHEN 'ACC' THEN 'Accounting' WHEN 'AGR' THEN 'Agriculture' WHEN 'AMAT' THEN 'Additional Mathematics' WHEN 'ART' THEN 'ART' WHEN 'BIO' THEN 'Biology' WHEN 'BK' THEN 'Bible Knowledge' WHEN 'BS' THEN 'Building Studies' \n" +
"WHEN 'BTG' THEN 'BIOTECHNOLOGY & GENETICS' WHEN 'BU' THEN 'Business Studies' WHEN 'CV' THEN 'Civic Education' WHEN 'CD' THEN 'Child Development' WHEN 'CH' THEN 'Chemistry' WHEN 'CM' THEN 'Commerce' WHEN 'CO' THEN 'Commercial Studies' \n" +
"WHEN 'CRR' THEN 'CHEMISTRY OF RENEWABLE RESOURCE' WHEN 'CS' THEN 'Computing or Computer Studies' WHEN 'D&T' THEN 'D&T: PRODUCT DESIGN' WHEN 'DT' THEN 'Design and Technology' WHEN 'DV' THEN 'DEVELOPMENT STUDIES' WHEN 'EC' THEN 'Economics' \n" +
"WHEN 'EM' THEN 'Environmental Management'WHEN 'EN' THEN 'English Lang' WHEN 'ENT' THEN 'Enterprise' WHEN 'EX' THEN 'Extended Science' WHEN 'FF' THEN 'Fashion and Fabrics' WHEN 'FM' THEN 'Further Mathematics' WHEN 'FN' THEN 'Food and Nutrition' \n" +
"WHEN 'FSC' THEN 'FORENSIC SCIENCE' WHEN 'GE' THEN 'Geography' WHEN 'GER' THEN 'GERMAN' WHEN 'HB' THEN 'Human and Social Biology' WHEN 'HOM' THEN 'Home Management' WHEN 'HS' THEN 'History' WHEN 'IC' THEN 'Information and Communication' \n" +
"WHEN 'KW' THEN 'Kiswahili' WHEN 'LA' THEN 'Latin' WHEN 'LO' THEN 'Life Orientation' WHEN 'LS' THEN 'Life Science' WHEN 'LT' THEN 'Literature in English' WHEN 'FR' THEN 'French' \n" +
"WHEN 'ME' THEN 'MORAL EDUCATION' WHEN 'MT' THEN 'Mathematics' WHEN 'MU' THEN 'Music' WHEN 'MW' THEN 'Metal Work' WHEN 'ND' THEN 'Ndebele/Zulu' WHEN 'IS' THEN 'Integrated Science'\n" +
"WHEN 'PC' THEN 'Physics with Chemistry' WHEN 'PE' THEN 'Physical EDucation' WHEN 'PH' THEN 'Physics' WHEN 'PO' THEN 'Portuguese' WHEN 'PS' THEN 'Physical Science'\n" +
"WHEN 'RS' THEN 'Religious Studies' WHEN 'SC' THEN 'Science' WHEN 'SH' THEN 'Shona' WHEN 'SO' THEN 'Sociology' WHEN 'SPA' THEN 'Spanish'\n" +
"WHEN 'SPC' THEN 'Science (Physics, Chemistry' WHEN 'SS' THEN 'Social Studies' WHEN 'ST' THEN 'Statistics' WHEN 'SET' THEN 'Setswana' WHEN 'IS' THEN 'Integrated Science'\n" +
"WHEN 'TD' THEN 'Technical Drawing' WHEN 'TG' THEN 'Technical Graphics' WHEN 'TT' THEN 'Travel and Tourism' WHEN 'TX' THEN 'Textile and Clothing Design' WHEN 'WW' THEN 'Woodwork'\n" +
"end),(CASE '"+gradeOrdinary[k]+"' WHEN 'A' THEN '5' WHEN 'B' THEN '4' WHEN 'C' THEN '3' WHEN 'D' THEN '2' WHEN 'E' THEN '1' WHEN 'O' THEN '0' WHEN 'F' THEN '0' end),(CASE '"+gradeOrdinary[k]+"' WHEN 'A' THEN '5' WHEN 'B' THEN '4' WHEN 'C' THEN '3' WHEN 'D' THEN '2' WHEN 'E' THEN '1' WHEN 'O' THEN '0' WHEN 'F' THEN '0' end),'0','"+z+"')\n" +
"\n" +
"");  
        
        sql5.executeUpdate();
        em.getTransaction().commit();
         }
       
}

}

}
    
    


