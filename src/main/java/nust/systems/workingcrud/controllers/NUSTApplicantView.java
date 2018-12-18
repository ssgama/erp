/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package nust.systems.workingcrud.controllers;

import java.io.IOException;
import java.math.BigDecimal;
import java.util.ArrayList;
import java.util.List;
import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Query;
import javax.servlet.http.HttpServletRequest;
import nust.systems.workingcrud.models.applModel;
import nust.systems.workingcrud.config.PersistanceUnit;
import nust.systems.workingcrud.dao.NUSTUSDApplicantDao;
import nust.systems.workingcrud.entities.NUSTUSDApplicant;
import nust.systems.workingcrud.entities.NUSTUSDApplicantChoice;
import nust.systems.workingcrud.entities.NUSTUSDApplicantEducation;
import nust.systems.workingcrud.entities.NUSTUSDApplicantEmployment;
import nust.systems.workingcrud.entities.NUSTUSDApplicantQualification;
import nust.systems.workingcrud.entities.NUSTUSDApplicantReferee;
import nust.systems.workingcrud.entities.NUSTUSDApplicantSelectionAidJourn;
import nust.systems.workingcrud.entities.NUSTUSDCommentLine;
import nust.systems.workingcrud.entities.NUSTUSDProgrammeFeeDetail;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

/**
 *
 * @author Rodney
 */

@Controller
public class NUSTApplicantView {

     NUSTUSDApplicantDao app = new NUSTUSDApplicantDao();

     /* View Selected Applicants */
        @RequestMapping(value = "/viewApplicant", method = RequestMethod.GET)
        public ModelAndView viewApplicant(HttpServletRequest request) throws IOException{
        String search = request.getParameter("id");
        search=search.trim();
     System.out.println("sss");   

     ModelAndView myModel=new ModelAndView();
     
     if(findNo(search,0)!=null){
         myModel=initializeView(findNo(search,0),null);
        }

        
     else{
         System.out.println("Search not found");
         myModel.addObject("id_not_found",search);
         myModel.setViewName("not_found");
         }
    
     
     return myModel;
    }
        
        
        
                  /* viewApplicantRD */
        @RequestMapping(value = "/viewApplicantRD", method = RequestMethod.GET)
        public ModelAndView viewApplicantRD(String search) throws IOException{
     System.out.println("sss");   

     ModelAndView myModel=new ModelAndView();
     
     if(findNo(search,0)!=null){
         myModel=initializeView(findNo(search,0),null);
        }

        
     else{
         System.out.println("Search not found");
         myModel.addObject("id_not_found",search);
         myModel.setViewName("not_found");
         }
    
     
     return myModel;
    }


        /* View UnSelected Applicants */
        @RequestMapping(value = "/viewUnselectdApplicant", method = RequestMethod.GET)
        public ModelAndView viewUnselectdApplicant(HttpServletRequest request) throws IOException{
        String search = request.getParameter("id");
        
        System.out.println("sss");   

        ModelAndView myModel=new ModelAndView();
     
     if(findNo(search,0)!=null){
         myModel=initializeView(findNo(search,0),null);
        }

        
     else{
         System.out.println("Search not found");
         myModel.addObject("id_not_found",search);
         myModel.setViewName("not_found");
         }
    
     
     return myModel;
    }

        
        //CODE TO FIND APPLICANT BY APPLICANT NUMBER AND CUSTOMER NUMBER
        
        
        /* Find Applicant by Applicant Number */
    public NUSTUSDApplicant findNo (String search, int accYear){
        System.out.println("Now in find by applicant number");
        PersistanceUnit pu = PersistanceUnit.getInstance();
        EntityManagerFactory emf = pu.enFactory;        
        EntityManager em = emf.createEntityManager();
        NUSTUSDApplicant ab= null;
        Query query1= null;
        // if academic year not specified
        if(accYear==0){
            System.out.println("Now search Applicant number without year");
//        query1 = em.createQuery("SELECT n FROM NUSTUSDApplicant n WHERE n.nUSTUSDApplicantPK.no = :no");}
        query1 = em.createQuery("SELECT n FROM NUSTUSDApplicant n WHERE UPPER(n.nUSTUSDApplicantPK.no) = :no");}
        //if academic year is specified
        else{
        query1 = em.createQuery("SELECT n FROM NUSTUSDApplicant n WHERE UPPER(n.nUSTUSDApplicantPK.no) = :no AND n.year = :year");
        query1.setParameter("year", accYear);
        } 
        query1.setParameter("no", search.toUpperCase());
        List<NUSTUSDApplicant> resultList1 = query1.getResultList();
        if(resultList1.size()>0){
        for(NUSTUSDApplicant aa:  resultList1){
        
        ab=aa;}
        System.out.println(ab.toString()+"dddd");
        System.out.println("Applicant with national ID: "+resultList1.get(0).getNationalIDVerified()+"initialised");
        em.close();
        return ab;}
        
      
      
        else{
      System.out.println("AA returned nothing");
      return ab=null;}
      
      
    }
    
    
    
    
/* Find Applicant by Customer Number */
    public NUSTUSDApplicant findCustNo(String search){
      System.out.println("Now in find by customer number");
        PersistanceUnit pu = PersistanceUnit.getInstance();
        EntityManagerFactory emf = pu.enFactory;
         NUSTUSDApplicant ab= null;    
       try  { EntityManager em = emf.createEntityManager();
        Query query2 = em.createQuery("SELECT n FROM NUSTUSDApplicant n WHERE n.nUSTUSDApplicantPK.customerNo = :customerNo");
        query2.setParameter("customerNo", search);
        System.out.println("QQQQQQQQQQQQQQQQ"+search);
        List<NUSTUSDApplicant> resultList2 = query2.getResultList();
        System.out.println("QQQQQQQQQQQQQQQQ"+resultList2.size());
        for(NUSTUSDApplicant aa:  resultList2){
        System.out.println("Applicant: "+aa.getNationalIDVerified()+"initialised");
        ab=aa;}
        em.close();
        return ab;
    }
        
        catch(Exception ex){
      System.out.println(ex+"returned nothing");
      return ab=null;
      }
        
    }
    
        
        
     NUSTUSDApplicantDao app2 = new NUSTUSDApplicantDao();
        /* Find qualifications */
        @RequestMapping(value = "/editApplicant", method = RequestMethod.GET)
        public ModelAndView editApplicant(HttpServletRequest request) throws IOException{
        String search = request.getParameter("id");
        int academicYear=2018;
     System.out.println("sss");   

     ModelAndView myModel=new ModelAndView();
     
     if(findNo(search,0)!=null){
         myModel=initializeView2(findNo(search,0),null);
        }

        
     else{
         System.out.println("Search not found");
         myModel.addObject("id_not_found",search);
         myModel.setViewName("not_found");
         }
    
     
     return myModel;
    }    
      
        
        
            NUSTUSDApplicantDao app3 = new NUSTUSDApplicantDao();
        /* Edit Applicants Choice */
        @RequestMapping(value = "/editChoices", method = RequestMethod.GET)
        public ModelAndView editApplicantsChoice(HttpServletRequest request) throws IOException{
         String applicantNo = request.getParameter("id");
        System.out.println("Searching for Choices for: "+applicantNo);
        PersistanceUnit pu = PersistanceUnit.getInstance();
        EntityManagerFactory emf = pu.enFactory;        
        EntityManager em = emf.createEntityManager();
        NUSTUSDApplicantChoice ab= new NUSTUSDApplicantChoice();
        Query query6 = em.createQuery("SELECT n FROM NUSTUSDApplicantChoice n WHERE n.nUSTUSDApplicantChoicePK.applicantNo = :applicantNo");
        query6.setParameter("applicantNo",applicantNo);
        List<NUSTUSDApplicantChoice> resultList6 = query6.getResultList();
        ModelAndView model=new ModelAndView();
        model.addObject("choices", resultList6);
        model.setViewName("edit_choices");
        
        return model;
    }
        
            /* progFeeDetail */
        @RequestMapping(value = "/progFeeDetail", method = RequestMethod.GET)
        public ModelAndView progFeeDetail(HttpServletRequest request){
        int year = Integer.parseInt(request.getParameter("year"));
        String programme = request.getParameter("prog");
        programme=programme.trim();
        List<NUSTUSDProgrammeFeeDetail> fees=feeLines(programme, year);
        List<NUSTUSDProgrammeFeeDetail> feeOut =  new ArrayList<>();
        int number=3;
        BigDecimal nn=BigDecimal.valueOf(number).movePointLeft(2);
        for(NUSTUSDProgrammeFeeDetail fee: fees){
         fee.setAmount(BigDecimal.valueOf(fee.getAmount().intValue()));
         feeOut.add(fee);
        }
        ModelAndView model=new ModelAndView();
        model.addObject("fees", feeOut);
        model.setViewName("view_programme_fee_detail");
       return model;
    } 
      
    
    /* */
        public List<NUSTUSDProgrammeFeeDetail> feeLines(String programClass, int year){
        BigDecimal fees=new BigDecimal("0.0");
        System.out.println("Now in getFees for"+programClass);
        PersistanceUnit pu = PersistanceUnit.getInstance();
        EntityManagerFactory emf = pu.enFactory;        
        EntityManager em = emf.createEntityManager();
        Query query7 = em.createQuery("SELECT n FROM NUSTUSDProgrammeFeeDetail n WHERE n.nUSTUSDProgrammeFeeDetailPK.classCode = :classCode"+" AND n.nUSTUSDProgrammeFeeDetailPK.programmePart = '1' AND n.nUSTUSDProgrammeFeeDetailPK.semester = '1' AND n.nUSTUSDProgrammeFeeDetailPK.year = :year");
        query7.setParameter("classCode", programClass);
        query7.setParameter("year", year);
        List<NUSTUSDProgrammeFeeDetail> resultList7 = query7.getResultList();
        System.out.println("aaa"+resultList7.size());
        em.close();  
        return resultList7;
        }        
        
        
             NUSTUSDApplicantDao app4 = new NUSTUSDApplicantDao();
        /* Edit Applicants Choice */
        @RequestMapping(value = "/editEducationz", method = RequestMethod.GET)
        public ModelAndView editEdu(HttpServletRequest request) throws IOException{
         String applicantNo = request.getParameter("id");
        System.out.println("Now In Education: "+applicantNo);
        PersistanceUnit pu = PersistanceUnit.getInstance();
        EntityManagerFactory emf = pu.enFactory;        
        EntityManager em = emf.createEntityManager();
        NUSTUSDApplicantEducation ab= new NUSTUSDApplicantEducation();
        Query query6 = em.createQuery("SELECT n FROM NUSTUSDApplicantEducation n WHERE n.nUSTUSDApplicantEducationPK.applicantNo = :applicantNo");
        query6.setParameter("applicantNo",applicantNo);
        List<NUSTUSDApplicantEducation> resultList6 = query6.getResultList();
        ModelAndView model=new ModelAndView();
        model.addObject("tertiaryEducation", resultList6);
        model.setViewName("edit_tertiary_education_1");
        
        return model;
    }    
        
        
        
          NUSTUSDApplicantDao app5 = new NUSTUSDApplicantDao();
        /* Edit Applicants Choice */
        @RequestMapping(value = "/editEmployment1", method = RequestMethod.GET)
        public ModelAndView editEmplyment(HttpServletRequest request) throws IOException{
         String applicantNo = request.getParameter("id");
        System.out.println("Now In Employment: "+applicantNo);
        PersistanceUnit pu = PersistanceUnit.getInstance();
        EntityManagerFactory emf = pu.enFactory;        
        EntityManager em = emf.createEntityManager();
        NUSTUSDApplicantEducation ab= new NUSTUSDApplicantEducation();
        Query query6 = em.createQuery("SELECT n FROM NUSTUSDApplicantEmployment n WHERE n.nUSTUSDApplicantEmploymentPK.applicantNo = :applicantNo");
        query6.setParameter("applicantNo",applicantNo);
        List<NUSTUSDApplicantEmployment> resultList6 = query6.getResultList();
        ModelAndView model=new ModelAndView();
        model.addObject("employ", resultList6);
        model.setViewName("edit_employment");
        
        return model;
    }    
        
        
        
        
          
     
        /* Find Applicant */
        @RequestMapping(value = "/findApplicant", method = RequestMethod.GET)
        public ModelAndView findApplicant(HttpServletRequest request) throws IOException{
         String search = request.getParameter("search_filter");
         search=search.trim();
         int academicYear=Integer.parseInt(request.getParameter("academicYear"));
         System.out.println("Academic year is a "+academicYear);
         
         if(search.isEmpty()){
         ModelAndView myModel=new ModelAndView();
         List<NUSTUSDApplicant> getAllApplicants = app.findStudentEntities(50, 0);
         myModel.addObject("getAllApplicants", getAllApplicants);
         myModel.setViewName("index");
         return myModel;
         }
         
         else{ 
         ModelAndView myModel=new ModelAndView();
         
         if(Character.isDigit(search.charAt(0))){
         System.out.println("Now in find by applicant number");
         if(findNo(search, academicYear)==null){
         System.out.println("Didnt get nothing");
         myModel.addObject("id_not_found",search);
         myModel.setViewName("not_found");
         }
         else {myModel=resultList(findNo(search,academicYear),null);}
         
         }
         
         else if(Character.isLetter(search.charAt(0))&&Character.isDigit(search.charAt(1))){
         System.out.println("Now in find by customer number");
         if(findCustNo(search)==null && findNo(search, academicYear)==null){
         System.out.println("Didnt get nothing");
         myModel.addObject("id_not_found",search);
         myModel.setViewName("not_found");
         }
         else if(findCustNo(search)==null && findNo(search, academicYear)!=null){
         myModel=resultList(findNo(search, academicYear), null);}
         
         else if(findCustNo(search)!=null && findNo(search, academicYear)==null){
         myModel=resultList(findCustNo(search), null);}
         
         else if(findCustNo(search)!=null && findNo(search, academicYear)!=null){
         myModel=resultList(findNo(search, academicYear), null);}
         
         }
         
         else if(Character.isLetter(search.charAt(0))&&Character.isLetter(search.charAt(1))){
         System.out.println("Now in find by surname");
         if(findSurname(search, academicYear)==null){
         System.out.println("Didnt get nothing");
         myModel.addObject("id_not_found",search);
         myModel.setViewName("not_found");
         }
         
         else if((findSurname(search, academicYear)).size()==1){
              System.out.println("Got one applicant by surname");
              NUSTUSDApplicant applicant=findSurname(search, academicYear).get(0);
              myModel=initializeView(applicant, null);
         }
         
         else if((findSurname(search, academicYear)).size()>1){
              System.out.println("Got many applicants by surname");
              List <NUSTUSDApplicant> applicant=findSurname(search, academicYear);
              myModel=initializeView( null, applicant);
             
         }
         }
         
         
     return myModel;
         }
         
        }
        
        
         @RequestMapping(value = "/viewreferees" , method = RequestMethod.GET)
     public ModelAndView viewReferees(HttpServletRequest request) throws IOException {
     System.out.println("Now in view referees");
     String search = request.getParameter("search_filter");
     search=search.trim();
//     String search="37435";
     /* customer number 76631*/
     ModelAndView myModel=new ModelAndView();
     List<NUSTUSDApplicantReferee> refs=findReferee(search);
     myModel.addObject("referee",refs);
     myModel.setViewName("view_referees");   
    
     
     return myModel;
    }
     
     @RequestMapping(value = "/viewEmployment", method = RequestMethod.GET)
     public ModelAndView viewEmployment(HttpServletRequest request) throws IOException {
     System.out.println("Now in view Employment");
     String search = request.getParameter("search_filter");
//     String search="17603";
     /* customer number 76631*/
     ModelAndView myModel=new ModelAndView();
     List<NUSTUSDApplicantEmployment> employ=findEmployment(search);
     myModel.addObject("employment",employ);
     myModel.setViewName("view_employment");   
    
     
     return myModel;
    }
     
     
     
     /* Find Applicant Employment by Applicant Number */
    public List<NUSTUSDApplicantEmployment> findEmployment(String search){
        System.out.println("Now in find applicant employment by applicant number");
        PersistanceUnit pu = PersistanceUnit.getInstance();
        EntityManagerFactory emf = pu.enFactory;        
        EntityManager em = emf.createEntityManager();
        Query query1 = em.createQuery("SELECT n FROM NUSTUSDApplicantEmployment n WHERE n.nUSTUSDApplicantEmploymentPK.applicantNo = :applicantNo");
        query1.setParameter("applicantNo", search);
        List<NUSTUSDApplicantEmployment> resultList1 = query1.getResultList();
        System.out.println("Employment for : "+resultList1.get(0).getRemarks()+" initialised");
        em.close();
        return  resultList1;
    }
     
     
          /* Find Applicant Referees by Applicant Number */
    public List<NUSTUSDApplicantReferee> findReferee(String search){
        System.out.println("Now in find referee by applicant number");
        PersistanceUnit pu = PersistanceUnit.getInstance();
        EntityManagerFactory emf = pu.enFactory;        
        EntityManager em = emf.createEntityManager();
        NUSTUSDApplicantReferee ab= new NUSTUSDApplicantReferee();
        Query query1 = em.createQuery("SELECT n FROM NUSTUSDApplicantReferee n WHERE n.nUSTUSDApplicantRefereePK.applicantNo = :applicantNo");
        query1.setParameter("applicantNo", search);
        String addressline="";
        List<NUSTUSDApplicantReferee> resultList1 = query1.getResultList();
        System.out.println("Referees: "+addressline+" initialised");
        em.close();
        return  resultList1;
    }
     
     /* List search Results */
public ModelAndView resultList(NUSTUSDApplicant applicant, List<NUSTUSDApplicant> applicantlist) throws IOException {
         ModelAndView model=new ModelAndView();
         if(applicantlist==null){
             System.out.println("Now result for one student");
             List<NUSTUSDApplicant> applicantl=new ArrayList<NUSTUSDApplicant>();
             applicantl.add(applicant);
             model.addObject("getAllApplicants", applicantl);
             model.setViewName("index");
        }
       
         else {
             System.out.println("Now result for many students");
             model.addObject("getAllApplicants", applicantlist);
             for(NUSTUSDApplicant aa: applicantlist){
             System.out.println(aa.getForenames());
             }
             model.setViewName("index");
             }
        
         return model;
        }


    
    
    
    
     /* Initialize session for Viewing the applicants */
        public ModelAndView initializeView(NUSTUSDApplicant applicant, List<NUSTUSDApplicant> applicantlist) throws IOException {
         ModelAndView model=new ModelAndView();
         if(applicantlist==null){
             System.out.println("Now initializing session for one student");
             int points=getAlevelpoints(applicant.getNUSTUSDApplicantPK().getNo());
             int noQualifications=getQualificationCount(applicant.getNUSTUSDApplicantPK().getNo());
             int noChoices=countChoices(applicant.getNUSTUSDApplicantPK().getNo());
             int noProgHist=getProgHistoryCount(applicant.getNUSTUSDApplicantPK().getNo());
             int fees=getFees(applicant.getSelectedProgramme(), applicant.getYear());
             String location= getLocationInfo(applicant.getNUSTUSDApplicantPK().getNo());
             model.addObject("noProgHist", noProgHist);
             model.addObject("pointsout", points);
             model.addObject("count", noQualifications);
             model.addObject("choicecount", noChoices);
             model.addObject("applicant", applicant);
             model.addObject("location",location);
             model.addObject("fees",fees);
             model.setViewName("view_applicant");}
       
         else{
             System.out.println("Now initializing session for many student");
             model.addObject("getAllApplicants", applicantlist);
             for(NUSTUSDApplicant aa: applicantlist){
             System.out.println(aa.getForenames());
             }
             model.setViewName("index");
             }
        
         return model;
        }
        
        
        
        
         /* Initialize session for Viewing the applicants */
        public ModelAndView initializeView2(NUSTUSDApplicant applicant, List<NUSTUSDApplicant> applicantlist) throws IOException {
         ModelAndView model2=new ModelAndView();
         if(applicantlist==null){
             System.out.println("Now initializing session for one student");
             int points=getAlevelpoints(applicant.getNUSTUSDApplicantPK().getNo());
             int noQualifications=getQualificationCount(applicant.getNUSTUSDApplicantPK().getNo());
             int noChoices=countChoices(applicant.getNUSTUSDApplicantPK().getNo());
             int noProgHist=getProgHistoryCount(applicant.getNUSTUSDApplicantPK().getNo());
             String location= getLocationInfo(applicant.getNUSTUSDApplicantPK().getNo());
             model2.addObject("noProgHist", noProgHist);
             model2.addObject("pointsout", points);
             model2.addObject("count", noQualifications);
             model2.addObject("choicecount", noChoices);
             model2.addObject("applicant", applicant);
             model2.addObject("location",location);
             model2.setViewName("edit_applicant");}
       
         else{
             System.out.println("Now initializing session for many student");
             model2.addObject("getAllApplicants", applicantlist);
             for(NUSTUSDApplicant aa: applicantlist){
             System.out.println(aa.getForenames());
             }
             model2.setViewName("index");
             }
        
         return model2;
        }
        
        
        
        /* Get Fees*/
     public int getFees(String programClass, int year){
     BigDecimal fees=new BigDecimal("0.0");
     System.out.println("Now in getFees for"+programClass);
        PersistanceUnit pu = PersistanceUnit.getInstance();
        EntityManagerFactory emf = pu.enFactory;        
        EntityManager em = emf.createEntityManager();
        Query query7 = em.createQuery("SELECT n FROM NUSTUSDProgrammeFeeDetail n WHERE n.nUSTUSDProgrammeFeeDetailPK.classCode = :classCode"+" AND n.nUSTUSDProgrammeFeeDetailPK.programmePart = '1' AND n.nUSTUSDProgrammeFeeDetailPK.semester = '1' AND n.nUSTUSDProgrammeFeeDetailPK.year = :year");
        query7.setParameter("classCode", programClass);
        query7.setParameter("year", year);
        List<NUSTUSDProgrammeFeeDetail> resultList7 = query7.getResultList();
        System.out.println("aaa"+resultList7.size());
        em.close();
        int totalfees=0;        
        for(NUSTUSDProgrammeFeeDetail qq: resultList7){
         totalfees=totalfees+qq.getAmount().intValue();
         System.out.println("ssssssssss"+totalfees);
        }
     
     return totalfees;
         
     }        
        
        
         /* Initialize session for Viewing the applicants */
        public ModelAndView initializeView3(NUSTUSDApplicant applicant, List<NUSTUSDApplicant> applicantlist) throws IOException {
         ModelAndView model3=new ModelAndView();
         if(applicantlist==null){
             System.out.println("Now initializing session for one student");
             int points=getAlevelpoints(applicant.getNUSTUSDApplicantPK().getNo());
             int noQualifications=getQualificationCount(applicant.getNUSTUSDApplicantPK().getNo());
             int noChoices=countChoices(applicant.getNUSTUSDApplicantPK().getNo());
             int noProgHist=getProgHistoryCount(applicant.getNUSTUSDApplicantPK().getNo());
             String location= getLocationInfo(applicant.getNUSTUSDApplicantPK().getNo());
             model3.addObject("noProgHist", noProgHist);
             model3.addObject("pointsout", points);
             model3.addObject("count", noQualifications);
             model3.addObject("choicecount", noChoices);
             model3.addObject("applicant", applicant);
             model3.addObject("location",location);
             model3.setViewName("edit_choices");}
       
         else{
             System.out.println("Now initializing session for many student");
             model3.addObject("getAllApplicants", applicantlist);
             for(NUSTUSDApplicant aa: applicantlist){
             System.out.println(aa.getForenames());
             }
             model3.setViewName("index");
             }
        
         return model3;
        }
        
        
     /* unselected Summary */
        @RequestMapping(value = "/unselectedSummary")
        public ModelAndView unselectedSummary(){
         ModelAndView model=new ModelAndView();
         List<applModel> out=new ArrayList<>();
         System.out.println("Now loading unselectd summary");
         NUSTUSDApplicantDao app1 = new NUSTUSDApplicantDao();
         List<NUSTUSDApplicant> getunSelectedApplicants = app1.unselectedSelected(50,0);
         
         for(NUSTUSDApplicant app: getunSelectedApplicants){
         applModel applic=new applModel();
         applic.setNo_(app.getNUSTUSDApplicantPK().getNo());
         applic.setCustNo_(app.getNUSTUSDApplicantPK().getCustomerNo());
         applic.setPoints(getAlevelpoints(app.getNUSTUSDApplicantPK().getNo()));
         PersistanceUnit pu = PersistanceUnit.getInstance();
         EntityManagerFactory emf = pu.enFactory;        
         EntityManager em = emf.createEntityManager();
         NUSTUSDCommentLine ab= new NUSTUSDCommentLine();
         Query query5 = em.createQuery("SELECT n FROM NUSTUSDCommentLine n WHERE n.nUSTUSDCommentLinePK.no = :no");
         query5.setParameter("no", app.getNUSTUSDApplicantPK().getNo());
         List<NUSTUSDCommentLine> resultList5 = query5.getResultList();
         em.close();
         if(resultList5.isEmpty()){
             applic.setComments("");
         }
         else{
        applic.setComments(resultList5.get(0).getComment());
        
         }
         out.add(applic);
         }
                  
         model.setViewName("unselected_summary");
         model.addObject("applicant", out);
         return model;
        }        
        
        
     
     
     /* Get Applicant A-level points */
     public int getAlevelpoints(String search){
        System.out.println("Now in Points Calculation ");
        int points=0;
        int level=2;
        PersistanceUnit pu = PersistanceUnit.getInstance();
        EntityManagerFactory emf = pu.enFactory;        
        EntityManager em = emf.createEntityManager();
        NUSTUSDApplicantQualification ab= new NUSTUSDApplicantQualification();
        Query query5 = em.createQuery("SELECT n FROM NUSTUSDApplicantQualification n WHERE n.nUSTUSDApplicantQualificationPK.applicantNo = :applicantNo");
        query5.setParameter("applicantNo", search);
        List<NUSTUSDApplicantQualification> resultList5 = query5.getResultList();
        List<NUSTUSDApplicantQualification> qout=new ArrayList<NUSTUSDApplicantQualification>();
        em.close();
        for(NUSTUSDApplicantQualification qq: resultList5){
        if(!qq.getProgrammeDescription().isEmpty()){
        qout.add(qq);
        }
        }
        for(NUSTUSDApplicantQualification qs: qout){
        if(qs.getLevel()==level){
        points=points+qs.getSubjectPoints();
        }
        
        }
        
        System.out.println("Points are"+points);
     return points;
     }
     
     
     
    /* Find Applicant by Surname */    
    public List<NUSTUSDApplicant> findSurname(String search, int year) {
        System.out.println("Now in find by surname");
        List<NUSTUSDApplicant> resultList3= null;
      try{   PersistanceUnit pu = PersistanceUnit.getInstance();
        String search1=search.toUpperCase();
        EntityManagerFactory emf = pu.enFactory;        
        EntityManager em = emf.createEntityManager();
        Query query3=null;
        if(year!=0){
        query3 = em.createQuery("SELECT n FROM NUSTUSDApplicant n WHERE UPPER(n.surname) LIKE '%"+search1+"%' AND n.year = :year");
//        query3.setParameter("surname",search1);
        query3.setParameter("year", year);}
        else{
        query3 = em.createQuery("SELECT n FROM NUSTUSDApplicant n WHERE UPPER(n.surname)LIKE '%"+search1+"%'");
//        query3.setParameter("surname",search1);
        }
        
        resultList3 = query3.getResultList();
        return resultList3; }
        
        catch(Exception ex){
      System.out.println("returned nothing");
      return resultList3=null;
      }
        
    }
    
    /* Find Applicant by Name */
    public NUSTUSDApplicant findName(String search){
        System.out.println("Now in find by name");
        PersistanceUnit pu = PersistanceUnit.getInstance();
        EntityManagerFactory emf = pu.enFactory;        
        EntityManager em = emf.createEntityManager();
        NUSTUSDApplicant ab= new NUSTUSDApplicant();
        Query query4 = em.createQuery("SELECT n FROM NUSTUSDApplicant n WHERE n.forenames = :forenames");
        query4.setParameter("forenames", search);
        List<NUSTUSDApplicant> resultList4 = query4.getResultList();
        for(NUSTUSDApplicant aa:  resultList4){
        System.out.println("Applicant: "+aa.getForenames()+"initialised");
        }
        em.close();
        return ab;
    }
    
    
    /* Find qualifications */
        @RequestMapping(value = "/findQualification", method = RequestMethod.GET)
        public ModelAndView findQualification(HttpServletRequest request){
        String applicantNo = request.getParameter("id");
        System.out.println("Now in findQualification for "+applicantNo);
        PersistanceUnit pu = PersistanceUnit.getInstance();
        EntityManagerFactory emf = pu.enFactory;        
        EntityManager em = emf.createEntityManager();
        NUSTUSDApplicantQualification ab= new NUSTUSDApplicantQualification();
        Query query5 = em.createQuery("SELECT n FROM NUSTUSDApplicantQualification n WHERE n.nUSTUSDApplicantQualificationPK.applicantNo = :applicantNo");
        query5.setParameter("applicantNo", applicantNo);
        List<NUSTUSDApplicantQualification> resultList5 = query5.getResultList();
        List<NUSTUSDApplicantQualification> qout=new ArrayList<NUSTUSDApplicantQualification>();
        em.close();
        for(NUSTUSDApplicantQualification qq: resultList5){
        if(!qq.getProgrammeDescription().isEmpty()){
        qout.add(qq);
        System.out.println(qq.getProgrammeDescription());
        }
        }
        ModelAndView model=new ModelAndView();
        model.addObject("qualifications", qout);
        model.setViewName("view_qualifications");
       return model;
    }
        
        
            /* Edit qualifications */
        @RequestMapping(value = "/editQualification", method = RequestMethod.GET)
        public ModelAndView editQualification(HttpServletRequest request){
        String applicantNo = request.getParameter("id");
        System.out.println("Now in findQualification for "+applicantNo);
        PersistanceUnit pu = PersistanceUnit.getInstance();
        EntityManagerFactory emf = pu.enFactory;        
        EntityManager em = emf.createEntityManager();
        NUSTUSDApplicantQualification ab= new NUSTUSDApplicantQualification();
        Query query5 = em.createQuery("SELECT n FROM NUSTUSDApplicantQualification n WHERE n.nUSTUSDApplicantQualificationPK.applicantNo = :applicantNo");
        query5.setParameter("applicantNo", applicantNo);
        List<NUSTUSDApplicantQualification> resultList5 = query5.getResultList();
        List<NUSTUSDApplicantQualification> qout=new ArrayList<NUSTUSDApplicantQualification>();
        em.close();
        for(NUSTUSDApplicantQualification qq: resultList5){
        if(!qq.getProgrammeDescription().isEmpty()){
        qout.add(qq);
        System.out.println(qq.getProgrammeDescription());
        }
        }
        ModelAndView model=new ModelAndView();
        model.addObject("counterqual",resultList5.size());
        model.addObject("qualifications", qout);
        model.setViewName("edit_qualifications");
       return model;
    }
     
     
    
        
  
        

        
    /* Show Selected Applicants Summary */
        @RequestMapping(value = "/ApplSummary", method = RequestMethod.GET)
        public ModelAndView SelectedApplSummary(HttpServletRequest request){
        NUSTUSDApplicantDao aa=new NUSTUSDApplicantDao();
        List <NUSTUSDApplicant> Selected=aa.findSelected();
        int noSelected=Selected.size();
        int male=0, female=0;
        for(NUSTUSDApplicant ss: Selected){
        if(ss.getSex()==1){
        male=male+1;    
        }
        else if(ss.getSex()==2){
        female=female+1;    
        }
        else;
        }
        List <NUSTUSDApplicant> Unselected=aa.unselectedSelected();
        int noUnselected=Unselected.size();
        int umale=0, ufemale=0;
        for(NUSTUSDApplicant ss: Unselected){
        if(ss.getSex()==1){
        umale=umale+1;    
        }
        else if(ss.getSex()==2){
        ufemale=ufemale+1;    
        }
        else;
        }
        ModelAndView model=new ModelAndView();
        model.addObject("noSelected", noSelected);
        model.addObject("maleSelected", male);
        model.addObject("femaleSelected", female);
        model.addObject("noUnselected", noUnselected);
        model.addObject("maleUnselected", umale);
        model.addObject("femaleUnselected", ufemale);
        model.setViewName("Summary");
       return model;
    }
              
        
        
        
    /* Get Qualifications count*/
        public int getQualificationCount(String applicantNo){
        System.out.println("Now counting qualifications for .... ");
        PersistanceUnit pu = PersistanceUnit.getInstance();
        EntityManagerFactory emf = pu.enFactory;        
        EntityManager em = emf.createEntityManager();
        NUSTUSDApplicantQualification ab= new NUSTUSDApplicantQualification();
        Query query5 = em.createQuery("SELECT n FROM NUSTUSDApplicantQualification n WHERE n.nUSTUSDApplicantQualificationPK.applicantNo = :applicantNo");
        query5.setParameter("applicantNo", applicantNo);
        List<NUSTUSDApplicantQualification> resultList5 = query5.getResultList();
        List<NUSTUSDApplicantQualification> qout=new ArrayList<NUSTUSDApplicantQualification>();
        em.close();
        for(NUSTUSDApplicantQualification qq: resultList5){
        if(!qq.getProgrammeDescription().isEmpty()){
        qout.add(qq);
        }
        }
        int count=qout.size();
        return count;
    }
     
     /* Get getProgHistoryCount count*/
        public int getProgHistoryCount(String applicantNo){
        System.out.println("Now counting program history for .... ");
        PersistanceUnit pu = PersistanceUnit.getInstance();
        EntityManagerFactory emf = pu.enFactory;        
        EntityManager em = emf.createEntityManager();
        NUSTUSDApplicantSelectionAidJourn ab= new NUSTUSDApplicantSelectionAidJourn();
        Query query5 = em.createQuery("SELECT n FROM NUSTUSDApplicantSelectionAidJourn n WHERE n.nUSTUSDApplicantSelectionAidJournPK.no = :no");
        query5.setParameter("no", applicantNo);
        List<NUSTUSDApplicantSelectionAidJourn> resultList5 = query5.getResultList();
        em.close();
        int count=resultList5.size();
        return count;
    }
     
         /* Get getProgHistory*/

        @RequestMapping(value = "/ProgHistory", method = RequestMethod.GET)
        public ModelAndView getProgHistory(HttpServletRequest request){
        String applicantNo = request.getParameter("id");
        System.out.println("Now in find selection history for "+applicantNo);
        System.out.println("Now getting program history for .... ");
        PersistanceUnit pu = PersistanceUnit.getInstance();
        EntityManagerFactory emf = pu.enFactory;        
        EntityManager em = emf.createEntityManager();
        NUSTUSDApplicantSelectionAidJourn ab= new NUSTUSDApplicantSelectionAidJourn();
        Query query5 = em.createQuery("SELECT n FROM NUSTUSDApplicantSelectionAidJourn n WHERE n.nUSTUSDApplicantSelectionAidJournPK.no = :no");
        query5.setParameter("no", applicantNo);
        List<NUSTUSDApplicantSelectionAidJourn> resultList5 = query5.getResultList();
        em.close();
        ModelAndView model=new ModelAndView();
        model.addObject("ProgHistory",resultList5);
        model.setViewName("selection_program_history");
       return model;
    }    
        
        
        
    /* Find Location */
        public String getLocationInfo(String applicantNo){
        System.out.println("Now getting location");
        PersistanceUnit pu = PersistanceUnit.getInstance();
        EntityManagerFactory emf = pu.enFactory;        
        EntityManager em = emf.createEntityManager();
        NUSTUSDApplicantChoice ab= new NUSTUSDApplicantChoice();
        Query query6 = em.createQuery("SELECT n FROM NUSTUSDApplicantChoice n WHERE n.nUSTUSDApplicantChoicePK.applicantNo = :applicantNo");
        query6.setParameter("applicantNo",applicantNo);
        List<NUSTUSDApplicantChoice> resultList6 = query6.getResultList();
        ModelAndView model=new ModelAndView();
        return resultList6.get(0).getLocation();
    }
        
    /* Get Choices */
        @RequestMapping(value = "/findChoices", method = RequestMethod.GET)
       public ModelAndView findChoices(HttpServletRequest request){       
        String applicantNo = request.getParameter("id");
        System.out.println("Searching for Choices for: "+applicantNo);
        PersistanceUnit pu = PersistanceUnit.getInstance();
        EntityManagerFactory emf = pu.enFactory;        
        EntityManager em = emf.createEntityManager();
        NUSTUSDApplicantChoice ab= new NUSTUSDApplicantChoice();
        Query query6 = em.createQuery("SELECT n FROM NUSTUSDApplicantChoice n WHERE n.nUSTUSDApplicantChoicePK.applicantNo = :applicantNo");
        query6.setParameter("applicantNo",applicantNo);
        List<NUSTUSDApplicantChoice> resultList6 = query6.getResultList();
        ModelAndView model=new ModelAndView();
        model.addObject("choices", resultList6);
        model.setViewName("view_choices");
        return model;
    }    
     
    
    /* Count number of Choices */
    public int countChoices(String applicantNo){
        PersistanceUnit pu = PersistanceUnit.getInstance();
        EntityManagerFactory emf = pu.enFactory;        
        EntityManager em = emf.createEntityManager();
        NUSTUSDApplicantChoice ab= new NUSTUSDApplicantChoice();
        Query query6 = em.createQuery("SELECT n FROM NUSTUSDApplicantChoice n WHERE n.nUSTUSDApplicantChoicePK.applicantNo = :applicantNo");
        query6.setParameter("applicantNo",applicantNo);
        List<NUSTUSDApplicantChoice> resultList6 = query6.getResultList();
        int choicesCount=resultList6.size();
        return choicesCount;
    }
        
        /* Get Fees <NOT USED> */
     public BigDecimal getFees(String programClass){
     BigDecimal fees=new BigDecimal("0.0");
     System.out.println("Now in getFees ");
        PersistanceUnit pu = PersistanceUnit.getInstance();
        EntityManagerFactory emf = pu.enFactory;        
        EntityManager em = emf.createEntityManager();
        Query query7 = em.createQuery("SELECT n FROM NUSTUSDProgrammeFeeDetail n WHERE n.nUSTUSDProgrammeFeeDetailPK.classCode = :classCode");
        query7.setParameter("classCode", programClass);
        List<NUSTUSDProgrammeFeeDetail> resultList7 = query7.getResultList();
        for(NUSTUSDProgrammeFeeDetail qq: resultList7){
         fees=qq.getAmount();
            
        }
     
     return fees;
         
     }
      
     
      /* View comments*/
        @RequestMapping(value = "/viewComment", method = RequestMethod.GET)
        public ModelAndView findComment(HttpServletRequest request){
        String applicantNo = request.getParameter("id");
//          String applicantNo = "41911";
        System.out.println("Now in findComment for "+applicantNo);
        PersistanceUnit pu = PersistanceUnit.getInstance();
        EntityManagerFactory emf = pu.enFactory;        
        EntityManager em = emf.createEntityManager();
        NUSTUSDCommentLine ab= new NUSTUSDCommentLine();
        Query query5 = em.createQuery("SELECT n FROM NUSTUSDCommentLine n WHERE n.nUSTUSDCommentLinePK.no = :no");
        query5.setParameter("no", applicantNo);
        List<NUSTUSDCommentLine> resultList5 = query5.getResultList();
        List<NUSTUSDCommentLine> qout=new ArrayList<NUSTUSDCommentLine>();
        em.close();
        System.out.println("now in comment line"+resultList5.get(0).getComment());
        ModelAndView model=new ModelAndView();
        model.addObject("comments", qout);
        model.setViewName("view_comment");
       return model;
    }
  
        
        /* View education*/
        @RequestMapping(value = "/aa", method = RequestMethod.GET)
        public ModelAndView findEducation(HttpServletRequest request){
        String applicantNo = request.getParameter("id");
//        String applicantNo = "41911";
        System.out.println("Now in findEducation for "+applicantNo);
        PersistanceUnit pu = PersistanceUnit.getInstance();
        EntityManagerFactory emf = pu.enFactory;        
        EntityManager em = emf.createEntityManager();
        Query query5 = em.createQuery("SELECT n FROM NUSTUSDApplicantEducation n WHERE n.nUSTUSDApplicantEducationPK.applicantNo = :applicantNo");
        query5.setParameter("applicantNo", applicantNo);
        List<NUSTUSDApplicantEducation> resultList5 = query5.getResultList();
        List<NUSTUSDApplicantEducation> qout=new ArrayList<NUSTUSDApplicantEducation>();
        em.close();
        System.out.println("now in tertiary education :"+resultList5.get(0).getOverallClassification());
        ModelAndView model=new ModelAndView();
        model.addObject("tertiaryEducation", qout);
        model.setViewName("view_tertiary_education");
       return model;
    }
        
        
        
        
}

