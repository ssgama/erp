/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package nust.systems.workingcrud.controllers;

import javax.servlet.http.HttpServletRequest;
import nust.systems.workingcrud.dao.NUSTUSDApplicantDao;
import nust.systems.workingcrud.entities.NUSTUSDApplicant;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

/**
 *
 * @author Rodney
 */


@Controller
public class NUSTUSDOfferLetterController {
    
    NUSTUSDApplicantDao apd = new NUSTUSDApplicantDao();
    
     @RequestMapping(value = "/international_offer", method = RequestMethod.GET)
        public ModelAndView PopulateLetter(HttpServletRequest request, ModelAndView model){
             String app_number = request.getParameter("id");
             NUSTUSDApplicant nud = new NUSTUSDApplicant();
             nud = apd.offer_letter(app_number);
             model.addObject("nud",nud);
             model.setViewName("international_offer");
             return model;
        }
    
}
