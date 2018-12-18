package nust.systems.workingcrud.controllers;

import java.io.IOException;
import java.text.ParseException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import nust.systems.workingcrud.dao.NUSTUSDApplicantChoiceDao;
import nust.systems.workingcrud.dao.NUSTUSDApplicantCreateDao;
import nust.systems.workingcrud.dao.NUSTUSDApplicantDao;
import nust.systems.workingcrud.dao.NUSTUSDApplicantEducationDao;
import nust.systems.workingcrud.dao.NUSTUSDApplicantEmploymentDao;
import nust.systems.workingcrud.dao.NUSTUSDApplicantQualificationDao;
import nust.systems.workingcrud.entities.NUSTUSDApplicant;
import nust.systems.workingcrud.entities.NUSTUSDApplicantChoice;
import nust.systems.workingcrud.entities.NUSTUSDApplicantChoicePK;
import nust.systems.workingcrud.entities.NUSTUSDApplicantEducation;
import nust.systems.workingcrud.entities.NUSTUSDApplicantEducationPK;
import nust.systems.workingcrud.entities.NUSTUSDApplicantEmployment;
import nust.systems.workingcrud.entities.NUSTUSDApplicantEmploymentPK;
import nust.systems.workingcrud.entities.NUSTUSDApplicantQualification;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

/**
 *
 * @author User
 */
@Controller
public class NUSTSUDApplicantCreate {
        
  //CODE FOR ADDING UNDERGRADUATE PERSONAL DETAILS      
@RequestMapping(value = "/addUnderDetails", method = RequestMethod.GET)
       public ModelAndView addUnderDetails(HttpServletRequest request,ModelMap modelMap) throws IOException{
       HttpSession s = request.getSession();
       HttpSession session = request.getSession();
       String username = (String) s.getAttribute("username");
       session.setAttribute("username", username);
       String applicantNumber = request.getParameter("applicantNumber");
       ModelAndView model= new ModelAndView("indexUnderGrad");
       model.addObject("appNo",applicantNumber);
          NUSTUSDApplicant ap =new NUSTUSDApplicant();
        NUSTUSDApplicantCreateDao apd =new NUSTUSDApplicantCreateDao();
        apd.createApplicant(request, ap);
        return model;
   }
       
       
       @RequestMapping(value="/addUnderQua", method = RequestMethod.GET)
public ModelAndView addUnderQua(HttpServletRequest request)throws IOException,ParseException{

   HttpSession s = request.getSession();
        HttpSession session = request.getSession();
        String username = (String) s.getAttribute("username");
        session.setAttribute("username", username);
   NUSTUSDApplicantQualificationDao naqd = new NUSTUSDApplicantQualificationDao();
   NUSTUSDApplicantQualification nuaq = new NUSTUSDApplicantQualification();
   String applicantNumber = request.getParameter("applicantNumber");
       ModelAndView model= new ModelAndView("indexUnderGrad");
       model.addObject("appNo",applicantNumber);
   naqd.createQualification(request, nuaq);
		
    return model;

}


 @RequestMapping(value = "/addUnderChoice", method = RequestMethod.GET)
 public ModelAndView addUnderChoice(HttpServletRequest request)throws IOException, ParseException{
 
  String applicantNumber = request.getParameter("applicantNumber");
  HttpSession s = request.getSession();
        HttpSession session = request.getSession();
        String username = (String) s.getAttribute("username");
        session.setAttribute("username", username);
       ModelAndView model= new ModelAndView("indexUnderGrad");
       model.addObject("appNo",applicantNumber);
        NUSTUSDApplicantChoice nud = new NUSTUSDApplicantChoice();
        NUSTUSDApplicantChoicePK nust = new NUSTUSDApplicantChoicePK();
        NUSTUSDApplicantChoiceDao nst = new NUSTUSDApplicantChoiceDao();
             
         nst.createChoice(request, nud);
 
 return model;
 }

 //CODE FOR ADDING SPECIAL APLLICANT DETAILS
 
 
@RequestMapping(value = "/addSpecDetails", method = RequestMethod.GET)
       public ModelAndView addSpecDetails(HttpServletRequest request,ModelMap modelMap) throws IOException{
      
       HttpSession s = request.getSession();
        HttpSession session = request.getSession();
        String username = (String) s.getAttribute("username");
        session.setAttribute("username", username);    
       String applicantNumber = request.getParameter("applicantNumber");
       ModelAndView model= new ModelAndView("indexSpecialEntry");
       model.addObject("appNo",applicantNumber);
          NUSTUSDApplicant ap =new NUSTUSDApplicant();
        NUSTUSDApplicantCreateDao apd =new NUSTUSDApplicantCreateDao();
        apd.createApplicant(request, ap);
        return model;
   }
       
       @RequestMapping(value="/addSpecialQua", method = RequestMethod.GET)
public ModelAndView addSpecialQua(HttpServletRequest request)throws IOException,ParseException{

   HttpSession s = request.getSession();
        HttpSession session = request.getSession();
        String username = (String) s.getAttribute("username");
        session.setAttribute("username", username);
   NUSTUSDApplicantQualificationDao naqd = new NUSTUSDApplicantQualificationDao();
   NUSTUSDApplicantQualification nuaq = new NUSTUSDApplicantQualification();
   String applicantNumber = request.getParameter("applicantNumber");
       ModelAndView model= new ModelAndView("indexSpecialEntry");
       model.addObject("appNo",applicantNumber);
   naqd.createQualification(request, nuaq);
		
    return model;
}

@RequestMapping(value ="/addSpecialEducation",method= RequestMethod.GET)
public ModelAndView addSpecialEducation(HttpServletRequest request) throws IOException{
    HttpSession s = request.getSession();
        HttpSession session = request.getSession();
        String username = (String) s.getAttribute("username");
        session.setAttribute("username", username); 
    NUSTUSDApplicantEducation nae = new NUSTUSDApplicantEducation();
     NUSTUSDApplicantEducationPK naepk = new NUSTUSDApplicantEducationPK();
     NUSTUSDApplicantEducationDao naed = new NUSTUSDApplicantEducationDao();
    String applicantNumber = request.getParameter("applicantNumber");
       ModelAndView model= new ModelAndView("indexSpecialEntry");
       model.addObject("appNo",applicantNumber);
     naed.createEducation(request, nae);
     return model;
   

}

        
@RequestMapping(value = "/addSpecialEmployment", method = RequestMethod.GET)
 public ModelAndView addEmployment(HttpServletRequest request)throws IOException, ParseException{
     
     HttpSession s = request.getSession();
        HttpSession session = request.getSession();
        String username = (String) s.getAttribute("username");
        session.setAttribute("username", username);
     String applicantNumber = request.getParameter("applicantNumber");
       ModelAndView model= new ModelAndView("indexSpecialEntry");
       model.addObject("appNo",applicantNumber);
     NUSTUSDApplicantEmployment nae = new NUSTUSDApplicantEmployment();
     NUSTUSDApplicantEmploymentPK naepk = new NUSTUSDApplicantEmploymentPK();
     NUSTUSDApplicantEmploymentDao naed = new NUSTUSDApplicantEmploymentDao();
    naed.createEmployment(request, nae);
 
    return model;
        
}
     
        
@RequestMapping(value = "/addSpecialChoice", method = RequestMethod.GET)
 public ModelAndView addSpecialChoice(HttpServletRequest request)throws IOException, ParseException{
 HttpSession s = request.getSession();
        HttpSession session = request.getSession();
        String username = (String) s.getAttribute("username");
        session.setAttribute("username", username);
  String applicantNumber = request.getParameter("applicantNumber");
       ModelAndView model= new ModelAndView("indexSpecialEntry");
       model.addObject("appNo",applicantNumber);
        NUSTUSDApplicantChoice nud = new NUSTUSDApplicantChoice();
        NUSTUSDApplicantChoicePK nust = new NUSTUSDApplicantChoicePK();
        NUSTUSDApplicantChoiceDao nst = new NUSTUSDApplicantChoiceDao();
             
         nst.createChoice(request, nud);
 
 return model;
 }
    

 
 
 
 
 //CODE FOR ADDING POSTGRAD APPLICANT DETAILS
@RequestMapping(value = "/addPostDetails", method = RequestMethod.GET)
       public ModelAndView addPostDetails(HttpServletRequest request,ModelMap modelMap) throws IOException{
      HttpSession s = request.getSession();
        HttpSession session = request.getSession();
        String username = (String) s.getAttribute("username");
        session.setAttribute("username", username);
           String applicantNumber = request.getParameter("applicantNumber");
       ModelAndView model= new ModelAndView("indexPostGrad");
       model.addObject("appNo",applicantNumber);
          NUSTUSDApplicant ap =new NUSTUSDApplicant();
        NUSTUSDApplicantCreateDao apd =new NUSTUSDApplicantCreateDao();
        apd.createApplicant(request, ap);
        return model;
   }
       
       
       @RequestMapping(value ="/addPostEducation",method= RequestMethod.GET)
    public ModelAndView addPostEducation(HttpServletRequest request) throws IOException{
    HttpSession s = request.getSession();
        HttpSession session = request.getSession();
        String username = (String) s.getAttribute("username");
        session.setAttribute("username", username);
        NUSTUSDApplicantEducation nae = new NUSTUSDApplicantEducation();
     NUSTUSDApplicantEducationPK naepk = new NUSTUSDApplicantEducationPK();
     NUSTUSDApplicantEducationDao naed = new NUSTUSDApplicantEducationDao();
    String applicantNumber = request.getParameter("applicantNumber");
       ModelAndView model= new ModelAndView("indexPostGrad");
       model.addObject("appNo",applicantNumber);
     naed.createEducation(request, nae);
     return model;
   

}

    @RequestMapping(value="/addPostChoice", method = RequestMethod.GET)
public ModelAndView addPostChoice(HttpServletRequest request)throws IOException,ParseException{

   String applicantNumber = request.getParameter("applicantNumber");
       ModelAndView model= new ModelAndView("indexPostGrad");
       model.addObject("appNo",applicantNumber);
  NUSTUSDApplicantChoiceDao naqd = new NUSTUSDApplicantChoiceDao();
  NUSTUSDApplicantChoice nuaq = new NUSTUSDApplicantChoice();
  naqd.createPostChoice(request, nuaq);

   return model;


}

@RequestMapping(value = "/addPostEmployment", method = RequestMethod.GET)
 public ModelAndView addPostEmployment(HttpServletRequest request)throws IOException, ParseException{
     
     
     String applicantNumber = request.getParameter("applicantNumber");
       ModelAndView model= new ModelAndView("indexPostGrad");
       model.addObject("appNo",applicantNumber);
     NUSTUSDApplicantEmployment nae = new NUSTUSDApplicantEmployment();
     NUSTUSDApplicantEmploymentPK naepk = new NUSTUSDApplicantEmploymentPK();
     NUSTUSDApplicantEmploymentDao naed = new NUSTUSDApplicantEmploymentDao();
    naed.createEmployment(request, nae);
 
    return model;
        
}
//CODE FOR UPDATING APPLICANT DETAILS
 
 
 
 @RequestMapping(value = "/updateApplicant1", method = RequestMethod.GET)
       public ModelAndView updateApplicant(HttpServletRequest request) throws IOException{
           
         ModelAndView model= new ModelAndView("error");
         NUSTUSDApplicant apc =new NUSTUSDApplicant();
         NUSTUSDApplicantCreateDao zapd =new NUSTUSDApplicantCreateDao();
         zapd.updateApplicants(request, apc);
         return model;
   }   
       
       
         @RequestMapping(value = "/updateChooice1", method = RequestMethod.GET)    
          public ModelAndView updateChooice(HttpServletRequest request) throws IOException{
      //ModelAndView model= new ModelAndView("error");
        // NUSTUSDApplicantController apc =new NUSTUSDApplicantController();
       //  return apc.getAllFees(Mymodel);
              
              
             // String Id = request.getParameter("appNo");
          //NUSTApplicantView aa= new NUSTApplicantView();
         //NUSTUSDApplicant apc =new NUSTUSDApplicant();
         //NUSTUSDApplicantCreateDao zapd =new NUSTUSDApplicantCreateDao();
        //zapd.updateChoices(request, apc);
        //return aa.viewApplicantRD(Id);
        
        
         ModelAndView model= new ModelAndView("error");
         NUSTUSDApplicant apc =new NUSTUSDApplicant();
         NUSTUSDApplicantCreateDao zapd =new NUSTUSDApplicantCreateDao();
         zapd.updateChoices(request, apc);
         return model;
         
         
        
         
   }   
       
       
            @RequestMapping(value = "/updateQualification1", method = RequestMethod.GET)
       public ModelAndView updateQualification(HttpServletRequest request) throws IOException{
           String Id = request.getParameter("appNo");
        
         NUSTUSDApplicant apc =new NUSTUSDApplicant();
          NUSTApplicantView aa= new NUSTApplicantView();
         NUSTUSDApplicantCreateDao zaps =new NUSTUSDApplicantCreateDao();
         zaps.updateQualification(request, apc);
          return aa.viewApplicantRD(Id);
         
   }   
       
       
       
          @RequestMapping(value = "/updateEdu", method = RequestMethod.GET)
       public ModelAndView updateEducation(HttpServletRequest request) throws IOException{
          String Id = request.getParameter("appNo"); 
          NUSTApplicantView aa= new NUSTApplicantView();
         NUSTUSDApplicant apc =new NUSTUSDApplicant();
         NUSTUSDApplicantCreateDao zapsd =new NUSTUSDApplicantCreateDao();
         zapsd.updateEducation(request, apc);
          return aa.viewApplicantRD(Id);
   }   

       
        
        @RequestMapping(value = "/updateEmploy1", method = RequestMethod.GET)
       public ModelAndView updateEmployment(HttpServletRequest request) throws IOException{
           
         ModelAndView model= new ModelAndView("error");
         NUSTUSDApplicant apc =new NUSTUSDApplicant();
         NUSTUSDApplicantCreateDao zapsd =new NUSTUSDApplicantCreateDao();
      //   zapsd.updateEducation(request, apc);
      zapsd.updateEmployment(request, apc);
         return model;
   }   
 
    
}
