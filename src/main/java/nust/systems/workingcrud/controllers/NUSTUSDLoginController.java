/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package nust.systems.workingcrud.controllers;


import java.util.List;
import javax.naming.NamingException;
import javax.naming.ldap.LdapContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import nust.systems.workingcrud.config.PortalAuthenticator;
import nust.systems.workingcrud.dao.NUSTUSDApplicantDao;
import nust.systems.workingcrud.entities.NUSTUSDApplicant;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

/**
 *
 * @author Rodney
 */

@Controller
public class NUSTUSDLoginController {
    
    @RequestMapping(value = "/login")
    public ModelAndView auth_user(HttpServletRequest request, ModelAndView model){

        String username = request.getParameter("username");
        String password = request.getParameter("password");
        HttpSession session = request.getSession();
        try{
             LdapContext ctx = PortalAuthenticator.getConnection(username, password, "nust.ac.zw");
             ctx.close();
             System.out.println("Authentication to Domain : nust.ac.zw  For : " + username + "  Successful\n");
             session.setAttribute("username", username);
             String userName = (String) session.getAttribute("username");
             if (null == userName) {
               model.addObject("Error", "Session has ended.  Please login.");
               model.setViewName("login");
               return model;
             } else {
               NUSTUSDApplicantDao app = new NUSTUSDApplicantDao();
               List<NUSTUSDApplicant> getAllApplicants = app.findStudentEntities(50, 0);
               model.addObject("getAllApplicants", getAllApplicants);
               model.setViewName("index");
               return model;

             }
             
        }catch(NamingException ex){
            ex.printStackTrace();
            model.setViewName("login");
            return model;
        }
        
    }
}
