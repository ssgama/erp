 /*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package nust.systems.workingcrud.services;

import java.math.BigDecimal;
import java.sql.Timestamp;
import java.text.SimpleDateFormat;
import java.time.LocalDate;
import java.util.Calendar;
import java.util.Date;
import java.util.List;
import java.util.Random;
import java.util.logging.Level;
import java.util.logging.Logger;
import nust.systems.workingcrud.dao.NUSTUSDApplicantChoiceDao;
import nust.systems.workingcrud.dao.NUSTUSDApplicantDao;
import nust.systems.workingcrud.dao.NUSTUSDApplicantEducationDao;
import nust.systems.workingcrud.dao.NUSTUSDNoSeriesLineDao;
import nust.systems.workingcrud.dao.exceptions.NonexistentEntityException;
import nust.systems.workingcrud.entities.NUSTUSDApplicant;
import nust.systems.workingcrud.entities.NUSTUSDApplicantChoice;
import nust.systems.workingcrud.entities.NUSTUSDApplicantChoicePK;
import nust.systems.workingcrud.entities.NUSTUSDApplicantEducation;
import nust.systems.workingcrud.entities.NUSTUSDApplicantEducationPK;
import nust.systems.workingcrud.entities.NUSTUSDApplicantPK;
import nust.systems.workingcrud.entities.NUSTUSDNoSeriesLine;
import static org.eclipse.persistence.expressions.ExpressionOperator.currentDate;

/**
 *
 * @author systems1
 */
public class Writeshit {
    public static void main(String [] args){
        Writeshit wrst = new Writeshit();
        wrst.createStudent();
       
    }
    
    public String createStudent(){
    //code to create student number
     //getting year 
        
        LocalDate currentDate = LocalDate.now();
        int y = currentDate.getYear();
        System.out.println("this is the year"+y);
    //Code to replace first char with N
        
        String year = Integer.toString(y);
        year = year.replaceFirst("2", "N");
        System.out.println("This is the prefix code"+year);
        // code for random letter generation
        
        Random rnd = new Random();
        char c = (char) (rnd.nextInt(26) + 'A');
  
         System.out.println("this is the random letter"+c);
         
         //code for getting the last value on studentid no series  code is Student
        NUSTUSDNoSeriesLineDao nsld = new NUSTUSDNoSeriesLineDao();
       String number = nsld.getNumber();
       nsld.update(number, null);
        System.out.println("this is the random letter"+number);
        String studentNumber = year +number+c;
        System.out.println("this is the id "+studentNumber);
        return studentNumber;
    
    }
  
    
    public void sendData(){
        NUSTUSDApplicantChoice nud = new NUSTUSDApplicantChoice();
        NUSTUSDApplicantChoicePK nust = new NUSTUSDApplicantChoicePK();
        NUSTUSDApplicantChoiceDao nst = new NUSTUSDApplicantChoiceDao();
        nust.setApplicantNo("12330");
        nust.setChoice(2);
        nust.setProgrammeCode("BAR");
        nust.setType(1);
        nud.setNUSTUSDApplicantChoicePK(nust);
        nud.setProgrammeName("Bachelor Of Science In Architecture");
        nud.setLocation("0");
        nud.setAddedAdvantage(0);
        nud.setProcessed(Short.valueOf("0"));
        nud.setAlgorithimChoice(0);
        nud.setBest3Points(BigDecimal.ZERO);
        nud.setDesiredSubjectsCount(0);
        nud.setDesiredSubjectsPoints(0);
        nud.setEnoughDatA(Short.valueOf("0"));
        nud.setWeiight(0);
        nud.setYear(2018);
        nud.setRankingNo(0);
        nud.setInternalStatus(0);
        nud.setMandatorySubjectsPoints(0);
        nud.setScore(BigDecimal.ONE);
        
        
        
        try{
            nst.create(nud);
            //NUSTUSDApplicantEducation applicants = nst.findApplicant(nust);
           //List<NUSTUSDApplicantEducation> applicants = nst.findEducationEntities(40, 0);
           //System.out.println(applicants);
        }catch(Exception ex){
            ex.printStackTrace();
        }
    }
    
    public void editData(){
        NUSTUSDApplicantChoice nud = new NUSTUSDApplicantChoice();
        NUSTUSDApplicantChoicePK nust = new NUSTUSDApplicantChoicePK();
        NUSTUSDApplicantChoiceDao nst = new NUSTUSDApplicantChoiceDao();
        nust.setApplicantNo("12330");
        nust.setChoice(2);
        nust.setProgrammeCode("BAR");
        nust.setType(1);
        nud.setNUSTUSDApplicantChoicePK(nust);
        nud.setProgrammeName("Bachelor Of Science In Informatics");
        nud.setLocation("0");
        nud.setAddedAdvantage(0);
        nud.setProcessed(Short.valueOf("0"));
        nud.setAlgorithimChoice(0);
        nud.setBest3Points(BigDecimal.ZERO);
        nud.setDesiredSubjectsCount(0);
        nud.setDesiredSubjectsPoints(0);
        nud.setEnoughDatA(Short.valueOf("0"));
        nud.setWeiight(0);
        nud.setYear(2014);
        nud.setRankingNo(0);
        nud.setInternalStatus(0);
        nud.setMandatorySubjectsPoints(0);
        nud.setScore(BigDecimal.ONE);
        
        try{
            nst.edit(nud);
            //NUSTUSDApplicantEducation applicants = nst.findApplicant(nust);
           //List<NUSTUSDApplicantEducation> applicants = nst.findEducationEntities(40, 0);
           //System.out.println(applicants);
        }catch(Exception ex){
            ex.printStackTrace();
        }
    }
    
    public void deleteData(){
        NUSTUSDApplicantChoice nud = new NUSTUSDApplicantChoice();
        NUSTUSDApplicantChoicePK nust = new NUSTUSDApplicantChoicePK();
        NUSTUSDApplicantChoiceDao nst = new NUSTUSDApplicantChoiceDao();
        nust.setApplicantNo("12330");
        nust.setChoice(2);
        nust.setProgrammeCode("SCSP");
        nust.setType(1);
        
        try {
            nst.destroy(nust);
        } catch (NonexistentEntityException ex) {
            Logger.getLogger(Writeshit.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
    
    public void readDataList(){
       
       
    }
    
    public void readDataIndividual(){
        NUSTUSDApplicantChoice nud = new NUSTUSDApplicantChoice();
        NUSTUSDApplicantChoicePK nust = new NUSTUSDApplicantChoicePK();
        NUSTUSDApplicantChoiceDao nst = new NUSTUSDApplicantChoiceDao();
        nust.setApplicantNo("12330");
        nust.setChoice(2);
        nust.setProgrammeCode("SCSP");
        nust.setType(1);
        
        nud = nst.findApplicant(nust);
        
        System.out.println("The choice is" +nud.getProgrammeName()+ "And the year is" +nud.getYear() );
    }
}
