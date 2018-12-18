/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package nust.systems.workingcrud.controllers;

import java.util.List;
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
public class NUSTUSDSearchAndFilterController {
    
    
    @RequestMapping(value = "/searchfilter", method = RequestMethod.GET)
    public ModelAndView searchfilter(HttpServletRequest request, ModelAndView model){
      String no = request.getParameter("no");
      int year = Integer.parseInt(request.getParameter("year"));
      int entry_type = Integer.parseInt(request.getParameter("entry_type"));
      String selected_programme = request.getParameter("selected_programme");
      String national_id = request.getParameter("national_id");
      String forenames = request.getParameter("forenames");
      String surname = request.getParameter("surname");
      NUSTUSDApplicantDao nstd = new NUSTUSDApplicantDao();
      List<NUSTUSDApplicant> res = nstd.search_filter(no, year, entry_type, selected_programme, national_id, forenames, surname);
      model.addObject("res", res);
      model.setViewName("index");
      return model;
    }
    
    
}
