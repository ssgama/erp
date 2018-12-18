<%-- 
    Document   : international_offer
    Created on : Nov 15, 2018, 2:38:59 PM
    Author     : systems1
--%>

<%@page import="java.util.Date"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="nust.systems.workingcrud.entities.NUSTUSDApplicant"%>
<%@page import="nust.systems.workingcrud.entities.NUSTUSDApplicantPK"%>
 

<% NUSTUSDApplicant info = (NUSTUSDApplicant)request.getAttribute("nud"); %>


<!DOCTYPE html>
<html>
<head>
    <title>NUST Management System</title>

    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
    <link rel="stylesheet" type="text/css" href="resources/css/jquery-ui-1.8.17.custom.css">
    <link rel="stylesheet" type="text/css" href="resources/css/main.css">

    <script type="text/javascript" src="resources/js/jquery/jquery-1.7.1.min.js"></script>
    <script type="text/javascript" src="resources/js/jquery/jquery-ui-1.8.17.custom.min.js"></script>
    <script type="text/javascript" src="resources/js/jspdf.debug.js"></script>
    <script type="text/javascript" src="resources/js/basi.js"></script>

    <script>
        $(function() {
            $("#accordion-basic, #accordion-text, #accordion-graphic, #accordion-font").accordion({
                autoHeight: true,
                navigation: true
            });
            $( "#tabs" ).tabs();
            $(".button").button();
        });
    </script>
    
    
    <script>
	function demoFromHTML() {
	var pdf = new jsPDF('p', 'pt', 'letter')

	// source can be HTML-formatted string, or a reference
	// to an actual DOM element from which the text will be scraped.
	, source = $('#fromHTMLtestdiv')[0]

	// we support special element handlers. Register them with jQuery-style 
	// ID selector for either ID or node name. ("#iAmID", "div", "span" etc.)
	// There is no support for any other type of selectors 
	// (class, of compound) at this time.
	, specialElementHandlers = {
		// element with id of "bypass" - jQuery style selector
		'#bypassme': function(element, renderer){
			// true = "handled elsewhere, bypass text extraction"
			return true
		},
		'.hide': function(element, renderer){
      		// true = "handled elsewhere, bypass text extraction"
			return true
		}
	}

	margins = {
      top: 80,
      bottom: 60,
      left: 40,
      width: 522
    };
    // all coords and widths are in jsPDF instance's declared units
    // 'inches' in this case
    pdf.fromHTML(
    	source // HTML string or DOM elem ref.
    	, margins.left // x coord
    	, margins.top // y coord
    	, {
    		'width': margins.width // max width of content on PDF
    		, 'elementHandlers': specialElementHandlers
    	},
    	function (dispose) {
    	  // dispose: object with X, Y of the last line add to the PDF 
    	  //          this allow the insertion of new lines after html
          pdf.save('<%= info.getNUSTUSDApplicantPK().getCustomerNo() %> .pdf');
        },
    	margins
    )
}
	</script>
    
    
</head>
<body>
<div class="to_pdf">

<div style="border-width: 30px 1px; border-color:#3c6583; border-style: solid dotted ;  padding: 3em; font-size:12px; line-height: 1.5em;" id="fromHTMLtestdiv">

<div><img src="resources/assets/images/nust_header.png" alt="" width="550px" height="96px"style="display: block;">

</br>
<p id="date"><em></em></p>
<p><em><%= info.getPermanentAddress()  %> , <%= info.getContactAddress2()  %> , <%= info.getCity()  %></em></p>
<p><em>Dear <%= info.getForenames()  %> <%= info.getSurname()  %></em></strong></p>
<p><span style="text-decoration:underline;"><em>RE : <%= info.getCommitedProgramme()  %> </em></p>
<span style="font-family: Arial, sans-serif;">
</span><span style="font-size:12px"></span>
<p>On behalf of the University, I have pleasure in informing you that you have been accepted for admission to the Bachelor of Science Honours Degree in Radiography Programme, on a part-time basis. The programme whose duration is a minimum of 24 months and a maximum of 36 months, will commence on Monday, 25 June, 2018. The First block period will begin on Monday, 25 June, 2018, and will end on Sunday, 08 July, 2018.</p>

<p>Registration for the programme will take place at the Admissions offices, Main Administration Building, at the Campus, on Monday, 25 June, 2018 between 0830 hours and 1500 hours.</p>

<b><p>Fees: The tuition fees are, USD2170.00 per Semester.</p></b><%= info.getEntryType() %>

<p>To ensure that the place is reserved for you, you must pay a minimum deposit of USD1100.00 (of which USD200.00 is non-refundable) on or before Thursday 31 May, 2018. The balance of $1070.00 should be paid on or before Monday 25 June, 2018. Please note that no student will be allowed to attend lectures before fees have been paid in full.</p>   

<p><b>You can pay fees online using ECOCASH, TELECASH, VISA and V-Payments on www.nust.ac.zw</b></p>

<p>Alternatively, you can pay the fees at the Campus, Bursar's Department, Administration Building OR you can deposit the money at FBC (See account details at the end of the letter).</p>

<p>Please bring your Offer Letter, Original Certificates and particulars (Original National ID and Birth Certificate) for verification, one passport size photograph, with your name and degree programme written clearly at the back for the purpose of Registration. Also, bring a letter from your employer confirming that you will be released from duty to enable you to attend lectures and write examinations.</p>
<p>We would like to advise that this offer is made without prejudice to the rights which the University may have to withdraw or cancel it in the event of you or the University being unable to meet the conditions of the offer.</p>
<p>We request you to notify the Senior Assistant Registrar, Admissions and Student Records, of any change in your address.</p>
<p><b>Congratulations on your admission to the National University of Science and Technology.</b></p>

<img src="resources/assets/images/signature.png" alt="" width="15%" height="12%" style="display: block;" /> 
<p>L. J. HADEBE (MR)</p>
<p>SENIOR ASSISTANT REGISTRAR</p>
</div>
<div>
<button onclick="javascript:demoFromHTML()" class="button">Download Offer Letter</button></p></div></div>
</div>
</body>
</html>
