/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package nust.systems.workingcrud.dao;

import java.io.Serializable;
import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Query;
import javax.servlet.http.HttpServletRequest;
//import javax.persistence.PersistenceUnit;
import nust.systems.workingcrud.config.PersistanceUnit;
import nust.systems.workingcrud.entities.NUSTUSDApplicantEmployment;

/**
 *
 * @author systems1
 */
public class NUSTUSDApplicantEmploymentDao implements Serializable {
    
    PersistanceUnit pu = PersistanceUnit.getInstance();
    
    public NUSTUSDApplicantEmploymentDao(EntityManagerFactory emf) {
        this.emf = emf;
    }

    public NUSTUSDApplicantEmploymentDao() {
    }
    
    private EntityManagerFactory emf = pu.enFactory;

    public EntityManager getEntityManager() {
        return emf.createEntityManager();
    }
    
    public void create(NUSTUSDApplicantEmployment nustusdapplicantemployment) {
        EntityManager em = null;
        try {
            em = getEntityManager();
            em.getTransaction().begin();
            em.persist(nustusdapplicantemployment);
            em.getTransaction().commit();
        } finally {
            if (em != null) {
                em.close();
            }
        }
    }
    
    
    public void createEmployment(HttpServletRequest request,NUSTUSDApplicantEmployment NUSTUSDApplicantEmployment){
   
    String applicantNumber = request.getParameter("applicantNumber");   
    String started [] = request.getParameterValues("started");
    String ended []= request.getParameterValues("ended");
    String employer [] = request.getParameterValues("employer");  
    String details [] = request.getParameterValues("details");
   
    EntityManager em = null;
    if(started!=null && started.length>0){
                 System.out.println("employment details awafakwanga");
       
           
          for(int j= 0; j <started.length; ++j){
             
              em = getEntityManager();
              em.getTransaction().begin();
             
           Query sql01 = em.createNativeQuery("INSERT INTO [TEST_NUST2017].[dbo].[NUST_USD$Applicant Employment]\n" +
"           ([Applicant No_]\n" +
"           ,[Start Date]\n" +
"           ,[End Date]\n" +
"           ,[Occupation Details]\n" +
"           ,[Employer]\n" +
"           ,[Remarks])\n" +
"     VALUES\n" +
"           ('"+applicantNumber+"'\n" +
"           ,'"+started[j]+"'\n" +
"           ,'"+ended[j]+"'\n" +
"           ,'"+details[j]+"'\n" +
"           ,'"+employer[j]+"'\n" +
"           ,'"+j+"')\n" +
"\n" +
"\n" +
"");
    sql01.executeUpdate();
    em.getTransaction().commit();
             
             
             
             
             
          }
             
   
   }
 
    else{
    System.out.println("Employment dololo");
   
    }
   
}
    
    
    
}
