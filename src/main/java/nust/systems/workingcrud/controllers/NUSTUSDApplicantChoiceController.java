/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package nust.systems.workingcrud.controllers;

import java.io.IOException;
import java.util.List;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import nust.systems.workingcrud.dao.NUSTUSDApplicantChoiceDao;
import nust.systems.workingcrud.entities.NUSTUSDApplicantChoice;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

/**
 *
 * @author Rodney
 */

@Controller
public class NUSTUSDApplicantChoiceController {
    NUSTUSDApplicantChoiceDao app = new NUSTUSDApplicantChoiceDao();
    
    @RequestMapping(value = "/choice")
     public ModelAndView getAllFees(ModelAndView model, HttpServletRequest request) throws IOException {
         HttpSession s = request.getSession();
        HttpSession session = request.getSession();
        String username = (String) s.getAttribute("username");
        session.setAttribute("username", username);
        List<NUSTUSDApplicantChoice> getAllApplicants = app.findChoiceEntities(25, 0);
        model.addObject("getAllApplicants", getAllApplicants);
        model.setViewName("index");
        return model;
    }
}
