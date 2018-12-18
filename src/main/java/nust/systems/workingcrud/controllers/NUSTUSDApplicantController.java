/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package nust.systems.workingcrud.controllers;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Query;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import nust.systems.workingcrud.config.PersistanceUnit;
import nust.systems.workingcrud.dao.NUSTUSDApplicantCreateDao;
import nust.systems.workingcrud.dao.NUSTUSDApplicantDao;
import nust.systems.workingcrud.entities.NUSTUSDApplicant;
import nust.systems.workingcrud.entities.NUSTUSDApplicantChoice;
import nust.systems.workingcrud.entities.NUSTUSDApplicantPK;
import nust.systems.workingcrud.entities.NUSTUSDApplicantReferee;
import nust.systems.workingcrud.entities.NUSTUSDApplicantSelectionAidJourn;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

/**
 *
 * @author Rodney
 */

@Controller
public class NUSTUSDApplicantController {
    
    NUSTUSDApplicantDao app = new NUSTUSDApplicantDao();
  //TEAM M2   
    //TEAM M2   
    @RequestMapping(value = "/")
     public ModelAndView IndexIt(ModelAndView model) throws IOException {
       
       model.setViewName("login");
       return model;
    }
     
  //TEAM M2   
    @RequestMapping(value = "/all")
     public ModelAndView getAllFees(ModelAndView model, HttpServletRequest request) throws IOException {
        HttpSession s = request.getSession(); 
        HttpSession session = request.getSession();
        String username = (String) s.getAttribute("username");
        session.setAttribute("username", username);
        List<NUSTUSDApplicant> getAllApplicants = app.findStudentEntities(50, 0);
        for(NUSTUSDApplicant nts:getAllApplicants){
            
                System.out.println("Student name:" + nts.getForenames() + " " + nts.getCity());
        }
       model.addObject("getAllApplicants", getAllApplicants);
       model.setViewName("index");
       return model;
    }
     
     
     ///findSpecial1
     
     
         
     @RequestMapping(value = "/chooseApplicantType", method = RequestMethod.GET)
    public ModelAndView findSpecial2(ModelAndView model, HttpServletRequest request) {
        HttpSession s = request.getSession();
        HttpSession session = request.getSession();
        String username = (String) s.getAttribute("username");
        session.setAttribute("username", username);
         model.setViewName("indexApplicant");
         return model;
    }  
    
     
     @RequestMapping(value = "/findSpecial1", method = RequestMethod.GET)
    public ModelAndView findSpecial(HttpServletRequest request,ModelAndView model) {
        HttpSession s = request.getSession();
        HttpSession session = request.getSession();
        String username = (String) s.getAttribute("username");
        session.setAttribute("username", username);
        NUSTUSDApplicantCreateDao aa=new NUSTUSDApplicantCreateDao();
        String EntryType = request.getParameter("EntryType");
        String appNo =aa.createId(EntryType);
        model.addObject("appNo",appNo);
         model.setViewName("indexSpecialEntry");
         return model;
    }  
    
    
     
    @RequestMapping(value = "/findPost1", method = RequestMethod.GET)
    public ModelAndView findPost(HttpServletRequest request,ModelAndView model) {
        HttpSession s = request.getSession();
        HttpSession session = request.getSession();
        String username = (String) s.getAttribute("username");
        session.setAttribute("username", username);
        NUSTUSDApplicantCreateDao aa=new NUSTUSDApplicantCreateDao();
        String EntryType = request.getParameter("EntryType");
        String appNo =aa.createId(EntryType);
        model.addObject("appNo",appNo);
         model.setViewName("indexPostGrad");
         return model;
    }
    
    
    @RequestMapping(value = "/findUnder1", method = RequestMethod.GET)
    public ModelAndView findUnder(HttpServletRequest request,ModelAndView model) {
        HttpSession s = request.getSession();
        HttpSession session = request.getSession();
        String username = (String) s.getAttribute("username");
        session.setAttribute("username", username);
        NUSTUSDApplicantCreateDao aa=new NUSTUSDApplicantCreateDao();
        String EntryType = request.getParameter("EntryType");
        String appNo =aa.createId(EntryType);
        model.addObject("appNo",appNo);
        model.setViewName("indexUnderGrad");
         return model;
    }
    

//TEAM T&S
    @RequestMapping(value = "/findByProg", method = RequestMethod.GET)
        public ModelAndView findByProg(HttpServletRequest request){
        HttpSession s = request.getSession();
        HttpSession session = request.getSession();
        String username = (String) s.getAttribute("username");
        session.setAttribute("username", username);
        String search = request.getParameter("prog_name").toUpperCase();  
        int year = Integer.parseInt(request.getParameter("academicYear"));  
        PersistanceUnit pu = PersistanceUnit.getInstance();
        EntityManagerFactory emf = pu.enFactory;        
        EntityManager em = emf.createEntityManager();
        Query query6;
        System.out.print("year is"+year);
       //Query query6 = em.createQuery("SELECT n FROM NUSTUSDApplicant n WHERE UPPER(n.selectedProgramme) = "+search+" AND n.processed = :processed" );
        if(year==0){
        System.out.println("year is 0");
        query6 = em.createQuery("SELECT n FROM NUSTUSDApplicant n WHERE n.selectedProgramme = :search AND n.processed = :processed AND n.year = :year" );
        query6.setParameter("year", 2018);
        }
        else{
        query6 = em.createQuery("SELECT n FROM NUSTUSDApplicant n WHERE n.selectedProgramme = :search AND n.processed = :processed AND n.year = :year" );
        query6.setParameter("year", year);        
        }
        query6.setParameter("search",search);
        query6.setParameter("processed",1);
        List<NUSTUSDApplicant> resultList5 = query6.getResultList();
        System.out.println("XXXXX Size of results"+resultList5.size());
        em.close();
        ModelAndView model=new ModelAndView();
        model.addObject("getSelectedApplicants",resultList5);
        model.setViewName("selected_applicantsbyprog");
       return model;
}
     
    @RequestMapping(value = "/selected")
    public ModelAndView SelectedApplicants(ModelAndView model, HttpServletRequest request) throws IOException{
        HttpSession s = request.getSession();
        HttpSession session = request.getSession();
        String username = (String) s.getAttribute("username");
        session.setAttribute("username", username);
        NUSTUSDApplicantDao app1 = new NUSTUSDApplicantDao();
        List<NUSTUSDApplicant> getSelectedApplicants = app1.findSelected(50,0);
        System.out.println("Returned"+getSelectedApplicants.size());
        model.addObject("count", getSelectedApplicants.size());
        model.addObject("getSelectedApplicants", getSelectedApplicants);
        model.setViewName("selected_applicants");
       return model;
    }
    
    @RequestMapping(value = "/unselected")
    public ModelAndView UnSelectedApplicants(ModelAndView model, HttpServletRequest request) throws IOException{
        System.out.println("Now in unselected");
        HttpSession s = request.getSession();
        HttpSession session = request.getSession();
        String username = (String) s.getAttribute("username");
        session.setAttribute("username", username);
        NUSTUSDApplicantDao app1 = new NUSTUSDApplicantDao();
        List<NUSTUSDApplicant> getunSelectedApplicants = app1.unselectedSelected(50,0);
        System.out.println("Returned"+getunSelectedApplicants.size());
        model.addObject("count", getunSelectedApplicants.size());
        model.addObject("getunSelectedApplicants", getunSelectedApplicants);
        model.setViewName("unselected_applicants");
        return model;
    }
    
    
    
    
        /* Find Unselected Applicant unselectedbychoice */
        @RequestMapping(value = "/unselectedbychoice", method = RequestMethod.GET)
        public ModelAndView unselectedbychoice(HttpServletRequest request) throws IOException{
        HttpSession s = request.getSession();
        HttpSession session = request.getSession();
        String username = (String) s.getAttribute("username");
        session.setAttribute("username", username);    
        String progCode = request.getParameter("program_filter").toUpperCase();  
        int year = Integer.parseInt(request.getParameter("academicYear"));  
        PersistanceUnit pua = PersistanceUnit.getInstance();
        EntityManagerFactory emfa = pua.enFactory;        
        EntityManager ema = emfa.createEntityManager();
        Query query2;
        
        if(year==0){
        query2=ema.createQuery("SELECT n FROM NUSTUSDApplicant n WHERE n.processed != :processed AND n.year = :year");
        query2.setParameter("year",2018);
                     }
        else{
        query2=ema.createQuery("SELECT n FROM NUSTUSDApplicant n WHERE n.processed != :processed AND n.year = :year");
        query2.setParameter("year",year);
            }          
        query2.setParameter("processed",1);
        System.out.println("Queeried" + query2);
        List<NUSTUSDApplicant> resultList6 = query2.getResultList();
        System.out.println("unselected results="+resultList6.size());
        ema.close();
        
        
        PersistanceUnit pu = PersistanceUnit.getInstance();
        EntityManagerFactory emf = pu.enFactory;        
        EntityManager em = emf.createEntityManager();
        NUSTUSDApplicant ab= new NUSTUSDApplicant();
        List<NUSTUSDApplicant> out=new ArrayList<NUSTUSDApplicant>();
        for(NUSTUSDApplicant applic: resultList6){
        Query query1 = em.createQuery("SELECT n FROM NUSTUSDApplicantChoice n WHERE n.nUSTUSDApplicantChoicePK.applicantNo= :appno AND UPPER(n.nUSTUSDApplicantChoicePK.programmeCode) = :programmeCode");
        query1.setParameter("programmeCode", progCode);
        query1.setParameter("appno", applic.getNUSTUSDApplicantPK().getNo());
        List<NUSTUSDApplicantChoice> resultList1 = query1.getResultList();
        if(resultList1.size()>0){
          out.add(applic);
        }
        
        
        }
        em.close();
        System.out.println("by choice results"+out.size());        
        ModelAndView model=new  ModelAndView();
        model.addObject("progCode", progCode);
        model.addObject("count", out.size());
        model.addObject("getunSelectedApplicants", out);
        model.setViewName("unselected_applicantsbychoice");
        return model;
    }

            
        /* Find Unselected Applicant by customer number*/
        @RequestMapping(value = "/unselectedbyno", method = RequestMethod.GET)
        public ModelAndView UnSelectedByNo(HttpServletRequest request) throws IOException{
        HttpSession s = request.getSession();
        HttpSession session = request.getSession();
        String username = (String) s.getAttribute("username");
        session.setAttribute("username", username);    
        String customerNo = request.getParameter("search_filter");  
        PersistanceUnit pu = PersistanceUnit.getInstance();
        EntityManagerFactory emf = pu.enFactory;        
        EntityManager em = emf.createEntityManager();
        NUSTUSDApplicant ab= new NUSTUSDApplicant();
        Query query1 = em.createQuery("SELECT n FROM NUSTUSDApplicant n WHERE n.processed != :processed AND n.nUSTUSDApplicantPK.no = :no");
        query1.setParameter("processed", 1);
        query1.setParameter("no", customerNo);
        List<NUSTUSDApplicant> resultList1 = query1.getResultList();
        em.close();
        System.out.println("Returned"+resultList1.size());
        ModelAndView model=new  ModelAndView();
        model.addObject("getunSelectedApplicants", resultList1);
        model.setViewName("unselected_applicants");
        return model;
    }
    //TEAM GUGU & SANI APPLICANT CREATION
        
    
}
