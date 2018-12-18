/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package nust.systems.workingcrud.dao;

import java.text.SimpleDateFormat;
import java.util.Arrays;
import java.util.Date;
import java.util.List;
import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.EntityNotFoundException;
import javax.persistence.Query;
import javax.persistence.criteria.CriteriaQuery;
import javax.servlet.http.HttpServletRequest;
import nust.systems.workingcrud.config.PersistanceUnit;
import nust.systems.workingcrud.dao.exceptions.NonexistentEntityException;
import nust.systems.workingcrud.entities.NUSTUSDApplicantEducation;
import nust.systems.workingcrud.entities.NUSTUSDApplicantEducationPK;

/**
 *
 * @author Rodney
 */
public class NUSTUSDApplicantEducationDao {
    PersistanceUnit pu = PersistanceUnit.getInstance();

    public NUSTUSDApplicantEducationDao(EntityManagerFactory emf) {
        this.emf = emf;
    }

    public NUSTUSDApplicantEducationDao() {
    }

    private EntityManagerFactory emf = pu.enFactory;

    public EntityManager getEntityManager() {
        return emf.createEntityManager();
    }

    public void create(NUSTUSDApplicantEducation nustusdapplicanteducation) {
        EntityManager em = null;
        try {
            em = getEntityManager();
            em.getTransaction().begin();
            em.persist(nustusdapplicanteducation);
            em.getTransaction().commit();
        } finally {
            if (em != null) {
                em.close();
            }
        }
    }
    
    public void createEducation(HttpServletRequest request,NUSTUSDApplicantEducation NUSTUSDApplicantEducation){
     String applicantNumber = request.getParameter("applicantNumber");   
     String [] degreeClass = request.getParameterValues("degreeClass");
     String [] yearAwarded = request.getParameterValues("yearAwarded");
     String [] institution = request.getParameterValues("institution");
     String [] programmeStudied = request.getParameterValues("programmeStudied");
     String [] startyear = request.getParameterValues("startyear");
     String [] endyear = request.getParameterValues("endyear");
     
     
     SimpleDateFormat sdf = new SimpleDateFormat("MM/dd/yy");
      Date now = new Date();
            Date date = new Date();
      String strDate = sdf.format(date);
     System.out.println("Form values obtained");
     System.out.println("PRINTING OUT ARRAY VALUES" + Arrays.toString(institution));
    // System.out.println("PRINTING OUT ARRAY VALUES" + Arrays.toString(yearAwarded));
     System.out.println("PRINTING OUT ARRAY VALUES" + Arrays.toString(programmeStudied));
     System.out.println("PRINTING OUT ARRAY VALUES" + Arrays.toString(degreeClass));
     EntityManager em = null;
     
     
     if(institution!=null && institution.length>0){
                  System.out.println(" UNiversity studies Array is not empty");
       for(int j= 0; j <institution.length; ++j){ 
           
           em = getEntityManager();
     em.getTransaction().begin();
           
           Query sql14 = em.createNativeQuery("INSERT INTO [TEST_NUST2017].[dbo].[NUST_USD$Applicant Education]\n" +
"           ([Applicant No_]\n" +
"           ,[Name]\n" +
"           ,[Start Year]\n" +
"           ,[End Year]\n" +
"           ,[Programme of Study]\n" +
"           ,[Subjects and Grades]\n" +
"           ,[Subjects and Grades 2]\n" +
"           ,[Qualification Completed]\n" +
"           ,[Date of Award]\n" +
"           ,[Overall Classification]\n" +
"           ,[Enough Data])\n" +
"     VALUES\n" +
"           ('"+applicantNumber+"'\n" +
"           ,'"+institution[j]+"'\n" +
"           ,CONVERT(INT, "+startyear[j]+")\n" +
"           ,CONVERT(INT, "+endyear[j]+")\n" +
"           ,'"+programmeStudied[j]+"'\n" +
"           ,'"+j+"'\n" +
"           ,'NULL'\n" +
"           ,'1'\n" +
"           ,'"+yearAwarded[j]+"'\n" +
"           ,'"+degreeClass[j]+"'\n" +
"           ,'0')\n" +
"");   
           sql14.executeUpdate();
           em.getTransaction().commit();
    
    
    
    }}
    
     else{
     
     System.out.println("dololo");
     }
    }
    
      public void edit(NUSTUSDApplicantEducation nustusdapplicanteducation) throws NonexistentEntityException, Exception {
        EntityManager em = null;
        try {
            em = getEntityManager();
            em.getTransaction().begin();
            nustusdapplicanteducation = em.merge(nustusdapplicanteducation);
            em.getTransaction().commit();
        } catch (Exception ex) {
            String msg = ex.getLocalizedMessage();
            if (msg == null || msg.length() == 0) {
                NUSTUSDApplicantEducationPK nustusdapplicanteducationpk ;
                nustusdapplicanteducationpk = nustusdapplicanteducation.getNUSTUSDApplicantEducationPK();
                if (findApplicant(nustusdapplicanteducationpk) == null) {
                    throw new NonexistentEntityException("The student with id " + nustusdapplicanteducationpk + " no longer exists.");
                }
            }
            throw ex;
        } finally {
            if (em != null) {
                em.close();
            }
        }
    }

    public List<NUSTUSDApplicantEducation> findEducationEntities() {
        return findEducationEntities(true, -1, -1);
    }

    public List<NUSTUSDApplicantEducation> findEducationEntities(int maxResults, int firstResult) {
        return findEducationEntities(false, maxResults, firstResult);
    }

    private List<NUSTUSDApplicantEducation> findEducationEntities(boolean all, int maxResults, int firstResult) {
        EntityManager em = getEntityManager();
        try {
            CriteriaQuery cq = em.getCriteriaBuilder().createQuery();
            cq.select(cq.from(NUSTUSDApplicantEducation.class));
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

    public NUSTUSDApplicantEducation findApplicant(NUSTUSDApplicantEducationPK nustusdapplicanteducationpk) {
        EntityManager em = getEntityManager();
        try {
            return em.find(NUSTUSDApplicantEducation.class, nustusdapplicanteducationpk);
        } finally {
            em.close();
        }
    }
    
    public void destroy(NUSTUSDApplicantEducationPK nustusdapplicanteducationpk) throws NonexistentEntityException {
        EntityManager em = null;
        try {
            em = getEntityManager();
            em.getTransaction().begin();
            NUSTUSDApplicantEducation nustusdapplicanteducation;
            try {
                nustusdapplicanteducation = em.getReference(NUSTUSDApplicantEducation.class, nustusdapplicanteducationpk);
                nustusdapplicanteducation.getNUSTUSDApplicantEducationPK();
            } catch (EntityNotFoundException enfe) {
                throw new NonexistentEntityException("The student with id " + nustusdapplicanteducationpk + " no longer exists.", enfe);
            }
            em.remove(nustusdapplicanteducation);
            em.getTransaction().commit();
        } finally {
            if (em != null) {
                em.close();
            }
        }
    }
}
