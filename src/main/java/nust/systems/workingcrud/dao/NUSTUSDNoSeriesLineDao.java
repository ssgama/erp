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
import javax.persistence.criteria.Root;
import nust.systems.workingcrud.config.PersistanceUnit;
import nust.systems.workingcrud.dao.exceptions.NonexistentEntityException;
import nust.systems.workingcrud.dao.exceptions.PreexistingEntityException;
import nust.systems.workingcrud.entities.NUSTUSDNoSeriesLine;
import nust.systems.workingcrud.entities.NUSTUSDNoSeriesLinePK;

/**
 *
 * @author gugxy
 */
public class NUSTUSDNoSeriesLineDao {

    PersistanceUnit pu = PersistanceUnit.getInstance();

    public NUSTUSDNoSeriesLineDao(EntityManagerFactory emf) {
        this.emf = emf;
    }

    public NUSTUSDNoSeriesLineDao() {
    }

    private EntityManagerFactory emf = pu.enFactory;

    public EntityManager getEntityManager() {
        return emf.createEntityManager();
    }
     public void create(NUSTUSDNoSeriesLine NUSTUSDNoSeriesLine) throws PreexistingEntityException, Exception {
        if (NUSTUSDNoSeriesLine.getNUSTUSDNoSeriesLinePK() == null) {
            NUSTUSDNoSeriesLine.setNUSTUSDNoSeriesLinePK(new NUSTUSDNoSeriesLinePK());
        }
        EntityManager em = null;
        try {
            em = getEntityManager();
            em.getTransaction().begin();
            em.persist(NUSTUSDNoSeriesLine);
            em.getTransaction().commit();
        } catch (Exception ex) {
            if (findNUSTUSDNoSeriesLine(NUSTUSDNoSeriesLine.getNUSTUSDNoSeriesLinePK()) != null) {
                throw new PreexistingEntityException("NUSTUSDNoSeriesLine " + NUSTUSDNoSeriesLine + " already exists.", ex);
            }
            throw ex;
        } finally {
            if (em != null) {
                em.close();
            }
        }
    }

 public String getNumber(){
        EntityManager em = getEntityManager();
        NUSTUSDNoSeriesLine nnsl = new NUSTUSDNoSeriesLine();
       // String applicantNumber = null;
        int applicantNumber1;
        // List<NUSTUSDNoSeriesLine> getAll = (List<NUSTUSDNoSeriesLine>) em.createNativeQuery("SELECT TOP 1 [Last No_ Used]where [Series Code] = 'NORMALL' ORDER BY [Last No_ Used] DESC");
        // Query q =Query("SELECT TOP 1 [Last No_ Used]where [Series Code] = 'NORMALL' ORDER BY [Last No_ Used] DESC ");
        em.getTransaction().begin();
        Query m = em.createNativeQuery("SELECT TOP 1 [Last No_ Used] FROM [TEST_NUST2017].[dbo].[NUST_USD$No_ Series Line] where [Series Code] = 'STUDENT' ORDER BY [Last No_ Used] DESC");
        //applicantNumber1 = m.getFirstResult();
        String applicantNumber = (String) m.getSingleResult();
       applicantNumber1 =Integer.parseInt(applicantNumber);// applicantNumber;
        applicantNumber1 = applicantNumber1+1;
        System.out.println("THIS IS THE NEW APPLICANT NUMBER "+applicantNumber);
                
                applicantNumber = Integer.toString(applicantNumber1);
        System.out.println("This is number from table"+applicantNumber);
        //applicantNumber1 = applicantNumber1 +1;
        //applicantNumber = Integer.toString(applicantNumber1);
        System.out.println("This is the number"+applicantNumber);
        return applicantNumber;
         }
 
 
 public void update(String applicantNumber, NUSTUSDNoSeriesLine NUSTUSDNoSeriesLine){
 
     System.out.println("The updated number"+applicantNumber);
     EntityManager em = getEntityManager();
     em.getTransaction().begin();
     Query g = em.createNativeQuery("UPDATE [TEST_NUST2017].[dbo].[NUST_USD$No_ Series Line]\n" +
"   SET [Series Code] = 'STUDENT'\n" +
"      ,[Line No_] = '1000'\n" +
"      ,[Starting Date] = '1753-01-01 00:00:00.000'\n" +
"      ,[Ending No_] = '7000'\n" +
"      ,[Starting No_] = '1000'\n" +
"      ,[Warning No_] = ''\n" +
"      ,[Increment-by No_] = 1\n" +
"      ,[Last No_ Used] = '"+applicantNumber+"'\n" +
"      ,[Open] =1\n" +
"      ,[Last Date Used] = '2014-06-05 00:00:00.000'\n" +
" WHERE [Series Code] = 'STUDENT'");
     //String updated = (String) g.getFirstResult();
   g.executeUpdate();
  // em.merge(g);
    //em.persist(NUSTUSDNoSeriesLine);
   //em.merge(NUSTUSDNoSeriesLine);
     em.getTransaction().commit();
     em.close();
     System.out.println("Table has been updated");
 
 
 }
 
    
    public void edit(NUSTUSDNoSeriesLine NUSTUSDNoSeriesLine) throws NonexistentEntityException, Exception {
        EntityManager em = null;
        try {
            em = getEntityManager();
            em.getTransaction().begin();
            NUSTUSDNoSeriesLine = em.merge(NUSTUSDNoSeriesLine);
            em.getTransaction().commit();
        } catch (Exception ex) {
            String msg = ex.getLocalizedMessage();
            if (msg == null || msg.length() == 0) {
                NUSTUSDNoSeriesLinePK id = NUSTUSDNoSeriesLine.getNUSTUSDNoSeriesLinePK();
                if (findNUSTUSDNoSeriesLine(id) == null) {
                    throw new NonexistentEntityException("The nUSTUSDNoSeriesLine with id " + id + " no longer exists.");
                }
            }
            throw ex;
        } finally {
            if (em != null) {
                em.close();
            }
        }
    }

    public void destroy(NUSTUSDNoSeriesLinePK id) throws NonexistentEntityException {
        EntityManager em = null;
        try {
            em = getEntityManager();
            em.getTransaction().begin();
            NUSTUSDNoSeriesLine NUSTUSDNoSeriesLine;
            try {
                NUSTUSDNoSeriesLine = em.getReference(NUSTUSDNoSeriesLine.class, id);
                NUSTUSDNoSeriesLine.getNUSTUSDNoSeriesLinePK();
            } catch (EntityNotFoundException enfe) {
                throw new NonexistentEntityException("The NUSTUSDNoSeriesLine with id " + id + " no longer exists.", enfe);
            }
            em.remove(NUSTUSDNoSeriesLine);
            em.getTransaction().commit();
        } finally {
            if (em != null) {
                em.close();
            }
        }
    }

    public List<NUSTUSDNoSeriesLine> findNUSTUSDNoSeriesLineEntities() {
        return findNUSTUSDNoSeriesLineEntities(true, -1, -1);
    }

    public List<NUSTUSDNoSeriesLine> findNUSTUSDNoSeriesLineEntities(int maxResults, int firstResult) {
        return findNUSTUSDNoSeriesLineEntities(false, maxResults, firstResult);
    }

    private List<NUSTUSDNoSeriesLine> findNUSTUSDNoSeriesLineEntities(boolean all, int maxResults, int firstResult) {
        EntityManager em = getEntityManager();
        try {
            CriteriaQuery cq = em.getCriteriaBuilder().createQuery();
            cq.select(cq.from(NUSTUSDNoSeriesLine.class));
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

    public NUSTUSDNoSeriesLine findNUSTUSDNoSeriesLine(NUSTUSDNoSeriesLinePK id) {
        EntityManager em = getEntityManager();
        try {
            return em.find(NUSTUSDNoSeriesLine.class, id);
        } finally {
            em.close();
        }
    }

    public int getNUSTUSDNoSeriesLineCount() {
        EntityManager em = getEntityManager();
        try {
            CriteriaQuery cq = em.getCriteriaBuilder().createQuery();
            Root<NUSTUSDNoSeriesLine> rt = cq.from(NUSTUSDNoSeriesLine.class);
            cq.select(em.getCriteriaBuilder().count(rt));
            Query q = em.createQuery(cq);
            return ((Long) q.getSingleResult()).intValue();
        } finally {
            em.close();
        }
    }
    
}

