/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package nust.systems.workingcrud.dao;

import java.util.List;
import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Query;
import javax.persistence.criteria.CriteriaQuery;
import nust.systems.workingcrud.config.PersistanceUnit;
import nust.systems.workingcrud.entities.NUSTUSDApplicant;
import nust.systems.workingcrud.entities.NUSTUSDApplicantPK;
/**
 *
 * @author Rodney
 */

public class NUSTUSDApplicantDao {

    PersistanceUnit pu = PersistanceUnit.getInstance();

    public NUSTUSDApplicantDao(EntityManagerFactory emf) {
        this.emf = emf;
    }

    public NUSTUSDApplicantDao() {
    }

    private EntityManagerFactory emf = pu.enFactory;

    public EntityManager getEntityManager() {
        return emf.createEntityManager();
    }

    public void create(NUSTUSDApplicant nustusdapplicant) {
        EntityManager em = null;
        try {
            em = getEntityManager();
            em.getTransaction().begin();
            em.persist(nustusdapplicant);
            em.getTransaction().commit();
        } finally {
            if (em != null) {
                em.close();
            }
        }
    }
    
//    public List<NUSTUSDApplicant> findSelected(boolean all, int maxResults, int firstResult){
//        EntityManager em = getEntityManager();
//        try{
//           Query q = em.createNamedQuery("NUSTUSDApplicant.findByCommited");
//           q.setParameter("commited", NULL);
//           if (!all) {
//                q.setMaxResults(maxResults);
//                q.setFirstResult(firstResult);
//            }
//           return q.getResultList();
//        }catch(Exception ex){
//            ex.printStackTrace();
//        }finally{
//            em.close();
//        }
//        return null;
//    }
    
    
    
     public List<NUSTUSDApplicant> search_filter(String no, int year, int entry_type, String selected_programme, String national_id, String forenames, String surname){
        EntityManager em = getEntityManager();
        try{
        Query q1 = em.createQuery("SELECT n FROM NUSTUSDApplicant n WHERE UPPER(n.nUSTUSDApplicantPK.no) = :no OR n.year = :year OR n.entryType = :entryType OR n.nationalIDNo = :nationalIDNo OR n.selectedProgramme = :selectedProgramme OR n.surname = :surname OR n.forenames = :forenames");
        q1.setParameter("year", year);
        q1.setParameter("no", no);
        q1.setParameter("entryType", entry_type);
        q1.setParameter("selectedProgramme", selected_programme);
        q1.setParameter("nationalIDNo", national_id);
        q1.setParameter("surname", surname);
        q1.setParameter("forenames", forenames);
        return q1.getResultList();
        }catch(Exception ex){
           ex.printStackTrace(); 
        }
        
        return null;
    }
    
     public NUSTUSDApplicant offer_letter(String app_num){
        EntityManager em = getEntityManager();
        try{
          Query r = em.createNamedQuery("NUSTUSDApplicant.findByNo");
          r.setParameter("no", app_num);
          return (NUSTUSDApplicant) r.getSingleResult();
        }catch(Exception ex){
          ex.printStackTrace();
        }finally{
            em.close();
        }
        return null;
    }
    
        public List<NUSTUSDApplicant> findSelected(boolean all, int maxResults, int firstResult){
        PersistanceUnit pu = PersistanceUnit.getInstance();
        EntityManagerFactory emf = pu.enFactory;        
        EntityManager em = emf.createEntityManager();
        
       try{
        NUSTUSDApplicant ab= new NUSTUSDApplicant();
//        Query query1 = em.createQuery("SELECT n FROM NUSTUSDApplicant n WHERE n.selectedProgramme <> '' ");
        Query query1 = em.createQuery("SELECT n FROM NUSTUSDApplicant n WHERE n.processed = :processed AND n.year = :year");
        query1.setParameter("year",2018);
        query1.setParameter("processed",1);        
        if (!all) {
                query1.setMaxResults(maxResults);
                query1.setFirstResult(firstResult);
            }
        List<NUSTUSDApplicant> resultList1 = query1.getResultList();
        System.out.println("Returned"+resultList1.size());       
        return resultList1;}
       
       catch(Exception ex){
            ex.printStackTrace();
        }finally{
            em.close();
        }
        return null;
        
    }
    
    
    
    public List<NUSTUSDApplicant> unselectedSelected() {
        return unselectedSelected(true, -1, -1);
    }

    public List<NUSTUSDApplicant> unselectedSelected(int maxResults, int firstResult) {
        return unselectedSelected(false, maxResults, firstResult);
    }
    
    public List<NUSTUSDApplicant> findSelected() {
        return findSelected(true, -1, -1);
    }

    public List<NUSTUSDApplicant> findSelected(int maxResults, int firstResult) {
        return findSelected(false, maxResults, firstResult);
    }
    
     public List<NUSTUSDApplicant> unselectedSelected(boolean all, int maxResults, int firstResult){
        EntityManager em = getEntityManager();
        try{
        Query q = em.createQuery("SELECT n FROM NUSTUSDApplicant n WHERE n.processed != :processed AND n.year = :year");
        q.setParameter("year",2018);
        q.setParameter("processed",1);
           if (!all) {
                q.setMaxResults(maxResults);
                q.setFirstResult(firstResult);
            }
           return q.getResultList();
        }catch(Exception ex){
            ex.printStackTrace();
        }finally{
            em.close();
        }
        return null;
    }

    public List<NUSTUSDApplicant> findStudentEntities() {
        return findStudentEntities(true, -1, -1);
    }

    public List<NUSTUSDApplicant> findStudentEntities(int maxResults, int firstResult) {
        return findStudentEntities(false, maxResults, firstResult);
    }

    private List<NUSTUSDApplicant> findStudentEntities(boolean all, int maxResults, int firstResult) {
        EntityManager em = getEntityManager();
        try {
            CriteriaQuery cq = em.getCriteriaBuilder().createQuery();
            cq.select(cq.from(NUSTUSDApplicant.class));
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

//    public NUSTUSDApplicant findApplicant(Integer id) {
//        EntityManager em = getEntityManager();
//        try {
//            return em.find(NUSTUSDApplicant.class, id);
//        } finally {
//            em.close();
//        }
//    }
}