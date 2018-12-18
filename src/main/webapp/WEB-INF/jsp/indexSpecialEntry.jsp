
<%@page import="nust.systems.workingcrud.entities.NUSTUSDApplicant" %>
<%@page import="nust.systems.workingcrud.entities.NUSTUSDApplicantQualification" %>
<%@page import="java.util.List" %>
<%@page import="java.util.ArrayList" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <!-- Tell the browser to be responsive to screen width -->
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">
    <!-- Favicon icon -->
    <link rel="icon" type="image/png" sizes="16x16" href="resources/assets/images/favicon.png">
    <title>NUST MANAGEMENT SYSTEM :: Special Undergraduate Application Form</title>
    <!-- Bootstrap Core CSS -->
     <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
       <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
        <link href="resources/assets/plugins/bootstrap/css/bootstrap.min.css" rel="stylesheet">
    <link href="resources/assets/plugins/bootstrap/css/bootstrap.min.css" rel="stylesheet">
    <!-- Custom CSS -->
   
    <link href="resources/css/style.css" rel="stylesheet">
   
    <!--nestable CSS -->
    <link href="resources/assets/plugins/nestable/nestable.css" rel="stylesheet" type="text/css" />
    <!-- Custom CSS -->
    
    
    <!-- You can change the theme colors from here -->
    <link href="resources/css/colors/blue.css" id="theme" rel="stylesheet">
    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
    <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
<![endif]-->
    
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <script src="http://code.jquery.com/jquery-latest.min.js" type="text/javascript"></script>
   <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<link  rel="stylesheet" type="text/css" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/css/bootstrap.min.css">
    
<style>
.navbar1 {
  overflow: hidden;
  background-color: #ffffff;
  font-family: Arial, Helvetica, sans-serif;
}

.navbar1 a {
  float: left;
  font-size: 12px;
  color: black;
  text-align: center;
  padding: 1px 1px;
  text-decoration: none;
}

.dropdown1 {
  float: left;
  overflow: hidden;
}

.dropdown1 .dropbtn1 {
  font-size: 12px;  
  border: none;
  outline: none;
  color: white;
  padding: 1px 1px;
  background-color: inherit;
  font-family: inherit;
  margin: 0;
}

.navbar1 a:hover, .dropdown1:hover .dropbtn1 {
  background-color: #5bc0de;
}

.dropdown-content {
  display: none;
  position: absolute;
  background-color: #f9f9f9;
  min-width: 160px;
  box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);
  z-index: 1;
}

.dropdown-content a {
  float: left;
  color: black;
  padding: 1px 1px;
  text-decoration: none;
  display: block;
  text-align: left;
}

.dropdown-content a:hover {
  background-color: #ddd;
}

.dropdown1:hover .dropdown-content {
  display: block;
}
</style>

<!-- Start of collapsible head-->
    <style>
.accordion {
    background-color: #4c5077;
    color: #fff;
    font-size: 20px;
    cursor: pointer;
    padding: 18px;
    width: 100%;
    border: none;
    text-align: left;
    outline: none;
    transition: 0.4s;
}

.active1 {
    background-color: #81a2d6;
}
.accordion:hover {
    background-color: #81a2d6;; 
}

.panel {
    padding: 0 18px;
    display: none;
    background-color: white;
    overflow: hidden;
}
</style>

<SCRIPT language="javascript">
		function addRow(tableID) {


			var table = document.getElementById(tableID);

			var rowCount = table.rows.length;
			var row = table.insertRow(rowCount);

			var colCount = table.rows[0].cells.length;

			for(var i=0; i<colCount; i++) {

				var newcell	= row.insertCell(i);

				newcell.innerHTML = table.rows[0].cells[i].innerHTML;
				//alert(newcell.childNodes);
				switch(newcell.childNodes[0].type) {
					case "text":
							newcell.childNodes[0].value = "";
							break;
					case "checkbox":
							newcell.childNodes[0].checked = false;
							break;
					case "select-one":
							newcell.childNodes[0].selectedIndex = 0;
							break;
				}
			}
		}

		function deleteRow(tableID) {
			try {
			var table = document.getElementById(tableID);
			var rowCount = table.rows.length;

			for(var i=0; i<rowCount; i++) {
				var row = table.rows[i];
				var chkbox = row.cells[0].childNodes[0];
				if(null != chkbox && true == chkbox.checked) {
					if(rowCount <= 1) {
						alert("Cannot delete all the rows.");
						break;
					}
					table.deleteRow(i);
					rowCount--;
					i--;
				}


			}
			}catch(e) {
				alert(e);
			}
		}

	</SCRIPT>
    <!-- End of collapsible head-->
</head>

<body class="fix-header card-no-border">
    <% System.out.println("now in view applicant webpage"); %>
    <!-- ============================================================== -->
    <!-- Preloader - style you can find in spinners.css -->
    <!-- ============================================================== -->
    <div class="preloader">
        <svg class="circular" viewBox="25 25 50 50">
            <circle class="path" cx="50" cy="50" r="20" fill="none" stroke-width="2" stroke-miterlimit="10" /> </svg>
    </div>
    <!-- ============================================================== -->
    <!-- Main wrapper - style you can find in pages.scss -->
    <!-- ============================================================== -->
    <div id="main-wrapper">
        <!-- ============================================================== -->
        <!-- Topbar header - style you can find in pages.scss -->
        <!-- ============================================================== -->
         <header class="topbar">
                <nav class="navbar top-navbar navbar-expand-md navbar-light">
                    <!-- ============================================================== -->
                    <!-- Logo -->
                    <!-- ============================================================== -->
                    <div class="navbar-header">
                        <div class="navbar-brand" >
                            <!-- Logo icon --><b>
                                <!--You can put here icon as well // <i class="wi wi-sunset"></i> //-->
                                <!-- Dark Logo icon -->
                                <img src="resources/assets/images/logo-icon.png" alt="homepage" class="dark-logo" />
                                <!-- Light Logo icon -->
                                <img src="resources/assets/images/logo-light-icon.png" alt="homepage" class="light-logo" />
                            </b>
                            <!--End Logo icon -->
                            <!-- Logo text --><span>

Nust Management System
                            </span>
<!-- dark Logo text -->
<!--                                <img src="resources/assets/images/logo-text.png" alt="homepage" class="dark-logo" />
                                 Light Logo text     
                                <img src="resources/assets/images/logo-light-text.png" class="light-logo" alt="homepage" /></span> </a>-->
                    </div>
                    <!-- ============================================================== -->
                    <!-- End Logo -->
                    <!-- ============================================================== -->
                    <div class="navbar-collapse">
                        <!-- ============================================================== -->
                        <!-- toggle and nav items -->
                        <!-- ============================================================== -->
                        <ul class="navbar-nav mr-auto mt-md-0 ">

                            </li>
                        </ul>
                    </div>
                </nav>
            </header>
            <div>
                <aside class="left-sidebar">
                    <!-- Sidebar scroll-->
                    <div class="scroll-sidebar" style="float:left; border:none; height:80px;">
                        <!-- Sidebar navigation-->
                        <div style="border:no-border;">
                            <!-- Nav tabs -->
                            <ul class="nav nav-tabs" role="tablist">
                                <li class="nav-item"> <a class="nav-link active" data-toggle="tab" href="#home" role="tab"><span class="hidden-sm-up"><i class="ti-home"></i></span> <span class="hidden-xs-down">Home</span></a> </li>
                                <li class="nav-item"> <a class="nav-link" data-toggle="tab" href="#profile" role="tab"><span class="hidden-sm-up"><i class="ti-user"></i></span> <span class="hidden-xs-down">Actions</span></a> </li>
                                <li class="nav-item"> <a class="nav-link" data-toggle="tab" href="#messages" role="tab"><span class="hidden-sm-up"><i class="ti-email"></i></span> <span class="hidden-xs-down">Navigate</span></a> </li>
                            </ul>
                            <!-- Tab panes -->
                            <div class="tab-content tabcontent-border" >
                                <div class="tab-pane active" id="home" role="tabpanel" style="border:no-border;">
                                    <div class="p-20" style="border:no-border;">
                                       
                                        <div class="navbar">
<%
String appId=(String)request.getAttribute("appNo");
//.setAttribute(appId, "appld");
%>

                                            <a href="${pageContext.request.contextPath}/findSpecial1"><img src="resources/assets/images/c41.png">New</a>
                                            <a href="#"><img src="resources/assets/images/c11.png">Edit</a>
                                            <a href="#"><img src="resources/assets/images/c11.png">View</a> 
                                            <a href="#"><img src="resources/assets/images/c41.png">Delete</a>
                                            <a href="#"><img src="resources/assets/images/c51.png">Offer Leter</a>
                                            <a href="#"><img src="resources/assets/images/c91.png">Convert to Stud</a>
                                            <a href="#"><img src="resources/assets/images/c21.png">App. Dep</a>
                                            <a href="#"><img src="resources/assets/images/c21.png">App. Dep. List</a>
                                            <a href="#"><img src="resources/assets/images/c71.png">Show List</a>
                                            <a href="#"><img src="resources/assets/images/b11.png">Show Chart</a>
                                            <a href="#"><img src="resources/assets/images/c61.png">Refresh</a>
                                            <a href="#"><img src="resources/assets/images/a11.png">Clear Filter</a>
                                            <a href="#"><img src="resources/assets/images/d2.png">Find</a>
                                            <link rel="icon" type="image/png" sizes="16x16" href="../assets/images/favicon.png">
                                        </div>





                                    </div>
                                </div>

                            </div>


                        </div>
                        <!-- End Sidebar navigation -->
                    </div>
                    <!-- End Sidebar scroll-->

                </aside>
            </div>
        <!-- ============================================================== -->
        <!-- End Topbar header -->
        <!-- ============================================================== -->
        <!-- ============================================================== -->
        <!-- Left Sidebar - style you can find in sidebar.scss  -->
        <!-- ============================================================== -->
<!--        <aside class="left-sidebar">
             Sidebar scroll
            <div class="scroll-sidebar">
                 Sidebar navigation
                <nav class="sidebar-nav">
                    <ul id="sidebarnav">
                        <li class="nav-small-cap">PERSONAL</li>
                        <li>
                            <a class="has-arrow" href="#" aria-expanded="false"><i class="mdi mdi-gauge"></i><span class="hide-menu">Dashboard </span></a>
                            <ul aria-expanded="false" class="collapse">
                                <li><a href="index.html">Modern Dashboard</a></li>
                                <li><a href="index2.html">Awesome Dashboard</a></li>
                                <li><a href="index3.html">Classy Dashboard</a></li>
                                <li><a href="index4.html">Analytical Dashboard</a></li>
                                <li><a href="index5.html">Minimal Dashboard</a></li>
                            </ul>
                        </li>
                        <li>
                            <a class="has-arrow " href="#" aria-expanded="false"><i class="mdi mdi-bullseye"></i><span class="hide-menu">Apps</span></a>
                            <ul aria-expanded="false" class="collapse">
                                <li><a href="app-calendar.html">Calendar</a></li>
                                <li>
                                    <a class="has-arrow" href="#" aria-expanded="false">Inbox</a>
                                    <ul aria-expanded="false" class="collapse">
                                        <li><a href="app-email.html">Mailbox</a></li>
                                        <li><a href="app-email-detail.html">Mailbox Detail</a></li>
                                        <li><a href="app-compose.html">Compose Mail</a></li>
                                    </ul>
                                </li>
                                <li><a href="app-chat.html">Chat app</a></li>
                                <li><a href="app-ticket.html">Support Ticket</a></li>
                                <li><a href="app-contact.html">Contact / Employee</a></li>
                                <li><a href="app-contact2.html">Contact Grid</a></li>
                                <li><a href="app-contact-detail.html">Contact Detail</a></li>
                                
                            </ul>
                        </li>
                        <li class="three-column">
                            <a class="has-arrow" href="#" aria-expanded="false"><i class="mdi mdi-chart-bubble"></i><span class="hide-menu">Ui Elements</span></a>
                            <ul aria-expanded="false" class="collapse">
                                <li><a href="ui-tooltip-stylish.html">Tooltip stylish</a></li>
                                <li><a href="ui-sweetalert.html">Sweet Alert</a></li>
                                <li><a href="ui-cards.html">Cards</a></li>
                                <li><a href="ui-user-card.html">User Cards</a></li>
                                <li><a href="ui-buttons.html">Buttons</a></li>
                                <li><a href="ui-modals.html">Modals</a></li>
                                <li><a href="ui-tab.html">Tab</a></li>
                                <li><a href="ui-tooltip-popover.html">Tooltip &amp; Popover</a></li>
                                <li><a href="ui-notification.html">Notification</a></li>
                                <li><a href="ui-progressbar.html">Progressbar</a></li>
                                <li><a href="ui-typography.html">Typography</a></li>
                                <li><a href="ui-bootstrap.html">Bootstrap Ui</a></li>
                                <li><a href="ui-breadcrumb.html">Breadcrumb</a></li>
                                <li><a href="ui-bootstrap-switch.html">Bootstrap Switch</a></li>
                                <li><a href="ui-list-media.html">List Media</a></li>
                                <li><a href="ui-ribbons.html">Ribbons</a></li>
                                <li><a href="ui-grid.html">Grid</a></li>
                                <li><a href="ui-carousel.html">Carousel</a></li>
                                <li><a href="ui-nestable.html">Nestable</a></li>
                                <li><a href="ui-range-slider.html">Range slider</a></li>
                                <li><a href="ui-timeline.html">Timeline</a></li>
                                <li><a href="ui-horizontal-timeline.html">Horizontal Timeline</a></li>
                                <li><a href="ui-session-timeout.html">Session Timeout</a></li>
                                <li><a href="ui-session-ideal-timeout.html">Session Ideal Timeout</a></li>
                                
                                <li><a href="ui-date-paginator.html">Date-paginator</a></li>
                                <li><a href="ui-dragable-portlet.html">Dragable Portlet</a></li>
                            </ul>
                        </li>
                        <li class="nav-devider"></li>
                        <li class="nav-small-cap">FORMS, TABLE &amp; WIDGETS</li>
                        <li class="two-column">
                            <a class="has-arrow" href="#" aria-expanded="false"><i class="mdi mdi-file"></i><span class="hide-menu">Forms</span></a>
                            <ul aria-expanded="false" class="collapse">
                                <li><a href="form-basic.html">Basic Forms</a></li>
                                <li><a href="form-layout.html">Form Layouts</a></li>
                                <li><a href="form-addons.html">Form Addons</a></li>
                                <li><a href="form-material.html">Form Material</a></li>
                                <li><a href="form-float-input.html">Floating Lable</a></li>
                                <li><a href="form-pickers.html">Form Pickers</a></li>
                                <li><a href="form-upload.html">File Upload</a></li>
                                <li><a href="form-mask.html">Form Mask</a></li>
                                <li><a href="form-validation.html">Form Validation</a></li>
                                <li><a href="form-dropzone.html">File Dropzone</a></li>
                                <li><a href="form-icheck.html">Icheck control</a></li>
                                <li><a href="form-img-cropper.html">Image Cropper</a></li>
                                <li><a href="form-bootstrapwysihtml5.html">HTML5 Editor</a></li>
                                <li><a href="form-typehead.html">Form Typehead</a></li>
                                <li><a href="form-wizard.html">Form Wizard</a></li>
                                <li><a href="form-xeditable.html">Xeditable Editor</a></li>
                                <li><a href="form-summernote.html">Summernote Editor</a></li>
                                <li><a href="form-tinymce.html">Tinymce Editor</a></li>
                            </ul>
                        </li>
                        <li>
                            <a class="has-arrow " href="#" aria-expanded="false"><i class="mdi mdi-table"></i><span class="hide-menu">Tables</span></a>
                            <ul aria-expanded="false" class="collapse">
                                <li><a href="table-basic.html">Basic Tables</a></li>
                                <li><a href="table-layout.html">Table Layouts</a></li>
                                <li><a href="table-data-table.html">Data Tables</a></li>
                                <li><a href="table-footable.html">Footable</a></li>
                                <li><a href="table-jsgrid.html">Js Grid Table</a></li>
                                <li><a href="table-responsive.html">Responsive Table</a></li>
                                <li><a href="table-bootstrap.html">Bootstrap Tables</a></li>
                                <li><a href="table-editable-table.html">Editable Table</a></li>
                            </ul>
                        </li>
                        <li class="nav-devider"></li>
                        <li class="nav-small-cap">EXTRA COMPONENTS</li>
                        <li class="two-column">
                            <a class="has-arrow " href="#" aria-expanded="false"><i class="mdi mdi-book-open-variant"></i><span class="hide-menu">Pages</span></a>
                            <ul aria-expanded="false" class="collapse">
                                <li><a href="starter-kit.html">Starter Kit</a></li>
                                
                                <li><a href="pages-profile.html">Profile page</a></li>
                                <li><a href="pages-animation.html">Animation</a></li>
                                <li><a href="pages-fix-innersidebar.html">Sticky Left sidebar</a></li>
                                <li><a href="pages-fix-inner-right-sidebar.html">Sticky Right sidebar</a></li>
                                <li><a href="pages-invoice.html">Invoice</a></li>
                                <li><a href="pages-treeview.html">Treeview</a></li>
                                <li><a href="pages-utility-classes.html">Helper Classes</a></li>
                                <li><a href="pages-search-result.html">Search result</a></li>
                                <li><a href="pages-scroll.html">Scrollbar</a></li>
                                <li><a href="pages-pricing.html">Pricing</a></li>
                                <li><a href="pages-lightbox-popup.html">Lighbox popup</a></li>
                                <li><a href="pages-gallery.html">Gallery</a></li>
                                <li><a href="pages-faq.html">Faqs</a></li>
                                <li><a href="#" class="has-arrow">Error Pages</a>
                                    <ul aria-expanded="false" class="collapse">
                                        <li><a href="pages-error-400.html">400</a></li>
                                        <li><a href="pages-error-403.html">403</a></li>
                                        <li><a href="pages-error-404.html">404</a></li>
                                        <li><a href="pages-error-500.html">500</a></li>
                                        <li><a href="pages-error-503.html">503</a></li>
                                    </ul>
                                </li>
                                <li><a href="#" class="has-arrow">Authentication <span class="label label-rounded label-success">6</span></a>
                                    <ul aria-expanded="false" class="collapse">
                                        <li><a href="pages-login.html">Login 1</a></li>
                                        <li><a href="pages-login-2.html">Login 2</a></li>
                                        <li><a href="pages-register.html">Register</a></li>
                                        <li><a href="pages-register2.html">Register 2</a></li>
                                        <li><a href="pages-lockscreen.html">Lockscreen</a></li>
                                        <li><a href="pages-recover-password.html">Recover password</a></li>
                                    </ul>
                                </li>
                            </ul>
                        </li>
                        <li>
                            <a class="has-arrow " href="#" aria-expanded="false"><i class="mdi mdi-widgets"></i><span class="hide-menu">Extra</span></a>
                            <ul aria-expanded="false" class="collapse">
                                <li>
                                    <a class="has-arrow " href="#" aria-expanded="false">Widgets</a>
                                    <ul aria-expanded="false" class="collapse">
                                        <li><a href="widget-apps.html">Widget Apps</a></li>
                                <li><a href="widget-data.html">Widget Data</a></li>
                                <li><a href="widget-charts.html">Widget Charts</a></li>
                                    </ul>
                                </li>
                                <li>
                                    <a class="has-arrow " href="#" aria-expanded="false">Maps</a>
                                    <ul aria-expanded="false" class="collapse">
                                        <li><a href="map-google.html">Google Maps</a></li>
                                        <li><a href="map-vector.html">Vector Maps</a></li>
                                    </ul>
                                </li>
                                <li>
                                    <a class="has-arrow " href="#" aria-expanded="false">Icons</a>
                                    <ul aria-expanded="false" class="collapse">
                                        <li><a href="icon-material.html">Material Icons</a></li>
                                        <li><a href="icon-fontawesome.html">Fontawesome Icons</a></li>
                                        <li><a href="icon-themify.html">Themify Icons</a></li>
                                        <li><a href="icon-linea.html">Linea Icons</a></li>
                                        <li><a href="icon-weather.html">Weather Icons</a></li>
                                        <li><a href="icon-simple-lineicon.html">Simple Lineicons</a></li>
                                        <li><a href="icon-flag.html">Flag Icons</a></li>
                                    </ul>
                                </li>
                                <li>
                                    <a class="has-arrow " href="#" aria-expanded="false">Charts</a>
                                    <ul aria-expanded="false" class="collapse">
                                        <li><a href="chart-morris.html">Morris Chart</a></li>
                                        <li><a href="chart-chartist.html">Chartis Chart</a></li>
                                        <li><a href="chart-echart.html">Echarts</a></li>
                                        <li><a href="chart-flot.html">Flot Chart</a></li>
                                        <li><a href="chart-knob.html">Knob Chart</a></li>
                                        <li><a href="chart-chart-js.html">Chartjs</a></li>
                                        <li><a href="chart-sparkline.html">Sparkline Chart</a></li>
                                        <li><a href="chart-extra-chart.html">Extra chart</a></li>
                                        <li><a href="chart-peity.html">Peity Charts</a></li>
                                    </ul>
                                </li>
                                
                                
                            </ul>
                        </li>
                        <li>
                            <a class="has-arrow " href="#" aria-expanded="false"><i class="mdi mdi-arrange-send-backward"></i><span class="hide-menu">Multi level dd</span></a>
                            <ul aria-expanded="false" class="collapse">
                                <li><a href="#">item 1.1</a></li>
                                <li><a href="#">item 1.2</a></li>
                                <li>
                                    <a class="has-arrow" href="#" aria-expanded="false">Menu 1.3</a>
                                    <ul aria-expanded="false" class="collapse">
                                        <li><a href="#">item 1.3.1</a></li>
                                        <li><a href="#">item 1.3.2</a></li>
                                        <li><a href="#">item 1.3.3</a></li>
                                        <li><a href="#">item 1.3.4</a></li>
                                    </ul>
                                </li>
                                <li><a href="#">item 1.4</a></li>
                            </ul>
                        </li>
                    </ul>
                </nav>
                 End Sidebar navigation 
            </div>
             End Sidebar scroll
        </aside>-->
        <!-- ============================================================== -->
        <!-- End Left Sidebar - style you can find in sidebar.scss  -->
        <!-- ============================================================== -->
        <!-- ============================================================== -->
        <!-- Page wrapper  -->
        <!-- ============================================================== -->
     <br><br><br><br><br><br>
 <!-- <button class="accordion ">Employment</button>
                 <div class="col-lg-12" style="display: none">   
              
                                            <div class="card col-lg-12" style="float: left">
                            <div class="card-body">
                                <div class="table-responsive ">
                                    <table class="table table-striped" style="border: 1px solid #dee2e6">
  <tbody>
     
      
      
  </tbody>
               
                  
                                        
 <button class="accordion ">Applicant Choice</button>
                 <div class="col-lg-12" style="display: none">   
              
                                             <div class="card col-lg-12" style="float: left">
                            <div class="card-body">
                                <div class="table-responsive ">
                                    <table class="table table-striped" style="border: 1px solid #dee2e6">
                                        
    <tbody>
        
        
        
        
        
        
                
                          
               <div class="card col-lg-12" style="float: left">
                            <div class="card-body">
                                <div class="table-responsive ">
                                    <table class="table table-striped" style="border: 1px solid #dee2e6">
                                        
    <tbody>
                                            <tr>
                                                <td>TotalFees:</td>
                                                <td> </td>
                                            </tr>
                                        

                                        </tbody>

                                   
                                     
                                    </table>
                                </div>
                            </div>
                        </div>
                   
                                  

                </div>-->
                    
                    
                    
                   
       <!--           
                          
                  <div class="card col-lg-12" style="float: left">
                            <div class="card-body">
                                <div class="table-responsive ">
                                    <table class="table table-striped" style="border: 1px solid #dee2e6">
                                        
    <tbody>
                                            <tr>
                                                <td>Contact Address 2 :</td>
                                            </tr>
                                            <tr>
                                                <td>Phone (Home) :</td>
                                            </tr>
                                            <tr>
                                                <td>Phone(Other):</td>
                                            </tr>
                                            <tr>
                                                <td>Email :</td>
                                            </tr>
                                            <tr>
                                                <td>Cell  :</td>
                                            </tr>
                                         
                                            

                                        </tbody>
       -->

                                   
                                     
                                    </table>
                                </div>
                            </div>
                        </div>
                   

                </div>    
                    



                                <button class="accordion ">Applicant Details ::..<c:out value="${appNo}"/></button>
                 <div class="col-lg-12">   
              
                        <div class="card col-lg-12" style="float: left">
                            <div class="card-body">
                                <div class="table-responsive ">
                                    <table class="table table-striped" style="border: 1px solid #dee2e6">
                                        
    <tbody>
                                                      <form name="search_input"  action="${pageContext.request.contextPath}/addSpecDetails">
                                    <div class="dropdown pull-right m-r-10 hidden-sm-down">
                                    </div>
                                    <table>
               <div class="row">
                                                                                       
                                                                                            
                                                                                        <div class="col-md-6"><div class="form-group">
											<label for="contact-name">Name(s) *</label>
                                                                                      
                                                                                       <input  type="text" class="form-control" id="contact-name" name="Name" placeholder="Name" required data-parsley-errors-container="#error-step2" autocomplete="on"/>
                                                                                       <input type="hidden"  name ="applicantNumber" value="<%=request.getAttribute("appNo")%>"></input>
                                                                                       <p id="error-step2"></p>
                                                                                    
                                                                                            </div></div>
                                                                                        
                                                                                        <div class="col-md-6"><div class="form-group">
											<label for="contact-middle" >Title</label>
											<select class="form-control" name="title" required data-parsley-errors-container="#error-step5" >
                                                                                            <option value="" disabled selected>Click to Select Title</option>
                                                                                            
													<option value="1" ${title == '1' ? 'selected' : ''}>Mr</option>
													<option value="2" ${title == '2' ? 'selected' : ''}>Mrs</option>
                                                                                                        <option value="3" ${title == '3' ? 'selected' : ''}>Miss</option>
                                                                                                        <option value="4" ${title == '4' ? 'selected' : ''}>Ms</option>
                                                                                                        <option value="5" ${title == '5' ? 'selected' : ''}>Rev</option>
                                                                                                        <option value="6" ${title == '6' ? 'selected' : ''}>Sr</option>
                                                                                                        <option value="7" ${title == '7' ? 'selected' : ''}>Dr</option>
                                                                                                        <option value="8" ${title == '8' ? 'selected' : ''}>Prof</option>
                                                                                                        
												</select>
										
                                                                                            </div></div>
                                                                                        
                                                                                        <div class="col-md-6"><div class="form-group">
											<label for="contact-lastname" >Surname *</label>
											<input  type="text" class="form-control" id="contact-name" placeholder="Surname" name="Surname" required data-parsley-errors-container="#error-step3" autocomplete="on""/>
										<p id="error-step3"></p>
                                                                                            </div></div>
                                                                                        
                                                                                        <div class="col-md-6"><div class="form-group">
											<label for="contact-idnumber1">ID Number *</label>
											<input  type="text" class="form-control" id="contact-name" name="IdNumber" placeholder="National ID Number" required data-parsley-errors-container="#error-step4" autocomplete="on" />
										<p id="error-step4"></p>
                                                                                            </div></div>
                                                                                       
                                                                                        
                                                                                        <div class="col-md-6"><div class="form-group">
											<label for="contact-sex" >Sex *</label>
											<select class="form-control" name="Sex" required data-parsley-errors-container="#error-step5" >
                                                                                            <option value="" disabled selected>Click To Select Your Gender</option>
													<option value="2" ${gender == '2' ? 'selected' : ''}>Female</option>
													<option value="1" ${gender == '1' ? 'selected' : ''}>Male</option>
												
													
												</select>
                                                                                        
										<p id="error-step5"></p>
                                                                                            </div></div>
                                                                                        <div class="col-md-6"><div class="form-group">
											<label for="contact-maritalstatus" >Marital Status *</label>
											<select class="form-control" name="MaritalStatus" required data-parsley-errors-container="#error-step6">
                                                                                            <option value="" disabled selected>Click To Select Your Marital Status</option>
													<option value="0" ${maritalstatus == '0' ? 'selected' : ''}>Divorced</option>
													<option value="1" ${maritalstatus == '1' ? 'selected' : ''}>Married</option>
                                                                                                        <option value="2" ${maritalstatus == '2' ? 'selected' : ''}>Single</option>
													<option value="3" ${maritalstatus == '3' ? 'selected' : ''}>Widowed</option>
                                                                                                        
													
												</select>
										<p id="error-step6"></p>
                                                                                            </div></div>
                                                                                         <div class="col-md-6"><div class="form-group">
											<label for="contact-dateofbirth">Date of Birth *</label>
                                                                                        
											<input name="Dob" type="date" min="1927-12-31" max="2015-01-01 class="form-control" id="contact-name" placeholder="Date Of Birth" required data-parsley-errors-container="#error-step7"/>
                                                                                        
										<p id="error-step7"></p>
                                                                                            </div></div>
                                                                                        
                                                                                        <div class="col-md-6"><div class="form-group">
											<label for="contact-placeofbirth" >Place Of Birth *</label>
											<input name="Pob" type="text" class="form-control" id="contact-name" placeholder="Place Of Birth" required="required" required data-parsley-errors-container="#error-step8"/>
                                                                                        
                                                                                        
                                                                                        
										<p id="error-step8"></p>
                                                                                            </div></div>
                                                                                        <div class="col-md-6"><div class="form-group">
											<label for="contact-nationality" >Nationality *</label>
											
                                                                                        <select class="form-control" name="Nationality"  required="required" required data-parsley-errors-container="#error-step9">
<option value="" disabled selected>Click To Select Nationality</option>
	
	<option value="AF" ${nationality == 'AF' ? 'selected' : ''}>Afghanistan</option>
	<option value="AX" ${nationality == 'AX' ? 'selected' : ''}>Åland Islands</option>
	<option value="AL" ${nationality == 'AL' ? 'selected' : ''}>Albania</option>
	<option value="DZ" ${nationality == 'DZ' ? 'selected' : ''}>Algeria</option>
	<option value="AS" ${nationality == 'AS' ? 'selected' : ''}>American Samoa</option>
	<option value="AD" ${nationality == 'AD' ? 'selected' : ''}>Andorra</option>
	<option value="AO" ${nationality == 'A0' ? 'selected' : ''}>Angola</option>
	<option value="AI" ${nationality == 'AI' ? 'selected' : ''}>Anguilla</option>
	<option value="AQ" ${nationality == 'AQ' ? 'selected' : ''}>Antarctica</option>
	<option value="AG" ${nationality == 'AG' ? 'selected' : ''}>Antigua and Barbuda</option>
	<option value="AR" ${nationality == 'AR' ? 'selected' : ''}>Argentina</option>
	<option value="AM" ${nationality == 'AM' ? 'selected' : ''}>Armenia</option>
	<option value="AW" ${nationality == 'AW' ? 'selected' : ''}>Aruba</option>
	<option value="AU" ${nationality == 'AU' ? 'selected' : ''}>Australia</option>
	<option value="AT" ${nationality == 'AT' ? 'selected' : ''}>Austria</option>
	<option value="AZ" ${nationality == 'AZ' ? 'selected' : ''}>Azerbaijan</option>
	<option value="BS" ${nationality == 'BS' ? 'selected' : ''}>Bahamas</option>
	<option value="BH" ${nationality == 'BH' ? 'selected' : ''}>Bahrain</option>
	<option value="BD" ${nationality == 'BD' ? 'selected' : ''}>Bangladesh</option>
	<option value="BB" ${nationality == 'BB' ? 'selected' : ''}>Barbados</option>
	<option value="BY" ${nationality == 'BY' ? 'selected' : ''}>Belarus</option>
	<option value="BE" ${nationality == 'BE' ? 'selected' : ''}>Belgium</option>
	<option value="BZ" ${nationality == 'BZ' ? 'selected' : ''}>Belize</option>
	<option value="BJ" ${nationality == 'BJ' ? 'selected' : ''}>Benin</option>
	<option value="BM" ${nationality == 'BM' ? 'selected' : ''}>Bermuda</option>
	<option value="BT" ${nationality == 'BT' ? 'selected' : ''}>Bhutan</option>
	<option value="BO" ${nationality == 'BO' ? 'selected' : ''}>Bolivia, Plurinational State of</option>
	<option value="BQ" ${nationality == 'BQ' ? 'selected' : ''}>Bonaire, Sint Eustatius and Saba</option>
	<option value="BA" ${nationality == 'BA' ? 'selected' : ''}>Bosnia and Herzegovina</option>
	<option value="BW" ${nationality == 'BW' ? 'selected' : ''}>Botswana</option>
	<option value="BV" ${nationality == 'BV' ? 'selected' : ''}>Bouvet Island</option>
	<option value="BR" ${nationality == 'BR' ? 'selected' : ''}>Brazil</option>
	<option value="IO" ${nationality == 'IO' ? 'selected' : ''}>British Indian Ocean Territory</option>
	<option value="BN" ${nationality == 'BN' ? 'selected' : ''}>Brunei Darussalam</option>
	<option value="BG" ${nationality == 'BG' ? 'selected' : ''}>Bulgaria</option>
	<option value="BF" ${nationality == 'BF' ? 'selected' : ''}>Burkina Faso</option>
	<option value="BI" ${nationality == 'BI' ? 'selected' : ''}>Burundi</option>
	<option value="KH" ${nationality == 'KH' ? 'selected' : ''}>Cambodia</option>
	<option value="CM" ${nationality == 'CM' ? 'selected' : ''}>Cameroon</option>
	<option value="CA" ${nationality == 'CA' ? 'selected' : ''}>Canada</option>
	<option value="CV" ${nationality == 'CV' ? 'selected' : ''}>Cape Verde</option>
	<option value="KY" ${nationality == 'KY' ? 'selected' : ''}>Cayman Islands</option>
	<option value="CF" ${nationality == 'CF' ? 'selected' : ''}>Central African Republic</option>
	<option value="TD" ${nationality == 'TD' ? 'selected' : ''}>Chad</option>
	<option value="CL" ${nationality == 'CL' ? 'selected' : ''}>Chile</option>
	<option value="CN" ${nationality == 'CN' ? 'selected' : ''}>China</option>
	<option value="CX" ${nationality == 'CX' ? 'selected' : ''}>Christmas Island</option>
	<option value="CC" ${nationality == 'CC' ? 'selected' : ''}>Cocos (Keeling) Islands</option>
	<option value="CO" ${nationality == 'CO' ? 'selected' : ''}>Colombia</option>
	<option value="KM" ${nationality == 'KM' ? 'selected' : ''}>Comoros</option>
	<option value="CG" ${nationality == 'CG' ? 'selected' : ''}>Congo</option>
	<option value="CD" ${nationality == 'CD' ? 'selected' : ''}>Congo, the Democratic Republic of the</option>
	<option value="CK" ${nationality == 'CK' ? 'selected' : ''} >Cook Islands</option>
	<option value="CR" ${nationality == 'CR' ? 'selected' : ''}>Costa Rica</option>
	<option value="CI" ${nationality == 'CI' ? 'selected' : ''}>Côte d'Ivoire</option>
	<option value="HR" ${nationality == 'HR' ? 'selected' : ''}>Croatia</option>
	<option value="CU" ${nationality == 'CU' ? 'selected' : ''}>Cuba</option>
	<option value="CW" ${nationality == 'CW' ? 'selected' : ''}>Curaçao</option>
	<option value="CY" ${nationality == 'CY' ? 'selected' : ''}>Cyprus</option>
	<option value="CZ" ${nationality == 'CZ' ? 'selected' : ''}>Czech Republic</option>
	<option value="DK" ${nationality == 'DK' ? 'selected' : ''}>Denmark</option>
	<option value="DJ" ${nationality == 'DJ' ? 'selected' : ''}>Djibouti</option>
	<option value="DM" ${nationality == 'DM' ? 'selected' : ''}>Dominica</option>
	<option value="DO" ${nationality == 'DO' ? 'selected' : ''}>Dominican Republic</option>
	<option value="EC" ${nationality == 'EC' ? 'selected' : ''}>Ecuador</option>
	<option value="EG" ${nationality == 'EG' ? 'selected' : ''}>Egypt</option>
	<option value="SV" ${nationality == 'SV' ? 'selected' : ''}>El Salvador</option>
	<option value="GQ" ${nationality == 'GQ' ? 'selected' : ''}>Equatorial Guinea</option>
	<option value="ER" ${nationality == 'ER' ? 'selected' : ''}>Eritrea</option>
	<option value="EE" ${nationality == 'EE' ? 'selected' : ''}>Estonia</option>
	<option value="ET" ${nationality == 'ET' ? 'selected' : ''}>Ethiopia</option>
	<option value="FK" ${nationality == 'FK' ? 'selected' : ''}>Falkland Islands (Malvinas)</option>
	<option value="FO" ${nationality == 'FO' ? 'selected' : ''}>Faroe Islands</option>
	<option value="FJ" ${nationality == 'FJ' ? 'selected' : ''}>Fiji</option>
	<option value="FI" ${nationality == 'FI' ? 'selected' : ''}>Finland</option>
	<option value="FR" ${nationality == 'FR' ? 'selected' : ''}>France</option>
	<option value="GF" ${nationality == 'GF' ? 'selected' : ''}>French Guiana</option>
	<option value="PF" ${nationality == 'PF' ? 'selected' : ''}>French Polynesia</option>
	<option value="TF" ${nationality == 'TF' ? 'selected' : ''}>French Southern Territories</option>
	<option value="GA" ${nationality == 'GA' ? 'selected' : ''}>Gabon</option>
	<option value="GM" ${nationality == 'GM' ? 'selected' : ''}>Gambia</option>
	<option value="GE" ${nationality == 'GE' ? 'selected' : ''}>Georgia</option>
	<option value="DE" ${nationality == 'DE' ? 'selected' : ''}>Germany</option>
	<option value="GH" ${nationality == 'GH' ? 'selected' : ''}>Ghana</option>
	<option value="GI" ${nationality == 'GI' ? 'selected' : ''}>Gibraltar</option>
	<option value="GR" ${nationality == 'GR' ? 'selected' : ''}>Greece</option>
	<option value="GL" ${nationality == 'GL' ? 'selected' : ''}>Greenland</option>
	<option value="GD" ${nationality == 'GD' ? 'selected' : ''}>Grenada</option>
	<option value="GP" ${nationality == 'GP' ? 'selected' : ''}>Guadeloupe</option>
	<option value="GU" ${nationality == 'GU' ? 'selected' : ''}>Guam</option>
	<option value="GT" ${nationality == 'GT' ? 'selected' : ''}>Guatemala</option>
	<option value="GG" ${nationality == 'GG' ? 'selected' : ''}>Guernsey</option>
	<option value="GN" ${nationality == 'GN' ? 'selected' : ''}>Guinea</option>
	<option value="GW" ${nationality == 'GW' ? 'selected' : ''}>Guinea-Bissau</option>
	<option value="GY" ${nationality == 'GY' ? 'selected' : ''}>Guyana</option>
	<option value="HT" ${nationality == 'HT' ? 'selected' : ''}>Haiti</option>
	<option value="HM" ${nationality == 'HM' ? 'selected' : ''}>Heard Island and McDonald Islands</option>
	<option value="VA" ${nationality == 'VA' ? 'selected' : ''}>Holy See (Vatican City State)</option>
	<option value="HN" ${nationality == 'HN' ? 'selected' : ''}>Honduras</option>
	<option value="HK" ${nationality == 'HN' ? 'selected' : ''}>Hong Kong</option>
	<option value="HU" ${nationality == 'HU' ? 'selected' : ''}>Hungary</option>
	<option value="IS" ${nationality == 'IS' ? 'selected' : ''}>Iceland</option>
	<option value="IN" ${nationality == 'IN' ? 'selected' : ''}>India</option>
	<option value="ID" ${nationality == 'ID' ? 'selected' : ''}>Indonesia</option>
	<option value="IR" ${nationality == 'IR' ? 'selected' : ''}>Iran, Islamic Republic of</option>
	<option value="IQ" ${nationality == 'IQ' ? 'selected' : ''}>Iraq</option>
	<option value="IE" ${nationality == 'IE' ? 'selected' : ''}>Ireland</option>
	<option value="IM" ${nationality == 'IM' ? 'selected' : ''}>Isle of Man</option>
	<option value="IL" ${nationality == 'IL' ? 'selected' : ''}>Israel</option>
	<option value="IT" ${nationality == 'IT' ? 'selected' : ''}>Italy</option>
	<option value="JM" ${nationality == 'JM' ? 'selected' : ''}>Jamaica</option>
	<option value="JP" ${nationality == 'JP' ? 'selected' : ''}>Japan</option>
	<option value="JE" ${nationality == 'JE' ? 'selected' : ''}>Jersey</option>
	<option value="JO" ${nationality == 'JO' ? 'selected' : ''}>Jordan</option>
	<option value="KZ" ${nationality == 'KZ' ? 'selected' : ''}>Kazakhstan</option>
	<option value="KE" ${nationality == 'KE' ? 'selected' : ''}>Kenya</option>
	<option value="KI" ${nationality == 'KI' ? 'selected' : ''}>Kiribati</option>
	<option value="KP" ${nationality == 'KP' ? 'selected' : ''}>Korea, Democratic People's Republic of</option>
	<option value="KR" ${nationality == 'KR' ? 'selected' : ''}>Korea, Republic of</option>
	<option value="KW" ${nationality == 'KW' ? 'selected' : ''}>Kuwait</option>
	<option value="KG" ${nationality == 'KG' ? 'selected' : ''}>Kyrgyzstan</option>
	<option value="LA" ${nationality == 'LA' ? 'selected' : ''}>Lao People's Democratic Republic</option>
	<option value="LV" ${nationality == 'LV' ? 'selected' : ''}>Latvia</option>
	<option value="LB" ${nationality == 'LB' ? 'selected' : ''}>Lebanon</option>
	<option value="LS" ${nationality == 'LS' ? 'selected' : ''}>Lesotho</option>
	<option value="LR" ${nationality == 'LR' ? 'selected' : ''}>Liberia</option>
	<option value="LY" ${nationality == 'LY' ? 'selected' : ''}>Libya</option>
	<option value="LI" ${nationality == 'LI' ? 'selected' : ''}>Liechtenstein</option>
	<option value="LT" ${nationality == 'LT' ? 'selected' : ''}>Lithuania</option>
	<option value="LU" ${nationality == 'LU' ? 'selected' : ''}>Luxembourg</option>
	<option value="MO" ${nationality == 'MO' ? 'selected' : ''}>Macao</option>
	<option value="MK" ${nationality == 'MK' ? 'selected' : ''}>Macedonia, the former Yugoslav Republic of</option>
	<option value="MG" ${nationality == 'MG' ? 'selected' : ''}>Madagascar</option>
	<option value="MW" ${nationality == 'MW' ? 'selected' : ''}>Malawi</option>
	<option value="MY" ${nationality == 'MY' ? 'selected' : ''}>Malaysia</option>
	<option value="MV" ${nationality == 'MV' ? 'selected' : ''}>Maldives</option>
	<option value="ML" ${nationality == 'ML' ? 'selected' : ''}>Mali</option>
	<option value="MT" ${nationality == 'MT' ? 'selected' : ''}>Malta</option>
	<option value="MH" ${nationality == 'MH' ? 'selected' : ''}>Marshall Islands</option>
	<option value="MQ" ${nationality == 'MQ' ? 'selected' : ''}>Martinique</option>
	<option value="MR" ${nationality == 'MR' ? 'selected' : ''}>Mauritania</option>
	<option value="MU" ${nationality == 'MU' ? 'selected' : ''}>Mauritius</option>
	<option value="YT" ${nationality == 'YT' ? 'selected' : ''}>Mayotte</option>
	<option value="MX" ${nationality == 'MX' ? 'selected' : ''}>Mexico</option>
	<option value="FM" ${nationality == 'FM' ? 'selected' : ''}>Micronesia, Federated States of</option>
	<option value="MD" ${nationality == 'MD' ? 'selected' : ''}>Moldova, Republic of</option>
	<option value="MC" ${nationality == 'MC' ? 'selected' : ''}>Monaco</option>
	<option value="MN" ${nationality == 'MN' ? 'selected' : ''}>Mongolia</option>
	<option value="ME" ${nationality == 'ME' ? 'selected' : ''}>Montenegro</option>
	<option value="MS" ${nationality == 'MS' ? 'selected' : ''}>Montserrat</option>
	<option value="MA" ${nationality == 'MA' ? 'selected' : ''}>Morocco</option>
	<option value="MZ" ${nationality == 'MZ' ? 'selected' : ''}>Mozambique</option>
	<option value="MM" ${nationality == 'MM' ? 'selected' : ''}>Myanmar</option>
	<option value="NA" ${nationality == 'NA' ? 'selected' : ''}>Namibia</option>
	<option value="NR" ${nationality == 'NR' ? 'selected' : ''}>Nauru</option>
	<option value="NP" ${nationality == 'NP' ? 'selected' : ''}>Nepal</option>
	<option value="NL" ${nationality == 'NL' ? 'selected' : ''}>Netherlands</option>
	<option value="NC" ${nationality == 'NC' ? 'selected' : ''}>New Caledonia</option>
	<option value="NZ" ${nationality == 'NZ' ? 'selected' : ''}>New Zealand</option>
	<option value="NI" ${nationality == 'NI' ? 'selected' : ''}>Nicaragua</option>
	<option value="NE" ${nationality == 'NE' ? 'selected' : ''}>Niger</option>
	<option value="NG" ${nationality == 'NG' ? 'selected' : ''}>Nigeria</option>
	<option value="NU" ${nationality == 'NU' ? 'selected' : ''}>Niue</option>
	<option value="NF" ${nationality == 'NF' ? 'selected' : ''}>Norfolk Island</option>
	<option value="MP" ${nationality == 'MP' ? 'selected' : ''}>Northern Mariana Islands</option>
	<option value="NO" ${nationality == 'NO' ? 'selected' : ''}>Norway</option>
	<option value="OM" ${nationality == 'OM' ? 'selected' : ''}>Oman</option>
	<option value="PK" ${nationality == 'PK' ? 'selected' : ''}>Pakistan</option>
	<option value="PW" ${nationality == 'PW' ? 'selected' : ''}>Palau</option>
	<option value="PS" ${nationality == 'PS' ? 'selected' : ''}>Palestinian Territory, Occupied</option>
	<option value="PA" ${nationality == 'PA' ? 'selected' : ''}>Panama</option>
	<option value="PG" ${nationality == 'PG' ? 'selected' : ''}>Papua New Guinea</option>
	<option value="PY" ${nationality == 'PY' ? 'selected' : ''}>Paraguay</option>
	<option value="PE" ${nationality == 'PE' ? 'selected' : ''}>Peru</option>
	<option value="PH" ${nationality == 'PH' ? 'selected' : ''}>Philippines</option>
	<option value="PN" ${nationality == 'PN' ? 'selected' : ''}>Pitcairn</option>
	<option value="PL" ${nationality == 'PL' ? 'selected' : ''}>Poland</option>
	<option value="PT" ${nationality == 'PT' ? 'selected' : ''}>Portugal</option>
	<option value="PR" ${nationality == 'PR' ? 'selected' : ''}>Puerto Rico</option>
	<option value="QA" ${nationality == 'QA' ? 'selected' : ''}>Qatar</option>
	<option value="RE" ${nationality == 'RE' ? 'selected' : ''}>Réunion</option>
	<option value="RO" ${nationality == 'RO' ? 'selected' : ''}>Romania</option>
	<option value="RU" ${nationality == 'RU' ? 'selected' : ''}>Russian Federation</option>
	<option value="RW" ${nationality == 'RW' ? 'selected' : ''}>Rwanda</option>
	<option value="BL" ${nationality == 'BL' ? 'selected' : ''}>Saint Barthélemy</option>
	<option value="SH" ${nationality == 'SH' ? 'selected' : ''}>Saint Helena, Ascension and Tristan da Cunha</option>
	<option value="KN" ${nationality == 'KN' ? 'selected' : ''}>Saint Kitts and Nevis</option>
	<option value="LC" ${nationality == 'LC' ? 'selected' : ''}>Saint Lucia</option>
	<option value="MF" ${nationality == 'MF' ? 'selected' : ''}>Saint Martin (French part)</option>
	<option value="PM" ${nationality == 'PM' ? 'selected' : ''}>Saint Pierre and Miquelon</option>
	<option value="VC" ${nationality == 'VC' ? 'selected' : ''}>Saint Vincent and the Grenadines</option>
	<option value="WS" ${nationality == 'WS' ? 'selected' : ''}>Samoa</option>
	<option value="SM" ${nationality == 'SM' ? 'selected' : ''}>San Marino</option>
	<option value="ST" ${nationality == 'ST' ? 'selected' : ''}>Sao Tome and Principe</option>
	<option value="SA" ${nationality == 'SA' ? 'selected' : ''}>Saudi Arabia</option>
	<option value="SN" ${nationality == 'SN' ? 'selected' : ''}>Senegal</option>
	<option value="RS" ${nationality == 'RS' ? 'selected' : ''}>Serbia</option>
	<option value="SC" ${nationality == 'SC' ? 'selected' : ''}>Seychelles</option>
	<option value="SL" ${nationality == 'SL' ? 'selected' : ''}>Sierra Leone</option>
	<option value="SG" ${nationality == 'SG' ? 'selected' : ''}>Singapore</option>
	<option value="SX" ${nationality == 'SX' ? 'selected' : ''}>Sint Maarten (Dutch part)</option>
	<option value="SK" ${nationality == 'SK' ? 'selected' : ''}>Slovakia</option>
	<option value="SI" ${nationality == 'SI' ? 'selected' : ''}>Slovenia</option>
	<option value="SB" ${nationality == 'SB' ? 'selected' : ''}>Solomon Islands</option>
	<option value="SO" ${nationality == 'SO' ? 'selected' : ''}>Somalia</option>
	<option value="ZA" ${nationality == 'ZA' ? 'selected' : ''}>South Africa</option>
	<option value="GS" ${nationality == 'GS' ? 'selected' : ''}>South Georgia and the South Sandwich Islands</option>
	<option value="SS" ${nationality == 'SS' ? 'selected' : ''}>South Sudan</option>
	<option value="ES" ${nationality == 'ES' ? 'selected' : ''}>Spain</option>
	<option value="LK" ${nationality == 'LK' ? 'selected' : ''}>Sri Lanka</option>
	<option value="SD" ${nationality == 'SD' ? 'selected' : ''}>Sudan</option>
	<option value="SR" ${nationality == 'SR' ? 'selected' : ''}>Suriname</option>
	<option value="SJ" ${nationality == 'SJ' ? 'selected' : ''}>Svalbard and Jan Mayen</option>
	<option value="SZ" ${nationality == 'SZ' ? 'selected' : ''}>Swaziland</option>
	<option value="SE" ${nationality == 'SE' ? 'selected' : ''}>Sweden</option>
	<option value="CH" ${nationality == 'CH' ? 'selected' : ''}>Switzerland</option>
	<option value="SY" ${nationality == 'SY' ? 'selected' : ''}>Syrian Arab Republic</option>
	<option value="TW" ${nationality == 'TW' ? 'selected' : ''}>Taiwan, Province of China</option>
	<option value="TJ" ${nationality == 'TJ' ? 'selected' : ''}>Tajikistan</option>
	<option value="TZ" ${nationality == 'TZ' ? 'selected' : ''}>Tanzania, United Republic of</option>
	<option value="TH" ${nationality == 'TH' ? 'selected' : ''}>Thailand</option>
	<option value="TL" ${nationality == 'TL' ? 'selected' : ''}>Timor-Leste</option>
	<option value="TG" ${nationality == 'TG' ? 'selected' : ''}>Togo</option>
	<option value="TK" ${nationality == 'TK' ? 'selected' : ''}>Tokelau</option>
	<option value="TO" ${nationality == 'TO' ? 'selected' : ''}>Tonga</option>
	<option value="TT" ${nationality == 'TT' ? 'selected' : ''}>Trinidad and Tobago</option>
	<option value="TN" ${nationality == 'TN' ? 'selected' : ''}>Tunisia</option>
	<option value="TR" ${nationality == 'TR' ? 'selected' : ''}>Turkey</option>
	<option value="TM" ${nationality == 'TM' ? 'selected' : ''}>Turkmenistan</option>
	<option value="TC" ${nationality == 'TC' ? 'selected' : ''}>Turks and Caicos Islands</option>
	<option value="TV" ${nationality == 'TV' ? 'selected' : ''}>Tuvalu</option>
	<option value="UG" ${nationality == 'UG' ? 'selected' : ''}>Uganda</option>
	<option value="UA" ${nationality == 'UA' ? 'selected' : ''}>Ukraine</option>
	<option value="AE" ${nationality == 'AE' ? 'selected' : ''}>United Arab Emirates</option>
	<option value="GB" ${nationality == 'GB' ? 'selected' : ''}>United Kingdom</option>
	<option value="US" ${nationality == 'US' ? 'selected' : ''}>United States</option>
	<option value="UM" ${nationality == 'UM' ? 'selected' : ''}>United States Minor Outlying Islands</option>
	<option value="UY" ${nationality == 'UY' ? 'selected' : ''}>Uruguay</option>
	<option value="UZ" ${nationality == 'UZ' ? 'selected' : ''}>Uzbekistan</option>
	<option value="VU" ${nationality == 'VU' ? 'selected' : ''}>Vanuatu</option>
	<option value="VE" ${nationality == 'VE' ? 'selected' : ''}>Venezuela, Bolivarian Republic of</option>
	<option value="VN" ${nationality == 'VN' ? 'selected' : ''}>Viet Nam</option>
	<option value="VG" ${nationality == 'VG' ? 'selected' : ''}>Virgin Islands, British</option>
	<option value="VI" ${nationality == 'VI' ? 'selected' : ''}>Virgin Islands, U.S.</option>
	<option value="WF" ${nationality == 'WF' ? 'selected' : ''}>Wallis and Futuna</option>
	<option value="EH" ${nationality == 'EH' ? 'selected' : ''}>Western Sahara</option>
	<option value="YE" ${nationality == 'YE' ? 'selected' : ''}>Yemen</option>
	<option value="ZM" ${nationality == 'ZM' ? 'selected' : ''}>Zambia</option>
	<option value="ZW" ${nationality == 'ZW' ? 'selected' : ''}>Zimbabwe</option>
</select>
                                                                                        
                                                                                        <p id="error-step9"></p>
                                                                                            </div></div>
                                                                                        
                                                                                        <div class="col-md-6"><div class="form-group">
											<label for="contact-citizenship" >Citizenship *</label>
                                                                                        
                                                                                        <select class="form-control" name="Citizenship"  required="required" required data-parsley-errors-container="#error-step10">
<option value="" disabled selected>Click To Select Citizenship</option>
	
	<option value="AF" ${citizenship == 'AF' ? 'selected' : ''}>Afghanistan</option>
	<option value="AX" ${citizenship == 'AX' ? 'selected' : ''}>Åland Islands</option>
	<option value="AL" ${citizenship == 'AL' ? 'selected' : ''}>Albania</option>
	<option value="DZ" ${citizenship == 'DZ' ? 'selected' : ''}>Algeria</option>
	<option value="AS" ${citizenship == 'AS' ? 'selected' : ''}>American Samoa</option>
	<option value="AD" ${citizenship == 'AD' ? 'selected' : ''}>Andorra</option>
	<option value="AO" ${citizenship == 'A0' ? 'selected' : ''}>Angola</option>
	<option value="AI" ${citizenship == 'AI' ? 'selected' : ''}>Anguilla</option>
	<option value="AQ" ${citizenship == 'AQ' ? 'selected' : ''}>Antarctica</option>
	<option value="AG" ${citizenship == 'AG' ? 'selected' : ''}>Antigua and Barbuda</option>
	<option value="AR" ${citizenship == 'AR' ? 'selected' : ''}>Argentina</option>
	<option value="AM" ${citizenship == 'AM' ? 'selected' : ''}>Armenia</option>
	<option value="AW" ${citizenship == 'AW' ? 'selected' : ''}>Aruba</option>
	<option value="AU" ${citizenship == 'AU' ? 'selected' : ''}>Australia</option>
	<option value="AT" ${citizenship == 'AT' ? 'selected' : ''}>Austria</option>
	<option value="AZ" ${citizenship == 'AZ' ? 'selected' : ''}>Azerbaijan</option>
	<option value="BS" ${citizenship == 'BS' ? 'selected' : ''}>Bahamas</option>
	<option value="BH" ${citizenship == 'BH' ? 'selected' : ''}>Bahrain</option>
	<option value="BD" ${citizenship == 'BD' ? 'selected' : ''}>Bangladesh</option>
	<option value="BB" ${citizenship == 'BB' ? 'selected' : ''}>Barbados</option>
	<option value="BY" ${citizenship == 'BY' ? 'selected' : ''}>Belarus</option>
	<option value="BE" ${citizenship == 'BE' ? 'selected' : ''}>Belgium</option>
	<option value="BZ" ${citizenship == 'BZ' ? 'selected' : ''}>Belize</option>
	<option value="BJ" ${citizenship == 'BJ' ? 'selected' : ''}>Benin</option>
	<option value="BM" ${citizenship == 'BM' ? 'selected' : ''}>Bermuda</option>
	<option value="BT" ${citizenship == 'BT' ? 'selected' : ''}>Bhutan</option>
	<option value="BO" ${citizenship == 'BO' ? 'selected' : ''}>Bolivia, Plurinational State of</option>
	<option value="BQ" ${citizenship == 'BQ' ? 'selected' : ''}>Bonaire, Sint Eustatius and Saba</option>
	<option value="BA" ${citizenship == 'BA' ? 'selected' : ''}>Bosnia and Herzegovina</option>
	<option value="BW" ${citizenship == 'BW' ? 'selected' : ''}>Botswana</option>
	<option value="BV" ${citizenship == 'BV' ? 'selected' : ''}>Bouvet Island</option>
	<option value="BR" ${citizenship == 'BR' ? 'selected' : ''}>Brazil</option>
	<option value="IO" ${citizenship == 'IO' ? 'selected' : ''}>British Indian Ocean Territory</option>
	<option value="BN" ${citizenship == 'BN' ? 'selected' : ''}>Brunei Darussalam</option>
	<option value="BG" ${citizenship == 'BG' ? 'selected' : ''}>Bulgaria</option>
	<option value="BF" ${citizenship == 'BF' ? 'selected' : ''}>Burkina Faso</option>
	<option value="BI" ${citizenship == 'BI' ? 'selected' : ''}>Burundi</option>
	<option value="KH" ${citizenship == 'KH' ? 'selected' : ''}>Cambodia</option>
	<option value="CM" ${citizenship == 'CM' ? 'selected' : ''}>Cameroon</option>
	<option value="CA" ${citizenship == 'CA' ? 'selected' : ''}>Canada</option>
	<option value="CV" ${citizenship == 'CV' ? 'selected' : ''}>Cape Verde</option>
	<option value="KY" ${citizenship == 'KY' ? 'selected' : ''}>Cayman Islands</option>
	<option value="CF" ${citizenship == 'CF' ? 'selected' : ''}>Central African Republic</option>
	<option value="TD" ${citizenship == 'TD' ? 'selected' : ''}>Chad</option>
	<option value="CL" ${citizenship == 'CL' ? 'selected' : ''}>Chile</option>
	<option value="CN" ${citizenship == 'CN' ? 'selected' : ''}>China</option>
	<option value="CX" ${citizenship == 'CX' ? 'selected' : ''}>Christmas Island</option>
	<option value="CC" ${citizenship == 'CC' ? 'selected' : ''}>Cocos (Keeling) Islands</option>
	<option value="CO" ${citizenship == 'CO' ? 'selected' : ''}>Colombia</option>
	<option value="KM" ${citizenship == 'KM' ? 'selected' : ''}>Comoros</option>
	<option value="CG" ${citizenship == 'CG' ? 'selected' : ''}>Congo</option>
	<option value="CD" ${citizenship == 'CD' ? 'selected' : ''}>Congo, the Democratic Republic of the</option>
	<option value="CK" ${citizenship == 'CK' ? 'selected' : ''} >Cook Islands</option>
	<option value="CR" ${citizenship == 'CR' ? 'selected' : ''}>Costa Rica</option>
	<option value="CI" ${citizenship == 'CI' ? 'selected' : ''}>Côte d'Ivoire</option>
	<option value="HR" ${citizenship == 'HR' ? 'selected' : ''}>Croatia</option>
	<option value="CU" ${citizenship == 'CU' ? 'selected' : ''}>Cuba</option>
	<option value="CW" ${citizenship == 'CW' ? 'selected' : ''}>Curaçao</option>
	<option value="CY" ${citizenship == 'CY' ? 'selected' : ''}>Cyprus</option>
	<option value="CZ" ${citizenship == 'CZ' ? 'selected' : ''}>Czech Republic</option>
	<option value="DK" ${citizenship == 'DK' ? 'selected' : ''}>Denmark</option>
	<option value="DJ" ${citizenship == 'DJ' ? 'selected' : ''}>Djibouti</option>
	<option value="DM" ${citizenship == 'DM' ? 'selected' : ''}>Dominica</option>
	<option value="DO" ${citizenship == 'DO' ? 'selected' : ''}>Dominican Republic</option>
	<option value="EC" ${citizenship == 'EC' ? 'selected' : ''}>Ecuador</option>
	<option value="EG" ${citizenship == 'EG' ? 'selected' : ''}>Egypt</option>
	<option value="SV" ${citizenship == 'SV' ? 'selected' : ''}>El Salvador</option>
	<option value="GQ" ${citizenship == 'GQ' ? 'selected' : ''}>Equatorial Guinea</option>
	<option value="ER" ${citizenship == 'ER' ? 'selected' : ''}>Eritrea</option>
	<option value="EE" ${citizenship == 'EE' ? 'selected' : ''}>Estonia</option>
	<option value="ET" ${citizenship == 'ET' ? 'selected' : ''}>Ethiopia</option>
	<option value="FK" ${citizenship == 'FK' ? 'selected' : ''}>Falkland Islands (Malvinas)</option>
	<option value="FO" ${citizenship == 'FO' ? 'selected' : ''}>Faroe Islands</option>
	<option value="FJ" ${citizenship == 'FJ' ? 'selected' : ''}>Fiji</option>
	<option value="FI" ${citizenship == 'FI' ? 'selected' : ''}>Finland</option>
	<option value="FR" ${citizenship == 'FR' ? 'selected' : ''}>France</option>
	<option value="GF" ${citizenship == 'GF' ? 'selected' : ''}>French Guiana</option>
	<option value="PF" ${citizenship == 'PF' ? 'selected' : ''}>French Polynesia</option>
	<option value="TF" ${citizenship == 'TF' ? 'selected' : ''}>French Southern Territories</option>
	<option value="GA" ${citizenship == 'GA' ? 'selected' : ''}>Gabon</option>
	<option value="GM" ${citizenship == 'GM' ? 'selected' : ''}>Gambia</option>
	<option value="GE" ${citizenship == 'GE' ? 'selected' : ''}>Georgia</option>
	<option value="DE" ${citizenship == 'DE' ? 'selected' : ''}>Germany</option>
	<option value="GH" ${citizenship == 'GH' ? 'selected' : ''}>Ghana</option>
	<option value="GI" ${citizenship == 'GI' ? 'selected' : ''}>Gibraltar</option>
	<option value="GR" ${citizenship == 'GR' ? 'selected' : ''}>Greece</option>
	<option value="GL" ${citizenship == 'GL' ? 'selected' : ''}>Greenland</option>
	<option value="GD" ${citizenship == 'GD' ? 'selected' : ''}>Grenada</option>
	<option value="GP" ${citizenship == 'GP' ? 'selected' : ''}>Guadeloupe</option>
	<option value="GU" ${citizenship == 'GU' ? 'selected' : ''}>Guam</option>
	<option value="GT" ${citizenship == 'GT' ? 'selected' : ''}>Guatemala</option>
	<option value="GG" ${citizenship == 'GG' ? 'selected' : ''}>Guernsey</option>
	<option value="GN" ${citizenship == 'GN' ? 'selected' : ''}>Guinea</option>
	<option value="GW" ${citizenship == 'GW' ? 'selected' : ''}>Guinea-Bissau</option>
	<option value="GY" ${citizenship == 'GY' ? 'selected' : ''}>Guyana</option>
	<option value="HT" ${citizenship == 'HT' ? 'selected' : ''}>Haiti</option>
	<option value="HM" ${citizenship == 'HM' ? 'selected' : ''}>Heard Island and McDonald Islands</option>
	<option value="VA" ${citizenship == 'VA' ? 'selected' : ''}>Holy See (Vatican City State)</option>
	<option value="HN" ${citizenship == 'HN' ? 'selected' : ''}>Honduras</option>
	<option value="HK" ${citizenship == 'HN' ? 'selected' : ''}>Hong Kong</option>
	<option value="HU" ${citizenship == 'HU' ? 'selected' : ''}>Hungary</option>
	<option value="IS" ${citizenship == 'IS' ? 'selected' : ''}>Iceland</option>
	<option value="IN" ${citizenship == 'IN' ? 'selected' : ''}>India</option>
	<option value="ID" ${citizenship == 'ID' ? 'selected' : ''}>Indonesia</option>
	<option value="IR" ${citizenship == 'IR' ? 'selected' : ''}>Iran, Islamic Republic of</option>
	<option value="IQ" ${citizenship == 'IQ' ? 'selected' : ''}>Iraq</option>
	<option value="IE" ${citizenship == 'IE' ? 'selected' : ''}>Ireland</option>
	<option value="IM" ${citizenship == 'IM' ? 'selected' : ''}>Isle of Man</option>
	<option value="IL" ${citizenship == 'IL' ? 'selected' : ''}>Israel</option>
	<option value="IT" ${citizenship == 'IT' ? 'selected' : ''}>Italy</option>
	<option value="JM" ${citizenship == 'JM' ? 'selected' : ''}>Jamaica</option>
	<option value="JP" ${citizenship == 'JP' ? 'selected' : ''}>Japan</option>
	<option value="JE" ${citizenship == 'JE' ? 'selected' : ''}>Jersey</option>
	<option value="JO" ${citizenship == 'JO' ? 'selected' : ''}>Jordan</option>
	<option value="KZ" ${citizenship == 'KZ' ? 'selected' : ''}>Kazakhstan</option>
	<option value="KE" ${citizenship == 'KE' ? 'selected' : ''}>Kenya</option>
	<option value="KI" ${citizenship == 'KI' ? 'selected' : ''}>Kiribati</option>
	<option value="KP" ${citizenship == 'KP' ? 'selected' : ''}>Korea, Democratic People's Republic of</option>
	<option value="KR" ${citizenship == 'KR' ? 'selected' : ''}>Korea, Republic of</option>
	<option value="KW" ${citizenship == 'KW' ? 'selected' : ''}>Kuwait</option>
	<option value="KG" ${citizenship == 'KG' ? 'selected' : ''}>Kyrgyzstan</option>
	<option value="LA" ${citizenship == 'LA' ? 'selected' : ''}>Lao People's Democratic Republic</option>
	<option value="LV" ${citizenship == 'LV' ? 'selected' : ''}>Latvia</option>
	<option value="LB" ${citizenship == 'LB' ? 'selected' : ''}>Lebanon</option>
	<option value="LS" ${citizenship == 'LS' ? 'selected' : ''}>Lesotho</option>
	<option value="LR" ${citizenship == 'LR' ? 'selected' : ''}>Liberia</option>
	<option value="LY" ${citizenship == 'LY' ? 'selected' : ''}>Libya</option>
	<option value="LI" ${citizenship == 'LI' ? 'selected' : ''}>Liechtenstein</option>
	<option value="LT" ${citizenship == 'LT' ? 'selected' : ''}>Lithuania</option>
	<option value="LU" ${citizenship == 'LU' ? 'selected' : ''}>Luxembourg</option>
	<option value="MO" ${citizenship == 'MO' ? 'selected' : ''}>Macao</option>
	<option value="MK" ${citizenship == 'MK' ? 'selected' : ''}>Macedonia, the former Yugoslav Republic of</option>
	<option value="MG" ${citizenship == 'MG' ? 'selected' : ''}>Madagascar</option>
	<option value="MW" ${citizenship == 'MW' ? 'selected' : ''}>Malawi</option>
	<option value="MY" ${citizenship == 'MY' ? 'selected' : ''}>Malaysia</option>
	<option value="MV" ${citizenship == 'MV' ? 'selected' : ''}>Maldives</option>
	<option value="ML" ${citizenship == 'ML' ? 'selected' : ''}>Mali</option>
	<option value="MT" ${citizenship == 'MT' ? 'selected' : ''}>Malta</option>
	<option value="MH" ${citizenship == 'MH' ? 'selected' : ''}>Marshall Islands</option>
	<option value="MQ" ${citizenship == 'MQ' ? 'selected' : ''}>Martinique</option>
	<option value="MR" ${citizenship == 'MR' ? 'selected' : ''}>Mauritania</option>
	<option value="MU" ${citizenship == 'MU' ? 'selected' : ''}>Mauritius</option>
	<option value="YT" ${citizenship == 'YT' ? 'selected' : ''}>Mayotte</option>
	<option value="MX" ${citizenship == 'MX' ? 'selected' : ''}>Mexico</option>
	<option value="FM" ${citizenship == 'FM' ? 'selected' : ''}>Micronesia, Federated States of</option>
	<option value="MD" ${citizenship == 'MD' ? 'selected' : ''}>Moldova, Republic of</option>
	<option value="MC" ${citizenship == 'MC' ? 'selected' : ''}>Monaco</option>
	<option value="MN" ${citizenship == 'MN' ? 'selected' : ''}>Mongolia</option>
	<option value="ME" ${citizenship == 'ME' ? 'selected' : ''}>Montenegro</option>
	<option value="MS" ${citizenship == 'MS' ? 'selected' : ''}>Montserrat</option>
	<option value="MA" ${citizenship == 'MA' ? 'selected' : ''}>Morocco</option>
	<option value="MZ" ${citizenship == 'MZ' ? 'selected' : ''}>Mozambique</option>
	<option value="MM" ${citizenship == 'MM' ? 'selected' : ''}>Myanmar</option>
	<option value="NA" ${citizenship == 'NA' ? 'selected' : ''}>Namibia</option>
	<option value="NR" ${citizenship == 'NR' ? 'selected' : ''}>Nauru</option>
	<option value="NP" ${citizenship == 'NP' ? 'selected' : ''}>Nepal</option>
	<option value="NL" ${citizenship == 'NL' ? 'selected' : ''}>Netherlands</option>
	<option value="NC" ${citizenship == 'NC' ? 'selected' : ''}>New Caledonia</option>
	<option value="NZ" ${citizenship == 'NZ' ? 'selected' : ''}>New Zealand</option>
	<option value="NI" ${citizenship == 'NI' ? 'selected' : ''}>Nicaragua</option>
	<option value="NE" ${citizenship == 'NE' ? 'selected' : ''}>Niger</option>
	<option value="NG" ${citizenship == 'NG' ? 'selected' : ''}>Nigeria</option>
	<option value="NU" ${citizenship == 'NU' ? 'selected' : ''}>Niue</option>
	<option value="NF" ${citizenship == 'NF' ? 'selected' : ''}>Norfolk Island</option>
	<option value="MP" ${citizenship == 'MP' ? 'selected' : ''}>Northern Mariana Islands</option>
	<option value="NO" ${citizenship == 'NO' ? 'selected' : ''}>Norway</option>
	<option value="OM" ${citizenship == 'OM' ? 'selected' : ''}>Oman</option>
	<option value="PK" ${citizenship == 'PK' ? 'selected' : ''}>Pakistan</option>
	<option value="PW" ${citizenship == 'PW' ? 'selected' : ''}>Palau</option>
	<option value="PS" ${citizenship == 'PS' ? 'selected' : ''}>Palestinian Territory, Occupied</option>
	<option value="PA" ${citizenship == 'PA' ? 'selected' : ''}>Panama</option>
	<option value="PG" ${citizenship == 'PG' ? 'selected' : ''}>Papua New Guinea</option>
	<option value="PY" ${citizenship == 'PY' ? 'selected' : ''}>Paraguay</option>
	<option value="PE" ${citizenship == 'PE' ? 'selected' : ''}>Peru</option>
	<option value="PH" ${citizenship == 'PH' ? 'selected' : ''}>Philippines</option>
	<option value="PN" ${citizenship == 'PN' ? 'selected' : ''}>Pitcairn</option>
	<option value="PL" ${citizenship == 'PL' ? 'selected' : ''}>Poland</option>
	<option value="PT" ${citizenship == 'PT' ? 'selected' : ''}>Portugal</option>
	<option value="PR" ${citizenship == 'PR' ? 'selected' : ''}>Puerto Rico</option>
	<option value="QA" ${citizenship == 'QA' ? 'selected' : ''}>Qatar</option>
	<option value="RE" ${citizenship == 'RE' ? 'selected' : ''}>Réunion</option>
	<option value="RO" ${citizenship == 'RO' ? 'selected' : ''}>Romania</option>
	<option value="RU" ${citizenship == 'RU' ? 'selected' : ''}>Russian Federation</option>
	<option value="RW" ${citizenship == 'RW' ? 'selected' : ''}>Rwanda</option>
	<option value="BL" ${citizenship == 'BL' ? 'selected' : ''}>Saint Barthélemy</option>
	<option value="SH" ${citizenship == 'SH' ? 'selected' : ''}>Saint Helena, Ascension and Tristan da Cunha</option>
	<option value="KN" ${citizenship == 'KN' ? 'selected' : ''}>Saint Kitts and Nevis</option>
	<option value="LC" ${citizenship == 'LC' ? 'selected' : ''}>Saint Lucia</option>
	<option value="MF" ${citizenship == 'MF' ? 'selected' : ''}>Saint Martin (French part)</option>
	<option value="PM" ${citizenship == 'PM' ? 'selected' : ''}>Saint Pierre and Miquelon</option>
	<option value="VC" ${citizenship == 'VC' ? 'selected' : ''}>Saint Vincent and the Grenadines</option>
	<option value="WS" ${citizenship == 'WS' ? 'selected' : ''}>Samoa</option>
	<option value="SM" ${citizenship == 'SM' ? 'selected' : ''}>San Marino</option>
	<option value="ST" ${citizenship == 'ST' ? 'selected' : ''}>Sao Tome and Principe</option>
	<option value="SA" ${citizenship == 'SA' ? 'selected' : ''}>Saudi Arabia</option>
	<option value="SN" ${citizenship == 'SN' ? 'selected' : ''}>Senegal</option>
	<option value="RS" ${citizenship == 'RS' ? 'selected' : ''}>Serbia</option>
	<option value="SC" ${citizenship == 'SC' ? 'selected' : ''}>Seychelles</option>
	<option value="SL" ${citizenship == 'SL' ? 'selected' : ''}>Sierra Leone</option>
	<option value="SG" ${citizenship == 'SG' ? 'selected' : ''}>Singapore</option>
	<option value="SX" ${citizenship == 'SX' ? 'selected' : ''}>Sint Maarten (Dutch part)</option>
	<option value="SK" ${citizenship == 'SK' ? 'selected' : ''}>Slovakia</option>
	<option value="SI" ${citizenship == 'SI' ? 'selected' : ''}>Slovenia</option>
	<option value="SB" ${citizenship == 'SB' ? 'selected' : ''}>Solomon Islands</option>
	<option value="SO" ${citizenship == 'SO' ? 'selected' : ''}>Somalia</option>
	<option value="ZA" ${citizenship == 'ZA' ? 'selected' : ''}>South Africa</option>
	<option value="GS" ${citizenship == 'GS' ? 'selected' : ''}>South Georgia and the South Sandwich Islands</option>
	<option value="SS" ${citizenship == 'SS' ? 'selected' : ''}>South Sudan</option>
	<option value="ES" ${citizenship == 'ES' ? 'selected' : ''}>Spain</option>
	<option value="LK" ${citizenship == 'LK' ? 'selected' : ''}>Sri Lanka</option>
	<option value="SD" ${citizenship == 'SD' ? 'selected' : ''}>Sudan</option>
	<option value="SR" ${citizenship == 'SR' ? 'selected' : ''}>Suriname</option>
	<option value="SJ" ${citizenship == 'SJ' ? 'selected' : ''}>Svalbard and Jan Mayen</option>
	<option value="SZ" ${citizenship == 'SZ' ? 'selected' : ''}>Swaziland</option>
	<option value="SE" ${citizenship == 'SE' ? 'selected' : ''}>Sweden</option>
	<option value="CH" ${citizenship == 'CH' ? 'selected' : ''}>Switzerland</option>
	<option value="SY" ${citizenship == 'SY' ? 'selected' : ''}>Syrian Arab Republic</option>
	<option value="TW" ${citizenship == 'TW' ? 'selected' : ''}>Taiwan, Province of China</option>
	<option value="TJ" ${citizenship == 'TJ' ? 'selected' : ''}>Tajikistan</option>
	<option value="TZ" ${citizenship == 'TZ' ? 'selected' : ''}>Tanzania, United Republic of</option>
	<option value="TH" ${citizenship == 'TH' ? 'selected' : ''}>Thailand</option>
	<option value="TL" ${citizenship == 'TL' ? 'selected' : ''}>Timor-Leste</option>
	<option value="TG" ${citizenship == 'TG' ? 'selected' : ''}>Togo</option>
	<option value="TK" ${citizenship == 'TK' ? 'selected' : ''}>Tokelau</option>
	<option value="TO" ${citizenship == 'TO' ? 'selected' : ''}>Tonga</option>
	<option value="TT" ${citizenship == 'TT' ? 'selected' : ''}>Trinidad and Tobago</option>
	<option value="TN" ${citizenship == 'TN' ? 'selected' : ''}>Tunisia</option>
	<option value="TR" ${citizenship == 'TR' ? 'selected' : ''}>Turkey</option>
	<option value="TM" ${citizenship == 'TM' ? 'selected' : ''}>Turkmenistan</option>
	<option value="TC" ${citizenship == 'TC' ? 'selected' : ''}>Turks and Caicos Islands</option>
	<option value="TV" ${citizenship == 'TV' ? 'selected' : ''}>Tuvalu</option>
	<option value="UG" ${citizenship == 'UG' ? 'selected' : ''}>Uganda</option>
	<option value="UA" ${citizenship == 'UA' ? 'selected' : ''}>Ukraine</option>
	<option value="AE" ${citizenship == 'AE' ? 'selected' : ''}>United Arab Emirates</option>
	<option value="GB" ${citizenship == 'GB' ? 'selected' : ''}>United Kingdom</option>
	<option value="US" ${citizenship == 'US' ? 'selected' : ''}>United States</option>
	<option value="UM" ${citizenship == 'UM' ? 'selected' : ''}>United States Minor Outlying Islands</option>
	<option value="UY" ${citizenship == 'UY' ? 'selected' : ''}>Uruguay</option>
	<option value="UZ" ${citizenship == 'UZ' ? 'selected' : ''}>Uzbekistan</option>
	<option value="VU" ${citizenship == 'VU' ? 'selected' : ''}>Vanuatu</option>
	<option value="VE" ${citizenship == 'VE' ? 'selected' : ''}>Venezuela, Bolivarian Republic of</option>
	<option value="VN" ${citizenship == 'VN' ? 'selected' : ''}>Viet Nam</option>
	<option value="VG" ${citizenship == 'VG' ? 'selected' : ''}>Virgin Islands, British</option>
	<option value="VI" ${citizenship == 'VI' ? 'selected' : ''}>Virgin Islands, U.S.</option>
	<option value="WF" ${citizenship == 'WF' ? 'selected' : ''}>Wallis and Futuna</option>
	<option value="EH" ${citizenship == 'EH' ? 'selected' : ''}>Western Sahara</option>
	<option value="YE" ${citizenship == 'YE' ? 'selected' : ''}>Yemen</option>
	<option value="ZM" ${citizenship == 'ZM' ? 'selected' : ''}>Zambia</option>
	<option value="ZW" ${citizenship == 'ZW' ? 'selected' : ''}>Zimbabwean</option>
</select>
                                                                                        
                                                                                        <p id="error-step10"></p>
                                                                                            </div></div>
                                                                                        
                                                                                         
                                                                                        <div class="col-md-6"><div class="form-group">
											<label for="contact-permanentresident" >Permanent Resident *</label>
											<select class="form-control" name="PermanentResident" required="required" required data-parsley-errors-container="#error-step11">
                                                                                            <option value="" disabled selected>Click To Select Your ZIM Residence Status</option>
													<option value="1" ${permanentresident == '1' ? 'selected' : ''}>Permanent</option>
													<option value="0" ${permanentresident == '0' ? 'selected' : ''}>Not Permanent</option>
												
													
												</select>
										<p id="error-step11"></p>
                                                                                            </div></div>
                                                                                        <div class="col-md-6"><div class="form-group">
											<label for="contact-permit" >Permit Held</label>
											<input type="text" class="form-control" required="required" id="contact-name" name="PermitHeld" placeholder="If not A Permanent Resident: Enter Permit Held"  >
										
                                                                                            </div></div>
                                                                                        
                                                                                        <div class="col-md-6"><div class="form-group">
											<label for="contact-disability" >Disability *</label>
											<select class="form-control" name="Disability" required data-parsley-errors-container="#error-step12">
                                                                                            <option value="" disabled selected>Do you suffer from any Disability? Click To Select</option>
													<option value="1" ${disability == '1' ? 'selected' : ''}>YES</option>
													<option value="0" ${disability == '0' ? 'selected' : ''}>NO</option>
												
													
												</select>
										<p id="error-step12"></p>
                                                                                            </div></div>
                                                                                        
                                                                                        <div class="col-md-6"><div class="form-group">
											<label for="contact-specify">Specify</label>
											<input name="Specify" type="text" class="form-control" id="contact-name" placeholder="If Any Disabilities. Please Specify"/>
										
                                                                                            </div></div>
                                                                                        <div class="col-lg-12 ">
                                                                                            
                                                                                          <div class="widget">
								
								<div class="widget-content">
								
								</div>
							</div>  
                                                                                        </div>
                                                                                        
                                                                                       <hr>   
                                                                                    </div>
                                                                                  
                                                                                  <div class="row">
                                                                                            
                                                                                          <div class="col-md-8">
													<div class="form-group">
														<label for="contact-address1">HOUSE NUMBER & STREET *</label>
														<input name="Address1" type="text" maxlength="30" id="contant-name" class="form-control" placeholder="House Number&Street"  required="required" required data-parsley-errors-container="#error-step5" />
													</div>
													<div class="form-group">
														<label for="contact-address2">SUBURB *</label>
														<input name="Address2" type="text" maxlength="30" id="contact-name" class="form-control" placeholder="Surbub"  required="required" required data-parsley-errors-container="#error-step5" />
													</div>
													<div class="form-group">
														<label for="contact-city">CITY *</label>
														<input name="City" type="text" maxlength="30" id="contact-name" class="form-control" placeholder="City"  required="required" required data-parsley-errors-container="#error-step5"/>
													</div>
                                                                                              
												</div>
                                                                                            
												<div class="col-md-3">
													<div class="form-group">
														<label for="contact-home">HOME TELEPHONE NUMBER *</label>
														<input type="number" id="email" class="form-control" name="HomeTelephone"  required="required" required data-parsley-errors-container="#error-step5" />
													</div>
													<div class="form-group">
														<label for="contact-mobile">MOBILE TELEPHONE NUMBER *</label>
                                                                                                                <input type="number" id="password" name="MobileNumber" required data-parsley-errors-container="#error-step5"  class="form-control"/>
													</div>
                                                                                                        <div class="form-group">
														<label for="contact-mobile">Email *</label>
														<input type="text" id="password" name="Email" class="form-control"  required="required" required data-parsley-errors-container="#error-step5" />
													</div>
													
												</div>
											</div>
                                                                                        
                                                                                        <hr class="separator">
                                                                                       
                                                                                        <div class="row">
                                                                                        
                                                                                        <div class="col-md-4"><div class="form-group">
											<label for="contact-lastschool">Last School Attended *</label>
											<input name="LastSchoolAttended" type="text" maxlength="30" class="form-control" id="contact-name"  required="required" required data-parsley-errors-container="#error-step5" placeholder="Name"/>
										<p id="error-step2"></p>
                                                                                            </div>
                                                                                        
                                                                                        <div class="col-md-4"><div class="form-group">
											<label for="contact-schoolstartyear" >Start Year *</label>
											<select class="form-control" name="StartYear" required data-parsley-errors-container="#error-step15" >
<option value="" enabled selected>Click To Select Year Started</option>
	<option value="2017" ${startyear == '2017' ? 'selected' : ''}>2017</option>
	<option value="2016" ${startyear == '2016' ? 'selected' : ''}>2016</option>
	<option value="2015" ${startyear == '2015' ? 'selected' : ''}>2015</option>
	<option value="2014" ${startyear == '2014' ? 'selected' : ''}>2014</option>
	<option value="2013" ${startyear == '2013' ? 'selected' : ''}>2013</option>
	<option value="2012" ${startyear == '2012' ? 'selected' : ''}>2012</option>
	<option value="2011" ${startyear == '2011' ? 'selected' : ''}>2011</option>
	<option value="2010" ${startyear == '2010' ? 'selected' : ''}>2010</option>
	<option value="2009" ${startyear == '2009' ? 'selected' : ''}>2009</option>
	<option value="2008" ${startyear == '2008' ? 'selected' : ''}>2008</option>
	<option value="2007" ${startyear == '2007' ? 'selected' : ''}>2007</option>
	<option value="2006" ${startyear == '2006' ? 'selected' : ''}>2006</option>
	<option value="2005" ${startyear == '2005' ? 'selected' : ''}>2005</option>
	<option value="2004" ${startyear == '2004' ? 'selected' : ''}>2004</option>
	<option value="2003" ${startyear == '2003' ? 'selected' : ''}>2003</option>
	<option value="2002" ${startyear == '2002' ? 'selected' : ''}>2002</option>
	<option value="2001" ${startyear == '2001' ? 'selected' : ''}>2001</option>
	<option value="2000" ${startyear == '2000' ? 'selected' : ''}>2000</option>
	
	
   </select>
                                                                                            </div></div>
                                                                                        
                                                                                        <div class="col-md-4"><div class="form-group">
											<label for="contact-schoolendyear" >End Year *</label>
											<select class="form-control" name="EndYear" placeholder="hhh" required data-parsley-errors-container="#error-step16">
<option value="" enabled selected>Click To Select End Year</option>
	
	<option value="2017" ${endyear == '2017' ? 'selected' : ''}>2017</option>
	<option value="2016" ${endyear == '2016' ? 'selected' : ''}>2016</option>
	<option value="2015" ${endyear == '2015' ? 'selected' : ''}>2015</option>
	<option value="2014" ${endyear == '2014' ? 'selected' : ''}>2014</option>
	<option value="2013" ${endyear == '2013' ? 'selected' : ''}>2013</option>
	<option value="2012" ${endyear == '2012' ? 'selected' : ''}>2012</option>
	<option value="2011" ${endyear == '2011' ? 'selected' : ''}>2011</option>
	<option value="2010" ${endyear == '2010' ? 'selected' : ''}>2010</option>
	<option value="2009" ${endyear == '2009' ? 'selected' : ''}>2009</option>
	<option value="2008" ${endyear == '2008' ? 'selected' : ''}>2008</option>
	<option value="2007" ${endyear == '2007' ? 'selected' : ''}>2007</option>
	<option value="2006" ${endyear == '2006' ? 'selected' : ''}>2006</option>
	<option value="2005" ${endyear == '2005' ? 'selected' : ''}>2005</option>
	<option value="2004" ${endyear == '2004' ? 'selected' : ''}>2004</option>
	<option value="2003" ${endyear == '2003' ? 'selected' : ''}>2003</option>
	<option value="2002" ${endyear == '2002' ? 'selected' : ''}>2002</option>
	<option value="2001" ${endyear == '2001' ? 'selected' : ''}>2001</option>
	<option value="2000" ${endyear == '2000' ? 'selected' : ''}>2000</option>
	
	
	
	
   </select>
                                                                                        <p id="error-step16"></p>
                                                                                            </div></div>
                                                                    
                                                                                            <br>
                                                                                        
                                                                                  <!-- <div class="col-lg-12 ">
                                                                                            
                                                                                       <div class="widget">
								
								<div class="widget-content">
								
								</div>
							</div>  
                                                                                        </div>-->
                                                                                   
										</div>
                                                                                  
<div class="row">
             <div class="col-md-12">
                      <!-START OF CODE FOR DISPLAYING SUCCESS OR FAILURE-> 
                      
                       <center style="color:red;">
                                        <%
                                            if (request.getParameter("message") == null) {
                                                out.println("Remember to click the submit button when done capturing Personal Details");
                                            } else {
                                                out.println(request. getParameter("message")+"</b>");
                                            }
                                        %>
                                    </center>
                        
                                    <!-END OF CODE FOR DISPLAYING SUCCESS OR FAILURE-></div></div>
                                                 
                <tr>
                    <td><input class="btn btn-secondary dropdown-toggle" type="submit" id="dropdownMenuButton"></td>
                </tr>
            </table>
                                </form>

                                        </tbody>

                                   
                                     
                                    </table>
                                </div>
                            </div>
                        </div>
                    
                
                          
                    <div class="card col-lg-12" style="float: left">
                            <div class="card-body">
                                <div class="table-responsive ">
                                    <table class="table table-striped" style="border: 1px solid #dee2e6">
                                        
    <tbody>
                                           

                                        </tbody>

                                   
                                     
                                    </table>
                                </div>
                            </div>
                        </div>
                   

                </div>
                    
               
                                <button class="accordion ">Applicant Qualification Details ::..<c:out value="${appNo}"/></button>
                                 <div class="col-lg-12" style="display: none">   
              
                        <div class="card col-lg-12" style="float: left">
                            <div class="card-body">
                                <div class="table-responsive ">
                                  
                              <form name="search_input"  action="${pageContext.request.contextPath}/addSpecialQua">
<input type="hidden"  name ="applicantNumber" value="<%=request.getAttribute("appNo")%>"></input>
                                  <hr>  
<h3>Enter Advanced Level Results </h3>                                   
<INPUT type="button" value="Add Row" onclick="addRow('dataTable1')" />
<INPUT type="button" value="Delete Row" onclick="deleteRow('dataTable1')" />
<table id="dataTable1" class="table table-striped" style="border: 1px solid #dee2e6">
  
    <tr>
<td><INPUT type="checkbox" name="chk"/></td>
<td>
<select class="form-control" name="subjectUndergradAdvanced[]"  value="">
                                                                           <option value="">Select Subject</option>
<option value ="9154" ${subjectAdvanced[0][1] == '9154' ? 'selected' : ''}>Divinity</option>
<option value ="9093 " ${subjectAdvanced[0][1] == '9093' ? 'selected' : ''}>English Language</option>
<option value ="9145" ${subjectAdvanced[0][1] == '9145' ? 'selected' : ''}>Shona</option>
<option value ="9146" ${subjectAdvanced[0][1] == '9146' ? 'selected' : ''}>Afrikaans</option>
<option value ="9147" ${subjectAdvanced[0][1] == '9147' ? 'selected' : ''}>Ndebele/Zulu</option>
<option value ="9695" ${subjectAdvanced[0][1] == '9695' ? 'selected' : ''}>Literature in English</option>
<option value ="9155" ${subjectAdvanced[0][1] == '9155' ? 'selected' : ''}>History</option>
<option value ="9696" ${subjectAdvanced[0][1] == '9696' ? 'selected' : ''}>Geography</option>
<option value ="9157" ${subjectAdvanced[0][1] == '9157' ? 'selected' : ''}>Sociology</option>
<option value ="9158" ${subjectAdvanced[0][1] == '9158' ? 'selected' : ''}>Economics</option>
<option value ="9159" ${subjectAdvanced[0][1] == '9159' ? 'selected' : ''}>Agriculture</option>
<option value ="9163" ${subjectAdvanced[0][1] == '9163' ? 'selected' : ''}>French</option>
<option value ="9164" ${subjectAdvanced[0][1] == '9164' ? 'selected' : ''}>Mathematics</option>
<option value ="9187" ${subjectAdvanced[0][1] == '9187' ? 'selected' : ''}>Further Mathematics</option>
<option value ="9188" ${subjectAdvanced[0][1] == '9188' ? 'selected' : ''}>Physics</option>
<option value ="9701" ${subjectAdvanced[0][1] == '9701' ? 'selected' : ''}>Chemistry</option>
<option value ="9700" ${subjectAdvanced[0][1] == '9700' ? 'selected' : ''}>Biology</option>
<option value ="9191" ${subjectAdvanced[0][1] == '9191' ? 'selected' : ''}>Art</option>
<option value ="9193" ${subjectAdvanced[0][1] == '9193' ? 'selected' : ''}>Textile and Clothing Design</option>
<option value ="9194" ${subjectAdvanced[0][1] == '9194' ? 'selected' : ''}>Food Science</option>
<option value ="CS" ${subjectAdvanced[0][1] == 'CS' ? 'selected' : ''}>Computing</option>
<option value ="9196" ${subjectAdvanced[0][1] == '9196' ? 'selected' : ''}>Geo, Mech, Building Drawing</option>
<option value ="9197" ${subjectAdvanced[0][1] == '9197' ? 'selected' : ''}>Accounting</option>
<option value ="9198" ${subjectAdvanced[0][1] == '9198' ? 'selected' : ''}>Management of Business</option>
<option value ="9395" ${subjectAdvanced[0][1] == '9395' ? 'selected' : ''}>Travel and Tourism</option>
<option value ="9396" ${subjectAdvanced[0][1] == '9396' ? 'selected' : ''}>Physical Education</option>
<option value ="9609 " ${subjectAdvanced[0][1] == '9609' ? 'selected' : ''}>Business</option>
<option value ="9195" ${subjectAdvanced[0][1] == '9195' ? 'selected' : ''}>Computing</option>
<option value ="9704" ${subjectAdvanced[0][1] == '9704' ? 'selected' : ''}>Art and Design</option>
<option value ="9705" ${subjectAdvanced[0][1] == '9705' ? 'selected' : ''}>Design and Technology</option>
<option value ="9158" ${subjectAdvanced[0][1] == '9158' ? 'selected' : ''}>Economics</option>
<option value ="9713" ${subjectAdvanced[0][1] == '9713' ? 'selected' : ''}>Applied ICT</option>
<option value ="9163" ${subjectAdvanced[0][1] == '9163' ? 'selected' : ''}>French</option>
<option value ="9707" ${subjectAdvanced[0][1] == '9707' ? 'selected' : ''}>Building Studies</option>
<option value ="CS" ${subjectAdvanced[0][1] == 'CS' ? 'selected' : ''}>Computing or Computer Studies</option>
<option value ="LS" ${subjectAdvanced[0][1] == 'LS' ? 'selected' : ''}>Legal Studies</option>
<option value ="PSY" ${subjectAdvanced[0][1] == 'PSY' ? 'selected' : ''}>Psychology</option>					
      
</select>
</td>
    <td>
<select class="form-control" name="examBodyAdvanced[]" value="">
                                                                           <option value="" >Select Examining Body</option>
<option value="ZIMSEC" ${[0][2] == 'ZIMSEC' ? 'selected' : ''}>ZIMSEC</option>
<option value="CAMBRIDGE" ${[0][2] == 'CAMBRIDGE' ? 'selected' : ''}>CAMBRIDGE</option>



</select>
</td>
    <td>
<select class="form-control" name="gradeAdvanced[]" value="">
                                                                           <option value="" >Please Select Grade</option>
<option value="A" ${[0][3] == 'A' ? 'selected' : ''}>A</option>
<option value="B" ${[0][3] == 'B' ? 'selected' : ''}>B</option>
<option value="C" ${[0][3] == 'C' ? 'selected' : ''}>C</option>
                                                   <option value="D" ${[0][3] == 'D' ? 'selected' : ''}>D</option>
<option value="E" ${[0][3] == 'E' ? 'selected' : ''}>E</option>
<option value="F" ${[0][3] == 'F' ? 'selected' : ''}>F</option>
<option value="U" ${[0][3] == 'U' ? 'selected' : ''}>O</option>


</select>
</td>
<td>
     <input type="date" class="form-control" placeholder="dd/mm/yyyy" name="dateAdvanced[]">
   </td>
    </tr>
    
    
    
    
    
    
    

    
    
    
   
    
</table>



<table>
    
    
<h3>Enter Ordinary Level Results </h3>
<td><INPUT type="button" value="Add Row"  onclick="addRow('dataTable2')" /></td>
<td><INPUT type="button" value="Delete Row" onclick="deleteRow('dataTable2')" /> </td>
<table id="dataTable2" class="table table-striped" style="border: 1px solid #dee2e6">
    
    <tr>
<td><INPUT type="checkbox" name="chk"/></td>
<td>
<select class="form-control" name="subjectUndergradOrdinary[]"  value="">
                                                                           <option value="">Select Subject</option>
<option value="GP" ${subjectOrdinary[0][1] == 'GP' ? 'selected' : ''}>General Paper </option>  
<option value="ACC" ${subjectOrdinary[0][1] == 'ACC' ? 'selected' : ''}>Accounting</option>
<option value="AGR" ${subjectOrdinary[0][1] == 'AGR' ? 'selected' : ''}>Agriculture</option>
<option value="AMAT" ${subjectOrdinary[0][1] == 'AMAT' ? 'selected' : ''}>Additional Mathematics</option>
<option value="ART" ${subjectOrdinary[0][1] == 'ART' ? 'selected' : ''}>Art</option>
<option value="BIO" ${subjectOrdinary[0][1] == 'BIO' ? 'selected' : ''}>Biology</option>
<option value="BK" ${subjectOrdinary[0][1] == 'BK' ? 'selected' : ''}>Bible Knowledge</option>
<option value="BS" ${subjectOrdinary[0][1] == 'BS' ? 'selected' : ''}>Building Studies</option>
<option value="BTG" ${subjectOrdinary[0][1] == 'BTG' ? 'selected' : ''}>BIOTECHNOLOGY & GENETICS</option>
<option value="BU" ${subjectOrdinary[0][1] == 'BU' ? 'selected' : ''}>Business Studies/Management</option>
<option value="CV" ${subjectOrdinary[0][1] == 'CV' ? 'selected' : ''}>Civic Education</option>
<option value="CD" ${subjectOrdinary[0][1] == 'CD' ? 'selected' : ''}>Child Development</option>
<option value="CH" ${subjectOrdinary[0][1] == 'CH' ? 'selected' : ''}>Chemistry</option>
<option value="CM" ${subjectOrdinary[0][1] == 'CM' ? 'selected' : ''}>Commerce</option>
<option value="CO" ${subjectOrdinary[0][1] == 'CO' ? 'selected' : ''}>Commercial Studies</option>
<option value="CRR" ${subjectOrdinary[0][1] == 'CRR' ? 'selected' : ''}>CHEMISTRY OF RENEWABLE RESOURCE</option>
<option value="CS" ${subjectOrdinary[0][1] == 'CS' ? 'selected' : ''}>Computing or Computer Studies</option>
<option value="D&T" ${subjectOrdinary[0][1] == 'D&T' ? 'selected' : ''}>D&T: PRODUCT DESIGN</option>
<option value="DT" ${subjectOrdinary[0][1] == 'DT' ? 'selected' : ''}>Design and Technology</option>
<option value="DV" ${subjectOrdinary[0][1] == 'DV' ? 'selected' : ''}>DEVELOPMENT STUDIES</option>
<option value="EC" ${subjectOrdinary[0][1] == 'EC' ? 'selected' : ''}>Economics</option>
<option value="EM" ${subjectOrdinary[0][1] == 'EM' ? 'selected' : ''}>Environmental Management</option>
<option value="EN" ${subjectOrdinary[0][1] == 'EN' ? 'selected' : ''}>English Lang</option>
<option value="ENT" ${subjectOrdinary[0][1] == 'ENT' ? 'selected' : ''}>Enterprise</option>
<option value="EX" ${subjectOrdinary[0][1] == 'EX' ? 'selected' : ''}>Extended Science</option>
<option value="FF" ${subjectOrdinary[0][1] == 'FF' ? 'selected' : ''}>Fashion and Fabrics</option>
<option value="FM" ${subjectOrdinary[0][1] == 'FM' ? 'selected' : ''}>Further Mathematics</option>
<option value="FN" ${subjectOrdinary[0][1] == 'FN' ? 'selected' : ''}>Food and Nutrition</option>
<option value="FR" ${subjectOrdinary[0][1] == 'FR' ? 'selected' : ''}>French</option>
<option value="FSC" ${subjectOrdinary[0][1] == 'FSC' ? 'selected' : ''}>FORENSIC SCIENCE</option>
<option value="GE" ${subjectOrdinary[0][1] == 'GE' ? 'selected' : ''}>Geography</option>
<option value="GER" ${subjectOrdinary[0][1] == 'GER' ? 'selected' : ''}>GERMAN</option>
<option value="HB" ${subjectOrdinary[0][1] == 'HB' ? 'selected' : ''}>Human and Social Biology</option>
<option value="HOM" ${subjectOrdinary[0][1] == 'HOM' ? 'selected' : ''}>Home Management</option>
<option value="HS" ${subjectOrdinary[0][1] == 'HS' ? 'selected' : ''}>History</option>
<option value="IC" ${subjectOrdinary[0][1] == 'IC' ? 'selected' : ''}>Information and Communication</option>
<option value="IS" ${subjectOrdinary[0][1] == 'IS' ? 'selected' : ''}>Integrated Science</option>
<option value="IT" ${subjectOrdinary[0][1] == 'IT' ? 'selected' : ''}>Information Technology</option>
<option value="KW" ${subjectOrdinary[0][1] == 'KW' ? 'selected' : ''}>Kiswahili</option>
<option value="LA" ${subjectOrdinary[0][1] == 'LA' ? 'selected' : ''}>Latin</option>
<option value="LO" ${subjectOrdinary[0][1] == 'LO' ? 'selected' : ''}>Life Orientation</option>
<option value="LS" ${subjectOrdinary[0][1] == 'LS' ? 'selected' : ''}>Life Science</option>
<option value="LT" ${subjectOrdinary[0][1] == 'LT' ? 'selected' : ''}>Literature in English</option>
<option value="ME" ${subjectOrdinary[0][1] == 'ME' ? 'selected' : ''}>MORAL EDUCATION</option>
<option value="MT" ${subjectOrdinary[0][1] == 'MT' ? 'selected' : ''}>Mathematics</option>
<option value="MU" ${subjectOrdinary[0][1] == 'MU' ? 'selected' : ''}>Music</option>
<option value="MW" ${subjectOrdinary[0][1] == 'MW' ? 'selected' : ''}>Metal Work</option>
<option value="ND" ${subjectOrdinary[0][1] == 'ND' ? 'selected' : ''}>Ndebele/Zulu</option>
<option value="PC" ${subjectOrdinary[0][1] == 'PC' ? 'selected' : ''}>Physics with Chemistry</option>
<option value="PE" ${subjectOrdinary[0][1] == 'PE' ? 'selected' : ''}>Physical EDucation</option>
<option value="PH" ${subjectOrdinary[0][1] == 'PH' ? 'selected' : ''}>Physics</option>
<option value="PO" ${subjectOrdinary[0][1] == 'PO' ? 'selected' : ''}>Portuguese</option>
<option value="PS" ${subjectOrdinary[0][1] == 'PS' ? 'selected' : ''}>Physical Science</option>
<option value="RS" ${subjectOrdinary[0][1] == 'RS' ? 'selected' : ''}>Religious Studies</option>
<option value="SC" ${subjectOrdinary[0][1] == 'SC' ? 'selected' : ''}>Science</option>
<option value="SH" ${subjectOrdinary[0][1] == 'SH' ? 'selected' : ''}>Shona</option>
<option value="SO" ${subjectOrdinary[0][1] == 'SO' ? 'selected' : ''}>Sociology</option>
<option value="SPA" ${subjectOrdinary[0][1] == 'SPA' ? 'selected' : ''}>Spanish</option>
<option value="SPC" ${subjectOrdinary[0][1] == 'SPC' ? 'selected' : ''}>Science (Physics, Chemistry)</option>
<option value="SS" ${subjectOrdinary[0][1] == 'SS' ? 'selected' : ''}>Social Studies</option>
<option value="ST" ${subjectOrdinary[0][1] == 'ST' ? 'selected' : ''}>Statistics</option>
<option value="SET" ${subjectOrdinary[0][1] == 'SET' ? 'selected' : ''}>Setswana</option>
<option value="TD" ${subjectOrdinary[0][1] == 'TD' ? 'selected' : ''}>Technical Drawing</option>
<option value="TG" ${subjectOrdinary[0][1] == 'TG' ? 'selected' : ''}>Technical Graphics</option>
<option value="TT" ${subjectOrdinary[0][1] == 'TT' ? 'selected' : ''}>Travel and Tourism</option>
<option value="TX" ${subjectOrdinary[0][1] == 'TX' ? 'selected' : ''}>Textile and Clothing Design</option>
<option value="WW" ${subjectOrdinary[0][1] == 'WW' ? 'selected' : ''}>Woodwork</option>

</select>
</td>
    <td>
<select class="form-control" name="examBodyOrdinary[]" value="">
                                                                           <option value="" >Select Examining Body</option>
<option value="ZIMSEC" ${[0][2] == 'ZIMSEC' ? 'selected' : ''}>ZIMSEC</option>
<option value="CAMBRIDGE" ${[0][2] == 'CAMBRIDGE' ? 'selected' : ''}>CAMBRIDGE</option>



</select>
</td>
    <td>
<select class="form-control" name="gradeOrdinary[]" value="">
                                                                           <option value="" >Please Select Grade</option>
<option value="A" ${[0][3] == 'A' ? 'selected' : ''}>A</option>
<option value="B" ${[0][3] == 'B' ? 'selected' : ''}>B</option>
<option value="C" ${[0][3] == 'C' ? 'selected' : ''}>C</option>
                                                   <option value="D" ${[0][3] == 'D' ? 'selected' : ''}>D</option>
<option value="E" ${[0][3] == 'E' ? 'selected' : ''}>E</option>
<option value="F" ${[0][3] == 'F' ? 'selected' : ''}>F</option>
<option value="U" ${[0][3] == 'U' ? 'selected' : ''}>O</option>


</select>
</td>
<td>
     <input type="date" class="form-control" placeholder="dd/mm/yyyy" name="dateOrdinary[]">
   </td>
    </tr>
    
    
    
    
</table>

   <center style="color:red;">
                                        <%
                                            if (request.getParameter("message") == null) {
                                                out.println("Remember to click the submit button when done capturing Applicant Qualifications Details");
                                            } else {
                                                out.println(request. getParameter("message")+"</b>");
                                            }
                                        %>
                                    </center>
<tr>
   <td><input class="btn btn-secondary dropdown-toggle" type="submit" id="dropdownMenuButton"></td>  
</tr>
                                    
                   
                
</form>
    </div></div></div>
                                <!--Start of O Level Results Form-->
                                <!--Start of O Level Results Form
                                  <div class="card col-lg-12" style="float: left">
                            <div class="card-body">
                                <div class="table-responsive ">
                                  <hr>  
                                  <h3>Enter Ordinary Level Results </h3>
                              <form name="search_input"  action="${pageContext.request.contextPath}/addQua">
                                   
                                   <INPUT type="button" value="Add Row" onclick="addRow('dataTable2')" />

<INPUT type="button" value="Delete Row" onclick="deleteRow('dataTable2')" />
<table id="dataTable2" class="table table-striped" style="border: 1px solid #dee2e6">
    
    <tr>
<td><INPUT type="checkbox" name="chk"/></td>
<td>
<select class="form-control" name="subjectUndergradOrdinary[]"  value="">
                                                                           <option value="">Select Subject</option>
<option value="ACC" ${subjectOrdinary[0][1] == 'ACC' ? 'selected' : ''}>Accounting</option>
<option value="AGR" ${subjectOrdinary[0][1] == 'AGR' ? 'selected' : ''}>Agriculture</option>
<option value="AMAT" ${subjectOrdinary[0][1] == 'AMAT' ? 'selected' : ''}>Additional Mathematics</option>
<option value="ART" ${subjectOrdinary[0][1] == 'ART' ? 'selected' : ''}>Art</option>



</select>
</td>
    <td>
<select class="form-control" name="examBodyOrdinary[]" value="">
                                                                           <option value="" >Select Examining Body</option>
<option value="ZIMSEC" ${[0][2] == 'ZIMSEC' ? 'selected' : ''}>ZIMSEC</option>
<option value="CAMBRIDGE" ${[0][2] == 'CAMBRIDGE' ? 'selected' : ''}>CAMBRIDGE</option>



</select>
</td>
    <td>
<select class="form-control" name="gradeOrdinary[]" value="">
                                                                           <option value="" >Please Select Grade</option>
<option value="A" ${[0][3] == 'A' ? 'selected' : ''}>A</option>
<option value="B" ${[0][3] == 'B' ? 'selected' : ''}>B</option>
<option value="C" ${[0][3] == 'C' ? 'selected' : ''}>C</option>
                                                   <option value="D" ${[0][3] == 'D' ? 'selected' : ''}>D</option>
<option value="E" ${[0][3] == 'E' ? 'selected' : ''}>E</option>
<option value="F" ${[0][3] == 'F' ? 'selected' : ''}>F</option>
<option value="U" ${[0][3] == 'U' ? 'selected' : ''}>O</option>


</select>
</td>
<td>
     <input type="date" class="form-control" placeholder="dd/mm/yyyy" name="dateOrdinary[]">
   </td>
    </tr>
    
    
   
    
</table>

 <tr>
                                    
                    <td><input class="btn btn-secondary dropdown-toggle" type="submit" id="dropdownMenuButton"></td>
                </tr>
</form>
    </div></div></div>
                                <!--End of O Level Results Form-->
                                
                                
                                
                                 
                                 </div>

                               <button class="accordion ">Education</button>
                 <div class="col-lg-12" style="display: none">   
              <tbody>
                  <form name="search_input"  action="${pageContext.request.contextPath}/addSpecialEducation">
<input type="hidden"  name ="applicantNumber" value="<%=request.getAttribute("appNo")%>"></input>
                      <hr>  
<h3>PROGRAMME OF STUDY </h3>                                   
<INPUT type="button" value="Add Row" onclick="addRow('dataTable3')" />
<INPUT type="button" value="Delete Row" onclick="deleteRow('dataTable3')" />
<table id="dataTable3" class="table table-striped" style="border: 1px solid #dee2e6">
   
   <tr>
<td><INPUT type="checkbox" name="chk"/></td>
   
   <td><input type="text" class="form-control" name="institution" value="" placeholder="Awarding Institution" ></td>
   
   
     <td><input type="text" class="form-control" name="degreeClass" value="" placeholder="Degree Class" ></td>
   
   
<td> <input type="text"  class="form-control" name="programmeStudied"  value="" placeholder="Programme Studied"></td>




<td><input type="date" class="form-control" placeholder="dd/mm/yyyy" name="yearAwarded"></td>
  <td>
 <select class="form-control" name="startyear" required data-parsley-errors-container="#error-step15" >
<option value="" enabled selected>Year Started</option>
<option value="2017" ${startyear == '2017' ? 'selected' : ''}>2017</option>
<option value="2016" ${startyear == '2016' ? 'selected' : ''}>2016</option>
<option value="2015" ${startyear == '2015' ? 'selected' : ''}>2015</option>
<option value="2014" ${startyear == '2014' ? 'selected' : ''}>2014</option>
<option value="2013" ${startyear == '2013' ? 'selected' : ''}>2013</option>
<option value="2012" ${startyear == '2012' ? 'selected' : ''}>2012</option>
<option value="2011" ${startyear == '2011' ? 'selected' : ''}>2011</option>
<option value="2010" ${startyear == '2010' ? 'selected' : ''}>2010</option>
<option value="2009" ${startyear == '2009' ? 'selected' : ''}>2009</option>
<option value="2008" ${startyear == '2008' ? 'selected' : ''}>2008</option>
<option value="2007" ${startyear == '2007' ? 'selected' : ''}>2007</option>
<option value="2006" ${startyear == '2006' ? 'selected' : ''}>2006</option>

 </select>
</td>
<td>
<select class="form-control" name="endyear" required data-parsley-errors-container="#error-step15" >
<option value="" enabled selected> Year ended</option>
<option value="2017" ${endyear == '2017' ? 'selected' : ''}>2017</option>
<option value="2016" ${endyear == '2016' ? 'selected' : ''}>2016</option>
<option value="2015" ${endyear == '2015' ? 'selected' : ''}>2015</option>
<option value="2014" ${endyear == '2014' ? 'selected' : ''}>2014</option>
<option value="2013" ${endyear == '2013' ? 'selected' : ''}>2013</option>
<option value="2012" ${endyear == '2012' ? 'selected' : ''}>2012</option>
<option value="2011" ${endyear == '2011' ? 'selected' : ''}>2011</option>
<option value="2010" ${endyear == '2010' ? 'selected' : ''}>2010</option>
<option value="2009" ${endyear == '2009' ? 'selected' : ''}>2009</option>
<option value="2008" ${endyear == '2008' ? 'selected' : ''}>2008</option>
<option value="2007" ${endyear == '2007' ? 'selected' : ''}>2007</option>
<option value="2006" ${endyear == '2006' ? 'selected' : ''}>2006</option>
<option value="2005" ${endyear == '2005' ? 'selected' : ''}>2005</option>
<option value="2004" ${endyear == '2004' ? 'selected' : ''}>2004</option>
<option value="2003" ${endyear == '2003' ? 'selected' : ''}>2003</option>
<option value="2002" ${endyear == '2002' ? 'selected' : ''}>2002</option>
<option value="2001" ${endyear == '2001' ? 'selected' : ''}>2001</option>
<option value="2000" ${endyear == '2000' ? 'selected' : ''}>2000</option>


 </select>

</td>
   </tr>


   
   
   
   
   
   
   
 
   
</table>


   <center style="color:red;">
                                        <%
                                            if (request.getParameter("message") == null) {
                                                out.println("Remember to click the submit button when done capturing Applicant Education Details");
                                            } else {
                                                out.println(request. getParameter("message")+"</b>");
                                            }
                                        %>
                                    </center>

  

<tr>
  <td><input class="btn btn-secondary dropdown-toggle" type="submit" id="dropdownMenuButton"></td>  
</tr>
                                   
                  
</hr>          
</form>   
              </tbody>
                    
                
                          
                   
                   

                </div>

                                <button class="accordion ">Applicant Employment Details ::..<c:out value="${appNo}"/></button>
                 <div class="col-lg-12" style="display: none">   
              
                        <div class="card col-lg-12" style="float: left">
                            <div class="card-body">
                                <div class="table-responsive ">
                                    <table class="table table-striped" style="border: 1px solid #dee2e6">
                                        
                                        
                                        
                                        
                                        
                                     
                                        
    <tbody>
                                           
    <form name="search_input"  action="${pageContext.request.contextPath}/addSpecialEmployment">
                                   <input type="hidden"  name ="applicantNumber" value="<%=request.getAttribute("appNo")%>"></input> 
        <table>
                                        
                                       <div class="card col-lg-12" style="float: left">
                            <div class="card-body">
                                <div class="table-responsive ">
                                    <table class="table table-striped" style="border: 1px solid #dee2e6">  
                                        
        <tr>
         
<INPUT type="button" value="Add Row" onclick="addRow('dataTable4')" />
<INPUT type="button" value="Delete Row" onclick="deleteRow('dataTable4')" />           
 <table id="dataTable4" class="table table-striped" style="border: 1px solid #dee2e6">           
<td><INPUT type="checkbox" name="chk"/></td>
<td>
<input type="text" placeholder="Employer" class="form-control" style="padding-left: 25px;"  name="employer"/>
 
</td>
    <td>
<input type="text" placeholder="Occupation Details" class="form-control" style="padding-left: 25px;"  name="details"/>
                                             
</td>
  
<td>
<input type="date" placeholder="Start Date" class="form-control" style="padding-left: 25px;"  name="started"/>                                             
</td>


<td>
<input type="date" placeholder="End Date" class="form-control" style="padding-left: 25px;"  name="ended"/>
                                             
</td>





   
    </table>
   </tr>
      <center style="color:red;">
                                        <%
                                            if (request.getParameter("message") == null) {
                                                out.println("Remember to click the submit button when done capturing Applicant Employment Details");
                                            } else {
                                                out.println(request. getParameter("message")+"</b>");
                                            }
                                        %>
                                    </center>
<td>      
    <input class="btn btn-secondary dropdown-toggle" type="submit" id="dropdownMenuButton">
</td>




 

       
         
                                   
                  
                   
    </tr>
                                    </table>
                             </div>
                     </div>
                </div>
                                        
                                    </table>                             
    </form>
    </tbody>
                                   
</table>
                                </div>
                                   
                                <button class="accordion ">Applicant Choice Details ::..<c:out value="${appNo}"/></button>
                 <div class="col-lg-12" style="display: none">   
                     
              
                        <div class="card col-lg-12" style="float: left">
                            <div class="card-body">
                                <div class="table-responsive ">
                                    <table class="table table-striped" style="border: 1px solid #dee2e6">
                                         
                                        
        
        
    </div>
        
        
        
         <form name="search_input"  action="${pageContext.request.contextPath}/addSpecialChoice">
             <input type="hidden"  name ="applicantNumber" value="<%=request.getAttribute("appNo")%>"></input>
                                    <div class="dropdown pull-right m-r-10 hidden-sm-down">
                                    </div>
                                    <div class="row">
                                     <div class="col-md-4">  
                                                                                            
							
                                                                                              
                                                                                                <div class="widget">
								<div class="widget-header">
									<h3><i class="fa fa-edit"></i>CONVENTIONAL PROGRAMMES CHOICES </h3></div>
								<div class="widget-content">
                                                                    
									<h4>REMEMBER YOUR CHOICES MATTER</h4>
									<div class="form-group has-success has-feedback">
										<label class="control-label" for="inputSuccess2">First Choice (Conventional Programmes) </label>
                                                                                <input type="hidden" name="choice_num" value="1"></input>
										<select class="form-control" name="conv" value="">
                                                                            <option value="" >Click for First Choice</option>
													<option value="BAR" ${conventional[0][1] == 'BAR' ? 'selected' : ''}>Bachelor of Architectural Studies Honours Degree</option>	
<option value="BPE" ${conventional[0][1] == 'BPE' ? 'selected' : ''}>Bachelor of Science Honours Degree in Property Development and Estate Management</option>	
<option value="BQS" ${conventional[0][1] == 'BQS' ? 'selected' : ''}>Bachelor of Quantity Surveying Honours Degree</option>	
<option value="CAC" ${conventional[0][1] == 'CAC' ? 'selected' : ''}>Bachelor of Commerce Honours Degree in Accounting</option>	
<option value="CBA" ${conventional[0][1] == 'CBA' ? 'selected' : ''}>Bachelor of Commerce Honours Degree in Banking</option>	
<option value="CBA-BIM" ${conventional[0][1] == 'CBA-BIM' ? 'selected' : ''}>Bachelor of Commerce Honours Degree in Banking and Investment Management</option>	
<option value="CBU-MGTB" ${conventional[0][1] == 'CBU-MGTB' ? 'selected' : ''}>Bachelor of Commerce Honours Degree in Management</option>	
<option value="CBU-MKT" ${conventional[0][1] == 'CBU-MKT' ? 'selected' : ''}>Bachelor of Commerce Honours Degree in Marketing</option>	
<option value="CFI" ${conventional[0][1] == 'CFI' ? 'selected' : ''}>Bachelor of Commerce Honours Degree in Finance</option>	
<option value="CFS" ${conventional[0][1] == 'CFS' ? 'selected' : ''}>Bachelor of Commerce Honours Degree in Fiscal Studies</option>	
<option value="CIN-ACT" ${conventional[0][1] == 'CIN-ACT' ? 'selected' : ''}>Bachelor of Commerce Honours Degree in Actuarial Science</option>	
<option value="CIN-RSK" ${conventional[0][1] == 'CIN-RSK' ? 'selected' : ''}>Bachelor of Commerce Honours Degree in Risk Management and Insurance</option>	
<option value="EFW" ${conventional[0][1] == 'EFW' ? 'selected' : ''}>Bachelor of Science Honours Degree in Forest Resources and Wildlife Management</option>	
<option value="IJM" ${conventional[0][1] == 'IJM' ? 'selected' : ''}>Bachelor of Science Honours Degree in Journalism and Media Studies</option>	
<option value="ILI" ${conventional[0][1] == 'ILI' ? 'selected' : ''}>Bachelor of Science Honours in Library and Information Science</option>
<option value="IMPAE" ${conventional[0][1] == 'IMPAE' ? 'selected' : ''}>Industrial, Mechanical,Production and Automotive Engineering</option>
<option value="IPU" ${conventional[0][1] == 'IPU' ? 'selected' : ''}>Bachelor of Science Honours Degree in Publishing</option>
<option value="IRA" ${conventional[0][1] == 'IRA' ? 'selected' : ''}>Bachelor of Science Honours Degree in Records and Archives Management</option>
<option value="MBBS" ${conventional[0][1] == 'MBBS' ? 'selected' : ''}>Bachelor of Medicine and Bachelor of Surgery Degree</option>
<option value="SBB" ${conventional[0][1] == 'SBB' ? 'selected' : ''}>Bachelor of Science Honours Degree in Applied Biology and Biochemistry</option>
<option value="SCH" ${conventional[0][1] == 'SCH' ? 'selected' : ''}>Bachelor of Science Honours Degree in Applied Chemistry</option>
<option value="SCI" ${conventional[0][1] == 'SCI' ? 'selected' : ''}>Bachelor of Science Honours Degree in Informatics</option>
<option value="SCS" ${conventional[0][1] == 'SCS' ? 'selected' : ''}>Bachelor of Science Honours Degree in Computer Science</option>
<option value="SORS" ${conventional[0][1] == 'SORS' ? 'selected' : ''}>Bachelor of Science Honours Degree  in Operations Research and Statistics</option>
<option value="SPH" ${conventional[0][1] == 'SPH' ? 'selected' : ''}>Bachelor of Science Honours Degree in Applied Physics</option>
<option value="SRA" ${conventional[0][1] == 'SRA' ? 'selected' : ''}>Bachelor of Science Honours Degree in Radiography</option>
<option value="SSC" ${conventional[0][1] == 'SSC' ? 'selected' : ''}>Bachelor of Science Honours Degree in Sports Science and Coaching</option>
<option value="TCE" ${conventional[0][1] == 'TCE' ? 'selected' : ''}>Bachelor of Engineering Honours Degree in Chemical Engineering</option>
<option value="TCW" ${conventional[0][1] == 'TCW' ? 'selected' : ''}>Bachelor of Engineering Honours Degree in Civil and Water Engineering</option>
<option value="TEE" ${conventional[0][1] == 'TEE' ? 'selected' : ''}>Bachelor of Engineering Honours Degree in Electronic Engineering</option>
<option value="TFE" ${conventional[0][1] == 'TFE' ? 'selected' : ''}>Bachelor of Engineering Honours Degree in Fibre and Polymer Materials Engineering</option>
<option value="TIE" ${conventional[0][1] == 'TIE' ? 'selected' : ''}>Bachelor of Engineering Honours Degree in Industrial and Manufacturing Engineering</option>
<!--<option value="TXT" ${conventional[0][1] == 'TXT' ? 'selected' : ''}>Bachelor of Textile Technology Honours Degree</option>-->
<option value="ESH" ${conventional[0][1] == 'ESH' ? 'selected' : ''}>Bachelor of Science Honours Degree in Environmental Science and Health</option>
<option value="SMA" ${conventional[0][1] == 'SMA' ? 'selected' : ''}>Bachelor of Science Honours Degree in Applied Mathematics</option>

											</select>
										<span class="fa fa-check form-control-feedback" aria-hidden="true"></span>
										<span id="inputSuccess2Status" class="sr-only">(success)</span>
									</div>
                                                                        <div class="form-group has-success has-feedback">
										<label class="control-label" for="inputSuccess2">Second Choice (Conventional Programmes)</label>
										<input type="hidden" name="choice_num" value="2"></input>
                                                                                <select class="form-control" name="conv" value="">
                                                                            <option value="" >Click To Select 2nd Choice</option>
												<option value="BAR" ${conventional[1][1] == 'BAR' ? 'selected' : ''}>Bachelor of Architectural Studies Honours Degree</option>	
<option value="BPE" ${conventional[1][1] == 'BPE' ? 'selected' : ''}>Bachelor of Science Honours Degree in Property Development and Estate Management</option>	
<option value="BQS" ${conventional[1][1] == 'BQS' ? 'selected' : ''}>Bachelor of Quantity Surveying Honours Degree</option>	
<option value="CAC" ${conventional[1][1] == 'CAC' ? 'selected' : ''}>Bachelor of Commerce Honours Degree in Accounting</option>	
<option value="CBA" ${conventional[1][1] == 'CBA' ? 'selected' : ''}>Bachelor of Commerce Honours Degree in Banking</option>	
<option value="CBA-BIM" ${conventional[1][1] == 'CBA-BIM' ? 'selected' : ''}>Bachelor of Commerce Honours Degree in Banking and Investment Management</option>	
<option value="CBU-MGTB" ${conventional[1][1] == 'CBU-MGTB' ? 'selected' : ''}>Bachelor of Commerce Honours Degree in Management</option>	
<option value="CBU-MKT" ${conventional[1][1] == 'CBU-MKT' ? 'selected' : ''}>Bachelor of Commerce Honours Degree in Marketing</option>	
<option value="CFI" ${conventional[1][1] == 'CFI' ? 'selected' : ''}>Bachelor of Commerce Honours Degree in Finance</option>	
<option value="CFS" ${conventional[1][1] == 'CFS' ? 'selected' : ''}>Bachelor of Commerce Honours Degree in Fiscal Studies</option>	
<option value="CIN-ACT" ${conventional[1][1] == 'CIN-ACT' ? 'selected' : ''}>Bachelor of Commerce Honours Degree in Actuarial Science</option>	
<option value="CIN-RSK" ${conventional[1][1] == 'CIN-RSK' ? 'selected' : ''}>Bachelor of Commerce Honours Degree in Risk Management and Insurance</option>	
<option value="EFW" ${conventional[1][1] == 'EFW' ? 'selected' : ''}>Bachelor of Science Honours Degree in Forest Resources and Wildlife Management</option>	
<option value="IJM" ${conventional[1][1] == 'IJM' ? 'selected' : ''}>Bachelor of Science Honours Degree in Journalism and Media Studies</option>	
<option value="ILI" ${conventional[1][1] == 'ILI' ? 'selected' : ''}>Bachelor of Science Honours in Library and Information Science</option>
<option value="IMPAE" ${conventional[1][1] == 'IMPAE' ? 'selected' : ''}>Industrial, Mechanical,Production and Automotive Engineering</option>
<option value="IPU" ${conventional[1][1] == 'IPU' ? 'selected' : ''}>Bachelor of Science Honours Degree in Publishing</option>
<option value="IRA" ${conventional[1][1] == 'IRA' ? 'selected' : ''}>Bachelor of Science Honours Degree in Records and Archives Management</option>
<option value="MBBS" ${conventional[1][1] == 'MBBS' ? 'selected' : ''}>Bachelor of Medicine and Bachelor of Surgery Degree</option>
<option value="SBB" ${conventional[1][1] == 'SBB' ? 'selected' : ''}>Bachelor of Science Honours Degree in Applied Biology and Biochemistry</option>
<option value="SCH" ${conventional[1][1] == 'SCH' ? 'selected' : ''}>Bachelor of Science Honours Degree in Applied Chemistry</option>
<option value="SCI" ${conventional[1][1] == 'SCI' ? 'selected' : ''}>Bachelor of Science Honours Degree in Informatics</option>
<option value="SCS" ${conventional[1][1] == 'SCS' ? 'selected' : ''}>Bachelor of Science Honours Degree in Computer Science</option>
<option value="SORS" ${conventional[1][1] == 'SORS' ? 'selected' : ''}>Bachelor of Science Honours Degree  in Operations Research and Statistics</option>
<option value="SPH" ${conventional[1][1] == 'SPH' ? 'selected' : ''}>Bachelor of Science Honours Degree in Applied Physics</option>
<option value="SRA" ${conventional[1][1] == 'SRA' ? 'selected' : ''}>Bachelor of Science Honours Degree in Radiography</option>
<option value="SSC" ${conventional[1][1] == 'SSC' ? 'selected' : ''}>Bachelor of Science Honours Degree in Sports Science and Coaching</option>
<option value="TCE" ${conventional[1][1] == 'TCE' ? 'selected' : ''}>Bachelor of Engineering Honours Degree in Chemical Engineering</option>
<option value="TCW" ${conventional[1][1] == 'TCW' ? 'selected' : ''}>Bachelor of Engineering Honours Degree in Civil and Water Engineering</option>
<option value="TEE" ${conventional[1][1] == 'TEE' ? 'selected' : ''}>Bachelor of Engineering Honours Degree in Electronic Engineering</option>
<option value="TFE" ${conventional[1][1] == 'TFE' ? 'selected' : ''}>Bachelor of Engineering Honours Degree in Fibre and Polymer Materials Engineering</option>|
<option value="TIE" ${conventional[1][1] == 'TIE' ? 'selected' : ''}>Bachelor of Engineering Honours Degree in Industrial and Manufacturing Engineering</option>
<option value="TIE" ${conventional[1][1] == 'TIE' ? 'selected' : ''}>Bachelor of Engineering Honours Degree in Industrial and Manufacturing Engineering</option>
<option value="ESH" ${conventional[1][1] == 'ESH' ? 'selected' : ''}>Bachelor of Science Honours Degree in Environmental Science and Health</option>
<option value="SMA" ${conventional[1][1] == 'SMA' ? 'selected' : ''}>Bachelor of Science Honours Degree in Applied Mathematics</option>											
                                                                                </select>
										<span class="fa fa-check form-control-feedback" aria-hidden="true"></span>
										<span id="inputSuccess2Status" class="sr-only">(success)</span>
									</div>
                                                                        <div class="form-group has-success has-feedback">
										<label class="control-label" for="inputSuccess2">Third Choice (Conventional Programmes)</label>
										<input type="hidden" name="choice_num" value="3"></input>
                                                                                <select class="form-control" name="conv" value="">
                                                                            <option value="" >Click To Select 3rd Choice</option>
													<option value="BAR" ${conventional[0][1] == 'BAR' ? 'selected' : ''}>Bachelor of Architectural Studies Honours Degree</option>	
<option value="BPE" ${conventional[2][1] == 'BPE' ? 'selected' : ''}>Bachelor of Science Honours Degree in Property Development and Estate Management</option>	
<option value="BQS" ${conventional[2][1] == 'BQS' ? 'selected' : ''}>Bachelor of Quantity Surveying Honours Degree</option>	
<option value="CAC" ${conventional[2][1] == 'CAC' ? 'selected' : ''}>Bachelor of Commerce Honours Degree in Accounting</option>	
<option value="CBA" ${conventional[2][1] == 'CBA' ? 'selected' : ''}>Bachelor of Commerce Honours Degree in Banking</option>	
<option value="CBA-BIM" ${conventional[2][1] == 'CBA-BIM' ? 'selected' : ''}>Bachelor of Commerce Honours Degree in Banking and Investment Management</option>	
<option value="CBU-MGTB" ${conventional[2][1] == 'CBU-MGTB' ? 'selected' : ''}>Bachelor of Commerce Honours Degree in Management</option>	
<option value="CBU-MKT" ${conventional[2][1] == 'CBU-MKT' ? 'selected' : ''}>Bachelor of Commerce Honours Degree in Marketing</option>	
<option value="CFI" ${conventional[2][1] == 'CFI' ? 'selected' : ''}>Bachelor of Commerce Honours Degree in Finance</option>	
<option value="CFS" ${conventional[2][1] == 'CFS' ? 'selected' : ''}>Bachelor of Commerce Honours Degree in Fiscal Studies</option>	
<option value="CIN-ACT" ${conventional[2][1] == 'CIN-ACT' ? 'selected' : ''}>Bachelor of Commerce Honours Degree in Actuarial Science</option>	
<option value="CIN-RSK" ${conventional[2][1] == 'CIN-RSK' ? 'selected' : ''}>Bachelor of Commerce Honours Degree in Risk Management and Insurance</option>	
<option value="EFW" ${conventional[2][1] == 'EFW' ? 'selected' : ''}>Bachelor of Science Honours Degree in Forest Resources and Wildlife Management</option>	
<option value="IJM" ${conventional[2][1] == 'IJM' ? 'selected' : ''}>Bachelor of Science Honours Degree in Journalism and Media Studies</option>	
<option value="ILI" ${conventional[2][1] == 'ILI' ? 'selected' : ''}>Bachelor of Science Honours in Library and Information Science</option>
<option value="IMPAE" ${conventional[2][1] == 'IMPAE' ? 'selected' : ''}>Industrial, Mechanical,Production and Automotive Engineering</option>
<option value="IPU" ${conventional[2][1] == 'IPU' ? 'selected' : ''}>Bachelor of Science Honours Degree in Publishing</option>
<option value="IRA" ${conventional[2][1] == 'IRA' ? 'selected' : ''}>Bachelor of Science Honours Degree in Records and Archives Management</option>
<option value="MBBS" ${conventional[2][1] == 'MBBS' ? 'selected' : ''}>Bachelor of Medicine and Bachelor of Surgery Degree</option>
<option value="SBB" ${conventional[2][1] == 'SBB' ? 'selected' : ''}>Bachelor of Science Honours Degree in Applied Biology and Biochemistry</option>
<option value="SCH" ${conventional[2][1] == 'SCH' ? 'selected' : ''}>Bachelor of Science Honours Degree in Applied Chemistry</option>
<option value="SCI" ${conventional[2][1] == 'SCI' ? 'selected' : ''}>Bachelor of Science Honours Degree in Informatics</option>
<option value="SCS" ${conventional[2][1] == 'SCS' ? 'selected' : ''}>Bachelor of Science Honours Degree in Computer Science</option>
<option value="SORS" ${conventional[2][1] == 'SORS' ? 'selected' : ''}>Bachelor of Science Honours Degree  in Operations Research and Statistics</option>
<option value="SPH" ${conventional[2][1] == 'SPH' ? 'selected' : ''}>Bachelor of Science Honours Degree in Applied Physics</option>
<option value="SRA" ${conventional[2][1] == 'SRA' ? 'selected' : ''}>Bachelor of Science Honours Degree in Radiography</option>
<option value="SSC" ${conventional[2][1] == 'SSC' ? 'selected' : ''}>Bachelor of Science Honours Degree in Sports Science and Coaching</option>
<option value="TCE" ${conventional[2][1] == 'TCE' ? 'selected' : ''}>Bachelor of Engineering Honours Degree in Chemical Engineering</option>
<option value="TCW" ${conventional[2][1] == 'TCW' ? 'selected' : ''}>Bachelor of Engineering Honours Degree in Civil and Water Engineering</option>
<option value="TEE" ${conventional[2][1] == 'TEE' ? 'selected' : ''}>Bachelor of Engineering Honours Degree in Electronic Engineering</option>
<option value="TFE" ${conventional[2][1] == 'TFE' ? 'selected' : ''}>Bachelor of Engineering Honours Degree in Fibre and Polymer Materials Engineering</option>|
<option value="TIE" ${conventional[2][1] == 'TIE' ? 'selected' : ''}>Bachelor of Engineering Honours Degree in Industrial and Manufacturing Engineering</option>
<option value="ESH" ${conventional[2][1] == 'ESH' ? 'selected' : ''}>Bachelor of Science Honours Degree in Environmental Science and Health</option>
<option value="SMA" ${conventional[2][1] == 'SMA' ? 'selected' : ''}>Bachelor of Science Honours Degree in Applied Mathematics</option>
											</select>
										<span class="fa fa-check form-control-feedback" aria-hidden="true"></span>
										<span id="inputSuccess2Status" class="sr-only">(success)</span>
									</div>
                                                                        <div class="form-group has-success has-feedback">
										<label class="control-label" for="inputSuccess2">Fourth Choice (Conventional Programmes)</label>
										<input type="hidden" name="choice_num" value="4"></input>
                                                                                <select class="form-control" name="conv" value="">
                                                                            <option value="">Click To Select 4th Choice</option>
													<option value="BAR" ${conventional[0][1] == 'BAR' ? 'selected' : ''}>Bachelor of Architectural Studies Honours Degree</option>	
<option value="BPE" ${conventional[3][1] == 'BPE' ? 'selected' : ''}>Bachelor of Science Honours Degree in Property Development and Estate Management</option>	
<option value="BQS" ${conventional[3][1] == 'BQS' ? 'selected' : ''}>Bachelor of Quantity Surveying Honours Degree</option>	
<option value="CAC" ${conventional[3][1] == 'CAC' ? 'selected' : ''}>Bachelor of Commerce Honours Degree in Accounting</option>	
<option value="CBA" ${conventional[3][1] == 'CBA' ? 'selected' : ''}>Bachelor of Commerce Honours Degree in Banking</option>	
<option value="CBA-BIM" ${conventional[3][1] == 'CBA-BIM' ? 'selected' : ''}>Bachelor of Commerce Honours Degree in Banking and Investment Management</option>	
<option value="CBU-MGTB" ${conventional[3][1] == 'CBU-MGTB' ? 'selected' : ''}>Bachelor of Commerce Honours Degree in Management</option>	
<option value="CBU-MKT" ${conventional[3][1] == 'CBU-MKT' ? 'selected' : ''}>Bachelor of Commerce Honours Degree in Marketing</option>	
<option value="CFI" ${conventional[3][1] == 'CFI' ? 'selected' : ''}>Bachelor of Commerce Honours Degree in Finance</option>	
<option value="CFS" ${conventional[3][1] == 'CFS' ? 'selected' : ''}>Bachelor of Commerce Honours Degree in Fiscal Studies</option>	
<option value="CIN-ACT" ${conventional[3][1] == 'CIN-ACT' ? 'selected' : ''}>Bachelor of Commerce Honours Degree in Actuarial Science</option>	
<option value="CIN-RSK" ${conventional[3][1] == 'CIN-RSK' ? 'selected' : ''}>Bachelor of Commerce Honours Degree in Risk Management and Insurance</option>	
<option value="EFW" ${conventional[3][1] == 'EFW' ? 'selected' : ''}>Bachelor of Science Honours Degree in Forest Resources and Wildlife Management</option>	
<option value="IJM" ${conventional[3][1] == 'IJM' ? 'selected' : ''}>Bachelor of Science Honours Degree in Journalism and Media Studies</option>	
<option value="ILI" ${conventional[3][1] == 'ILI' ? 'selected' : ''}>Bachelor of Science Honours in Library and Information Science</option>
<option value="IMPAE" ${conventional[3][1] == 'IMPAE' ? 'selected' : ''}>Industrial, Mechanical,Production and Automotive Engineering</option>
<option value="IPU" ${conventional[3][1] == 'IPU' ? 'selected' : ''}>Bachelor of Science Honours Degree in Publishing</option>
<option value="IRA" ${conventional[3][1] == 'IRA' ? 'selected' : ''}>Bachelor of Science Honours Degree in Records and Archives Management</option>
<option value="MBBS" ${conventional[3][1] == 'MBBS' ? 'selected' : ''}>Bachelor of Medicine and Bachelor of Surgery Degree</option>
<option value="SBB" ${conventional[3][1] == 'SBB' ? 'selected' : ''}>Bachelor of Science Honours Degree in Applied Biology and Biochemistry</option>
<option value="SCH" ${conventional[3][1] == 'SCH' ? 'selected' : ''}>Bachelor of Science Honours Degree in Applied Chemistry</option>
<option value="SCI" ${conventional[3][1] == 'SCI' ? 'selected' : ''}>Bachelor of Science Honours Degree in Informatics</option>
<option value="SCS" ${conventional[3][1] == 'SCS' ? 'selected' : ''}>Bachelor of Science Honours Degree in Computer Science</option>
<option value="SORS" ${conventional[3][1] == 'SORS' ? 'selected' : ''}>Bachelor of Science Honours Degree  in Operations Research and Statistics</option>
<option value="SPH" ${conventional[3][1] == 'SPH' ? 'selected' : ''}>Bachelor of Science Honours Degree in Applied Physics</option>
<option value="SRA" ${conventional[3][1] == 'SRA' ? 'selected' : ''}>Bachelor of Science Honours Degree in Radiography</option>
<option value="SSC" ${conventional[3][1] == 'SSC' ? 'selected' : ''}>Bachelor of Science Honours Degree in Sports Science and Coaching</option>
<option value="TCE" ${conventional[3][1] == 'TCE' ? 'selected' : ''}>Bachelor of Engineering Honours Degree in Chemical Engineering</option>
<option value="TCW" ${conventional[3][1] == 'TCW' ? 'selected' : ''}>Bachelor of Engineering Honours Degree in Civil and Water Engineering</option>
<option value="TEE" ${conventional[3][1] == 'TEE' ? 'selected' : ''}>Bachelor of Engineering Honours Degree in Electronic Engineering</option>
<option value="TFE" ${conventional[3][1] == 'TFE' ? 'selected' : ''}>Bachelor of Engineering Honours Degree in Fibre and Polymer Materials Engineering</option>|
<option value="TIE" ${conventional[3][1] == 'TIE' ? 'selected' : ''}>Bachelor of Engineering Honours Degree in Industrial and Manufacturing Engineering</option>
<option value="ESH" ${conventional[3][1] == 'ESH' ? 'selected' : ''}>Bachelor of Science Honours Degree in Environmental Science and Health</option>
<option value="SMA" ${conventional[3][1] == 'SMA' ? 'selected' : ''}>Bachelor of Science Honours Degree in Applied Mathematics</option>
											</select>										<span class="fa fa-check form-control-feedback" aria-hidden="true"></span>
										<span id="inputSuccess2Status" class="sr-only">(success)</span>
									</div>
                                                                        <div class="form-group has-success has-feedback">
										<label class="control-label" for="inputSuccess2">Fifth Choice (Conventional Programmes)</label>
										<input type="hidden" name="choice_num" value="5"></input>
                                                                                <select class="form-control" name="conv" value="">
                                                                            <option value="" >Click to Select 5th Choice</option>
													<option value="BAR" ${conventional[0][1] == 'BAR' ? 'selected' : ''}>Bachelor of Architectural Studies Honours Degree</option>	
<option value="BPE" ${conventional[4][1] == 'BPE' ? 'selected' : ''}>Bachelor of Science Honours Degree in Property Development and Estate Management</option>	
<option value="BQS" ${conventional[4][1] == 'BQS' ? 'selected' : ''}>Bachelor of Quantity Surveying Honours Degree</option>	
<option value="CAC" ${conventional[4][1] == 'CAC' ? 'selected' : ''}>Bachelor of Commerce Honours Degree in Accounting</option>	
<option value="CBA" ${conventional[4][1] == 'CBA' ? 'selected' : ''}>Bachelor of Commerce Honours Degree in Banking</option>	
<option value="CBA-BIM" ${conventional[4][1] == 'CBA-BIM' ? 'selected' : ''}>Bachelor of Commerce Honours Degree in Banking and Investment Management</option>	
<option value="CBU-MGTB" ${conventional[4][1] == 'CBU-MGTB' ? 'selected' : ''}>Bachelor of Commerce Honours Degree in Management</option>	
<option value="CBU-MKT" ${conventional[4][1] == 'CBU-MKT' ? 'selected' : ''}>Bachelor of Commerce Honours Degree in Marketing</option>	
<option value="CFI" ${conventional[4][1] == 'CFI' ? 'selected' : ''}>Bachelor of Commerce Honours Degree in Finance</option>	
<option value="CFS" ${conventional[4][1] == 'CFS' ? 'selected' : ''}>Bachelor of Commerce Honours Degree in Fiscal Studies</option>	
<option value="CIN-ACT" ${conventional[4][1] == 'CIN-ACT' ? 'selected' : ''}>Bachelor of Commerce Honours Degree in Actuarial Science</option>	
<option value="CIN-RSK" ${conventional[4][1] == 'CIN-RSK' ? 'selected' : ''}>Bachelor of Commerce Honours Degree in Risk Management and Insurance</option>	
<option value="EFW" ${conventional[4][1] == 'EFW' ? 'selected' : ''}>Bachelor of Science Honours Degree in Forest Resources and Wildlife Management</option>	
<option value="IJM" ${conventional[4][1] == 'IJM' ? 'selected' : ''}>Bachelor of Science Honours Degree in Journalism and Media Studies</option>	
<option value="ILI" ${conventional[4][1] == 'ILI' ? 'selected' : ''}>Bachelor of Science Honours in Library and Information Science</option>
<option value="IMPAE" ${conventional[4][1] == 'IMPAE' ? 'selected' : ''}>Industrial, Mechanical,Production and Automotive Engineering</option>
<option value="IPU" ${conventional[4][1] == 'IPU' ? 'selected' : ''}>Bachelor of Science Honours Degree in Publishing</option>
<option value="IRA" ${conventional[4][1] == 'IRA' ? 'selected' : ''}>Bachelor of Science Honours Degree in Records and Archives Management</option>
<option value="MBBS" ${conventional[4][1] == 'MBBS' ? 'selected' : ''}>Bachelor of Medicine and Bachelor of Surgery Degree</option>
<option value="SBB" ${conventional[4][1] == 'SBB' ? 'selected' : ''}>Bachelor of Science Honours Degree in Applied Biology and Biochemistry</option>
<option value="SCH" ${conventional[4][1] == 'SCH' ? 'selected' : ''}>Bachelor of Science Honours Degree in Applied Chemistry</option>
<option value="SCI" ${conventional[4][1] == 'SCI' ? 'selected' : ''}>Bachelor of Science Honours Degree in Informatics</option>
<option value="SCS" ${conventional[4][1] == 'SCS' ? 'selected' : ''}>Bachelor of Science Honours Degree in Computer Science</option>
<option value="SORS" ${conventional[4][1] == 'SORS' ? 'selected' : ''}>Bachelor of Science Honours Degree  in Operations Research and Statistics</option>
<option value="SPH" ${conventional[4][1] == 'SPH' ? 'selected' : ''}>Bachelor of Science Honours Degree in Applied Physics</option>
<option value="SRA" ${conventional[4][1] == 'SRA' ? 'selected' : ''}>Bachelor of Science Honours Degree in Radiography</option>
<option value="SSC" ${conventional[4][1] == 'SSC' ? 'selected' : ''}>Bachelor of Science Honours Degree in Sports Science and Coaching</option>
<option value="TCE" ${conventional[4][1] == 'TCE' ? 'selected' : ''}>Bachelor of Engineering Honours Degree in Chemical Engineering</option>
<option value="TCW" ${conventional[4][1] == 'TCW' ? 'selected' : ''}>Bachelor of Engineering Honours Degree in Civil and Water Engineering</option>
<option value="TEE" ${conventional[4][1] == 'TEE' ? 'selected' : ''}>Bachelor of Engineering Honours Degree in Electronic Engineering</option>
<option value="TFE" ${conventional[4][1] == 'TFE' ? 'selected' : ''}>Bachelor of Engineering Honours Degree in Fibre and Polymer Materials Engineering</option>|
<option value="TIE" ${conventional[4][1] == 'TIE' ? 'selected' : ''}>Bachelor of Engineering Honours Degree in Industrial and Manufacturing Engineering</option>
<option value="ESH" ${conventional[4][1] == 'ESH' ? 'selected' : ''}>Bachelor of Science Honours Degree in Environmental Science and Health</option>
<option value="SMA" ${conventional[4][1] == 'SMA' ? 'selected' : ''}>Bachelor of Science Honours Degree in Applied Mathematics</option>
											</select>
											
                                                                                
										<span class="fa fa-check form-control-feedback" aria-hidden="true"></span>
										<span id="inputSuccess2Status" class="sr-only">(success)</span>
									</div>
                                                                        <div class="form-group has-success has-feedback">
										<label class="control-label" for="inputSuccess2">Sixth Choice (Conventional Programmes) </label>
										<input type="hidden" name="choice_num" value="6"></input>
                                                                                <select class="form-control" name="conv" value="">
                                                                            <option value="">Click To Select 6th Choice</option>
													<option value="BAR" ${conventional[0][1] == 'BAR' ? 'selected' : ''}>Bachelor of Architectural Studies Honours Degree</option>	
<option value="BPE" ${conventional[5][1] == 'BPE' ? 'selected' : ''}>Bachelor of Science Honours Degree in Property Development and Estate Management</option>	
<option value="BQS" ${conventional[5][1] == 'BQS' ? 'selected' : ''}>Bachelor of Quantity Surveying Honours Degree</option>	
<option value="CAC" ${conventional[5][1] == 'CAC' ? 'selected' : ''}>Bachelor of Commerce Honours Degree in Accounting</option>	
<option value="CBA" ${conventional[5][1] == 'CBA' ? 'selected' : ''}>Bachelor of Commerce Honours Degree in Banking</option>	
<option value="CBA-BIM" ${conventional[5][1] == 'CBA-BIM' ? 'selected' : ''}>Bachelor of Commerce Honours Degree in Banking and Investment Management</option>	
<option value="CBU-MGTB" ${conventional[5][1] == 'CBU-MGTB' ? 'selected' : ''}>Bachelor of Commerce Honours Degree in Management</option>	
<option value="CBU-MKT" ${conventional[5][1] == 'CBU-MKT' ? 'selected' : ''}>Bachelor of Commerce Honours Degree in Marketing</option>	
<option value="CFI" ${conventional[5][1] == 'CFI' ? 'selected' : ''}>Bachelor of Commerce Honours Degree in Finance</option>	
<option value="CFS" ${conventional[5][1] == 'CFS' ? 'selected' : ''}>Bachelor of Commerce Honours Degree in Fiscal Studies</option>	
<option value="CIN-ACT" ${conventional[5][1] == 'CIN-ACT' ? 'selected' : ''}>Bachelor of Commerce Honours Degree in Actuarial Science</option>	
<option value="CIN-RSK" ${conventional[5][1] == 'CIN-RSK' ? 'selected' : ''}>Bachelor of Commerce Honours Degree in Risk Management and Insurance</option>	
<option value="EFW" ${conventional[5][1] == 'EFW' ? 'selected' : ''}>Bachelor of Science Honours Degree in Forest Resources and Wildlife Management</option>	
<option value="IJM" ${conventional[5][1] == 'IJM' ? 'selected' : ''}>Bachelor of Science Honours Degree in Journalism and Media Studies</option>	
<option value="ILI" ${conventional[5][1] == 'ILI' ? 'selected' : ''}>Bachelor of Science Honours in Library and Information Science</option>
<option value="IMPAE" ${conventional[5][1] == 'IMPAE' ? 'selected' : ''}>Industrial, Mechanical,Production and Automotive Engineering</option>
<option value="IPU" ${conventional[5][1] == 'IPU' ? 'selected' : ''}>Bachelor of Science Honours Degree in Publishing</option>
<option value="IRA" ${conventional[5][1] == 'IRA' ? 'selected' : ''}>Bachelor of Science Honours Degree in Records and Archives Management</option>
<option value="MBBS" ${conventional[5][1] == 'MBBS' ? 'selected' : ''}>Bachelor of Medicine and Bachelor of Surgery Degree</option>
<option value="SBB" ${conventional[5][1] == 'SBB' ? 'selected' : ''}>Bachelor of Science Honours Degree in Applied Biology and Biochemistry</option>
<option value="SCH" ${conventional[5][1] == 'SCH' ? 'selected' : ''}>Bachelor of Science Honours Degree in Applied Chemistry</option>
<option value="SCI" ${conventional[5][1] == 'SCI' ? 'selected' : ''}>Bachelor of Science Honours Degree in Informatics</option>
<option value="SCS" ${conventional[5][1] == 'SCS' ? 'selected' : ''}>Bachelor of Science Honours Degree in Computer Science</option>
<option value="SORS" ${conventional[5][1] == 'SORS' ? 'selected' : ''}>Bachelor of Science Honours Degree  in Operations Research and Statistics</option>
<option value="SPH" ${conventional[5][1] == 'SPH' ? 'selected' : ''}>Bachelor of Science Honours Degree in Applied Physics</option>
<option value="SRA" ${conventional[5][1] == 'SRA' ? 'selected' : ''}>Bachelor of Science Honours Degree in Radiography</option>
<option value="SSC" ${conventional[5][1] == 'SSC' ? 'selected' : ''}>Bachelor of Science Honours Degree in Sports Science and Coaching</option>
<option value="TCE" ${conventional[5][1] == 'TCE' ? 'selected' : ''}>Bachelor of Engineering Honours Degree in Chemical Engineering</option>
<option value="TCW" ${conventional[5][1] == 'TCW' ? 'selected' : ''}>Bachelor of Engineering Honours Degree in Civil and Water Engineering</option>
<option value="TEE" ${conventional[5][1] == 'TEE' ? 'selected' : ''}>Bachelor of Engineering Honours Degree in Electronic Engineering</option>
<option value="TFE" ${conventional[5][1] == 'TFE' ? 'selected' : ''}>Bachelor of Engineering Honours Degree in Fibre and Polymer Materials Engineering</option>|
<option value="TIE" ${conventional[5][1] == 'TIE' ? 'selected' : ''}>Bachelor of Engineering Honours Degree in Industrial and Manufacturing Engineering</option>
<option value="ESH" ${conventional[5][1] == 'ESH' ? 'selected' : ''}>Bachelor of Science Honours Degree in Environmental Science and Health</option>
<option value="SMA" ${conventional[5][1] == 'SMA' ? 'selected' : ''}>Bachelor of Science Honours Degree in Applied Mathematics</option>
											</select>
										<span class="fa fa-check form-control-feedback" aria-hidden="true"></span>
										<span id="inputSuccess2Status" class="sr-only">(success)</span>
									</div>
									
									
									
									
                                                               	
								</div>
							</div>
                                                                                        </div>
                                                                                            <div class="col-md-4">                                  
							<div class="widget">
								<div class="widget-header">
									<h3><i class="fa fa-edit"></i>PARALLEL PROGRAMMES CHOICES </h3></div>
								<div class="widget-content">
                                                                   
									<h4>REMEMBER YOUR CHOICES MATTER</h4>
									<div class="form-group has-success has-feedback">
										<label class="control-label" for="inputSuccess2">First Choice (Parrallel Programmes) </label>
										<input type="hidden" name="choice_para" value="1"></input>
                                                                                <select class="form-control" name="para" value="">
                                                                            <option value="">Click for First Choice</option>
													<option value="BPEP" ${parrallel[0][1] == 'BPEP' ? 'selected' : ''}>Bachelor Science Honours Degree in Property Development and Estate Management</option>
<option value="BQSP" ${parrallel[0][1] == 'BQSP' ? 'selected' : ''}>Bachelor of Quantity Surveying Honours Degree</option>
<option value="CACP" ${parrallel[0][1] == 'CACP' ? 'selected' : ''}>Bachelor of Commerce Honours Degree in Accounting</option>
<option value="CBAP" ${parrallel[0][1] == 'CBAP' ? 'selected' : ''}>Bachelor of Commerce Honours  Degree in Banking</option>
<option value="CBU-MGTP" ${parrallel[0][1] == 'CBU-MGTP' ? 'selected' : ''}>Bachelor of Commerce Honours Degree in Management</option>
<option value="CBU-MKTP" ${parrallel[0][1] == 'CBU-MKTP' ? 'selected' : ''}>Bachelor of Commerce Honours Degree in Marketing</option>
<option value="CFIP" ${parrallel[0][1] == 'CFIP' ? 'selected' : ''}>Bachelor of Commerce Honours Degree in Finance</option>
<option value="CIN-RSKP" ${parrallel[0][1] == 'CIN-RSKP' ? 'selected' : ''}>Bachelor of Commerce Honours Degree in Risk Management and Insurance</option>
<option value="ESHP" ${parrallel[0][1] == 'ESHP' ? 'selected' : ''}>Bachelor of Science Honours Degree in Environmental Science and Health</option>
<option value="ESPH" ${parrallel[0][1] == 'ESPH' ? 'selected' : ''}>Bachelor of Science Honours Degree in Environmental Science & Health Honours</option>
<option value="TCWP" ${parrallel[0][1] == 'TCWP' ? 'selected' : ''}>Bachelor of Engineering Honours Degree in Civil and Water Engineering</option>
<option value="TCEP" ${parrallel[0][1] == 'TCEP' ? 'selected' : ''}>Bachelor of Engineering Honours Degree in Chemical Engineering</option>
<option value="TIEP" ${parrallel[0][1] == 'TIEP' ? 'selected' : ''}>Bachelor of Engineering Honours Degree in Industrial and Manufacturing Engineering</option>
<option value="SORSP" ${parrallel[0][1] == 'SORSP' ? 'selected' : ''}>Bachelor of Science  Honours Degree in Operations Research and Statistics</option>
<option value="SMOP" ${parrallel[0][1] == 'SMOP' ? 'selected' : ''}>Bachelor of Science Honours Degree in Operations Research and Statistics</option>
<option value="SMAP" ${parrallel[0][1] == 'SMAP' ? 'selected' : ''}>Bachelor of Science Honours Degree in Applied Mathematics</option>
<option value="SCSP" ${parrallel[0][1] == 'SCSP' ? 'selected' : ''}>Bachelor of Science Honours Degree in Computer Science</option>
<option value="SCIP" ${parrallel[0][1] == 'SCIP' ? 'selected' : ''}>Bachelor of Science Honours Degree in Informatics</option>
<option value="SBBP" ${parrallel[0][1] == 'SBBP' ? 'selected' : ''}>Bachelor of Science Honours Degree in Applied Biology and Biochemistry</option>
<option value="IJMP" ${parrallel[0][1] == 'IJMP' ? 'selected' : ''}>Bachelor of Science Honours Degree in Journalism and Media Studies</option>
<option value="ILIP" ${parrallel[0][1] == 'ILIP' ? 'selected' : ''}>Bachelor of Science Honours Degree in Library and Information Science</option>
												
												</select>
										<span class="fa fa-check form-control-feedback" aria-hidden="true"></span>
										<span id="inputSuccess2Status" class="sr-only">(success)</span>
									</div>
                                                                        <div class="form-group has-success has-feedback">
										<label class="control-label" for="inputSuccess2">Second Choice (Parrallel Programmes)</label>
										<input type="hidden" name="choice_para" value="2"></input>
                                                                                <select class="form-control" name="para" value="">
                                                                            <option value="">Click To Select 2nd Choice</option>
															<option value="BPEP" ${parrallel[1][1] == 'BPEP' ? 'selected' : ''}>Bachelor Science Honours Degree in Property Development and Estate Management</option>
<option value="BQSP" ${parrallel[1][1] == 'BQSP' ? 'selected' : ''}>Bachelor of Quantity Surveying Honours Degree</option>
<option value="CACP" ${parrallel[1][1] == 'CACP' ? 'selected' : ''}>Bachelor of Commerce Honours Degree in Accounting</option>
<option value="CBAP" ${parrallel[1][1] == 'CBAP' ? 'selected' : ''}>Bachelor of Commerce Honours  Degree in Banking</option>
<option value="CBU-MGTP" ${parrallel[1][1] == 'CBU-MGTP' ? 'selected' : ''}>Bachelor of Commerce Honours Degree in Management</option>
<option value="CBU-MKTP" ${parrallel[1][1] == 'CBU-MKTP' ? 'selected' : ''}>Bachelor of Commerce Honours Degree in Marketing</option>
<option value="CFIP" ${parrallel[1][1] == 'CFIP' ? 'selected' : ''}>Bachelor of Commerce Honours Degree in Finance</option>
<option value="CIN-RSKP" ${parrallel[1][1] == 'CIN-RSKP' ? 'selected' : ''}>Bachelor of Commerce Honours Degree in Risk Management and Insurance</option>
<option value="ESHP" ${parrallel[1][1] == 'ESHP' ? 'selected' : ''}>Bachelor of Science Honours Degree in Environmental Science and Health</option>
<option value="ESPH" ${parrallel[1][1] == 'ESPH' ? 'selected' : ''}>Bachelor of Science Honours Degree in Environmental Science & Health Honours</option>
<option value="TCWP" ${parrallel[1][1] == 'TCWP' ? 'selected' : ''}>Bachelor of Engineering Honours Degree in Civil and Water Engineering</option>
<option value="TCEP" ${parrallel[1][1] == 'TCEP' ? 'selected' : ''}>Bachelor of Engineering Honours Degree in Chemical Engineering</option>
<option value="TIEP" ${parrallel[1][1] == 'TIEP' ? 'selected' : ''}>Bachelor of Engineering Honours Degree in Industrial and Manufacturing Engineering</option>
<option value="SORSP" ${parrallel[1][1] == 'SORSP' ? 'selected' : ''}>Bachelor of Science  Honours Degree in Operations Research and Statistics</option>
<option value="SMOP" ${parrallel[1][1] == 'SMOP' ? 'selected' : ''}>Bachelor of Science Honours Degree in Operations Research and Statistics</option>
<option value="SMAP" ${parrallel[1][1] == 'SMAP' ? 'selected' : ''}>Bachelor of Science Honours Degree in Applied Mathematics</option>
<option value="SCSP" ${parrallel[1][1] == 'SCSP' ? 'selected' : ''}>Bachelor of Science Honours Degree in Computer Science</option>
<option value="SCIP" ${parrallel[1][1] == 'SCIP' ? 'selected' : ''}>Bachelor of Science Honours Degree in Informatics</option>
<option value="SBBP" ${parrallel[1][1] == 'SBBP' ? 'selected' : ''}>Bachelor of Science Honours Degree in Applied Biology and Biochemistry</option>
<option value="IJMP" ${parrallel[1][1] == 'IJMP' ? 'selected' : ''}>Bachelor of Science Honours Degree in Journalism and Media Studies</option>
<option value="ILIP" ${parrallel[1][1] == 'ILIP' ? 'selected' : ''}>Bachelor of Science Honours Degree in Library and Information Science</option>
												
												</select>
										<span class="fa fa-check form-control-feedback" aria-hidden="true"></span>
										<span id="inputSuccess2Status" class="sr-only">(success)</span>
									</div>
                                                                        <div class="form-group has-success has-feedback">
										<label class="control-label" for="inputSuccess2">Third Choice (Parrallel Programmes)</label>
										<input type="hidden" name="choice_para" value="3"></input>
                                                                                <select class="form-control" name="para" value="">
                                                                            <option value="">Click To Select 3rd Choice</option>
															<option value="BPEP" ${parrallel[2][1] == 'BPEP' ? 'selected' : ''}>Bachelor Science Honours Degree in Property Development and Estate Management</option>
<option value="BQSP" ${parrallel[2][1] == 'BQSP' ? 'selected' : ''}>Bachelor of Quantity Surveying Honours Degree</option>
<option value="CACP" ${parrallel[2][1] == 'CACP' ? 'selected' : ''}>Bachelor of Commerce Honours Degree in Accounting</option>
<option value="CBAP" ${parrallel[2][1] == 'CBAP' ? 'selected' : ''}>Bachelor of Commerce Honours  Degree in Banking</option>
<option value="CBU-MGTP" ${parrallel[2][1] == 'CBU-MGTP' ? 'selected' : ''}>Bachelor of Commerce Honours Degree in Management</option>
<option value="CBU-MKTP" ${parrallel[2][1] == 'CBU-MKTP' ? 'selected' : ''}>Bachelor of Commerce Honours Degree in Marketing</option>
<option value="CFIP" ${parrallel[2][1] == 'CFIP' ? 'selected' : ''}>Bachelor of Commerce Honours Degree in Finance</option>
<option value="CIN-RSKP" ${parrallel[2][1] == 'CIN-RSKP' ? 'selected' : ''}>Bachelor of Commerce Honours Degree in Risk Management and Insurance</option>
<option value="ESHP" ${parrallel[2][1] == 'ESHP' ? 'selected' : ''}>Bachelor of Science Honours Degree in Environmental Science and Health</option>
<option value="TCWP" ${parrallel[2][1] == 'TCWP' ? 'selected' : ''}>Bachelor of Engineering Honours Degree in Civil and Water Engineering</option>
<option value="TCEP" ${parrallel[2][1] == 'TCEP' ? 'selected' : ''}>Bachelor of Engineering Honours Degree in Chemical Engineering</option>
<option value="TIEP" ${parrallel[2][1] == 'TIEP' ? 'selected' : ''}>Bachelor of Engineering Honours Degree in Industrial and Manufacturing Engineering</option>
<option value="SORSP" ${parrallel[2][1] == 'SORSP' ? 'selected' : ''}>Bachelor of Science  Honours Degree in Operations Research and Statistics</option>
<option value="SMOP" ${parrallel[2][1] == 'SMOP' ? 'selected' : ''}>Bachelor of Science Honours Degree in Operations Research and Statistics</option>
<option value="SMAP" ${parrallel[2][1] == 'SMAP' ? 'selected' : ''}>Bachelor of Science Honours Degree in Applied Mathematics</option>
<option value="SCSP" ${parrallel[2][1] == 'SCSP' ? 'selected' : ''}>Bachelor of Science Honours Degree in Computer Science</option>
<option value="SCIP" ${parrallel[2][1] == 'SCIP' ? 'selected' : ''}>Bachelor of Science Honours Degree in Informatics</option>
<option value="SBBP" ${parrallel[2][1] == 'SBBP' ? 'selected' : ''}>Bachelor of Science Honours Degree in Applied Biology and Biochemistry</option>
<option value="IJMP" ${parrallel[2][1] == 'IJMP' ? 'selected' : ''}>Bachelor of Science Honours Degree in Journalism and Media Studies</option>
<option value="ILIP" ${parrallel[2][1] == 'ILIP' ? 'selected' : ''}>Bachelor of Science Honours Degree in Library and Information Science</option>
												
												</select>
										<span class="fa fa-check form-control-feedback" aria-hidden="true"></span>
										<span id="inputSuccess2Status" class="sr-only">(success)</span>
									</div>
                                                                        <div class="form-group has-success has-feedback">
										<label class="control-label" for="inputSuccess2">Fourth Choice (Parrallel Programmes)</label>
										<input type="hidden" name="choice_para" value="4"></input>
                                                                                <select class="form-control" name="para" value="">
                                                                            <option value="">Click To Select 4th Choice</option>
															<option value="BPEP" ${parrallel[3][1] == 'BPEP' ? 'selected' : ''}>Bachelor Science Honours Degree in Property Development and Estate Management</option>
<option value="BQSP" ${parrallel[3][1] == 'BQSP' ? 'selected' : ''}>Bachelor of Quantity Surveying Honours Degree</option>
<option value="CACP" ${parrallel[3][1] == 'CACP' ? 'selected' : ''}>Bachelor of Commerce Honours Degree in Accounting</option>
<option value="CBAP" ${parrallel[3][1] == 'CBAP' ? 'selected' : ''}>Bachelor of Commerce Honours  Degree in Banking</option>
<option value="CBU-MGTP" ${parrallel[3][1] == 'CBU-MGTP' ? 'selected' : ''}>Bachelor of Commerce Honours Degree in Management</option>
<option value="CBU-MKTP" ${parrallel[3][1] == 'CBU-MKTP' ? 'selected' : ''}>Bachelor of Commerce Honours Degree in Marketing</option>
<option value="CFIP" ${parrallel[3][1] == 'CFIP' ? 'selected' : ''}>Bachelor of Commerce Honours Degree in Finance</option>
<option value="CIN-RSKP" ${parrallel[3][1] == 'CIN-RSKP' ? 'selected' : ''}>Bachelor of Commerce Honours Degree in Risk Management and Insurance</option>
<option value="ESHP" ${parrallel[3][1] == 'ESHP' ? 'selected' : ''}>Bachelor of Science Honours Degree in Environmental Science and Health</option>
<option value="ESPH" ${parrallel[3][1] == 'ESPH' ? 'selected' : ''}>Bachelor of Science Honours Degree in Environmental Science & Health Honours</option>
<option value="TCWP" ${parrallel[3][1] == 'TCWP' ? 'selected' : ''}>Bachelor of Engineering Honours Degree in Civil and Water Engineering</option>
<option value="TCEP" ${parrallel[3][1] == 'TCEP' ? 'selected' : ''}>Bachelor of Engineering Honours Degree in Chemical Engineering</option>
<option value="TIEP" ${parrallel[3][1] == 'TIEP' ? 'selected' : ''}>Bachelor of Engineering Honours Degree in Industrial and Manufacturing Engineering</option>
<option value="SORSP" ${parrallel[3][1] == 'SORSP' ? 'selected' : ''}>Bachelor of Science  Honours Degree in Operations Research and Statistics</option>
<option value="SMOP" ${parrallel[3][1] == 'SMOP' ? 'selected' : ''}>Bachelor of Science Honours Degree in Operations Research and Statistics</option>
<option value="SMAP" ${parrallel[3][1] == 'SMAP' ? 'selected' : ''}>Bachelor of Science Honours Degree in Applied Mathematics</option>
<option value="SCSP" ${parrallel[3][1] == 'SCSP' ? 'selected' : ''}>Bachelor of Science Honours Degree in Computer Science</option>
<option value="SCIP" ${parrallel[3][1] == 'SCIP' ? 'selected' : ''}>Bachelor of Science Honours Degree in Informatics</option>
<option value="SBBP" ${parrallel[3][1] == 'SBBP' ? 'selected' : ''}>Bachelor of Science Honours Degree in Applied Biology and Biochemistry</option>
<option value="IJMP" ${parrallel[3][1] == 'IJMP' ? 'selected' : ''}>Bachelor of Science Honours Degree in Journalism and Media Studies</option>
<option value="ILIP" ${parrallel[3][1] == 'ILIP' ? 'selected' : ''}>Bachelor of Science Honours Degree in Library and Information Science</option>
												
												</select>										<span class="fa fa-check form-control-feedback" aria-hidden="true"></span>
										<span id="inputSuccess2Status" class="sr-only">(success)</span>
									</div>
                                                                        <div class="form-group has-success has-feedback">
										<label class="control-label" for="inputSuccess2">Fifth Choice (Parrallel Programmes)</label>
										<input type="hidden" name="choice_para" value="5"></input>
                                                                                <select class="form-control" name="para" value="">
                                                                            <option value="">Click to Select 5th Choice</option>
															<option value="BPEP" ${parrallel[4][1] == 'BPEP' ? 'selected' : ''}>Bachelor Science Honours Degree in Property Development and Estate Management</option>
<option value="BQSP" ${parrallel[4][1] == 'BQSP' ? 'selected' : ''}>Bachelor of Quantity Surveying Honours Degree</option>
<option value="CACP" ${parrallel[4][1] == 'CACP' ? 'selected' : ''}>Bachelor of Commerce Honours Degree in Accounting</option>
<option value="CBAP" ${parrallel[4][1] == 'CBAP' ? 'selected' : ''}>Bachelor of Commerce Honours  Degree in Banking</option>
<option value="CBU-MGTP" ${parrallel[4][1] == 'CBU-MGTP' ? 'selected' : ''}>Bachelor of Commerce Honours Degree in Management</option>
<option value="CBU-MKTP" ${parrallel[4][1] == 'CBU-MKTP' ? 'selected' : ''}>Bachelor of Commerce Honours Degree in Marketing</option>
<option value="CFIP" ${parrallel[4][1] == 'CFIP' ? 'selected' : ''}>Bachelor of Commerce Honours Degree in Finance</option>
<option value="CIN-RSKP" ${parrallel[4][1] == 'CIN-RSKP' ? 'selected' : ''}>Bachelor of Commerce Honours Degree in Risk Management and Insurance</option>
<option value="ESHP" ${parrallel[4][1] == 'ESHP' ? 'selected' : ''}>Bachelor of Science Honours Degree in Environmental Science and Health</option>
<option value="ESPH" ${parrallel[4][1] == 'ESPH' ? 'selected' : ''}>Bachelor of Science Honours Degree in Environmental Science & Health Honours</option>
<option value="TCWP" ${parrallel[4][1] == 'TCWP' ? 'selected' : ''}>Bachelor of Engineering Honours Degree in Civil and Water Engineering</option>
<option value="TCEP" ${parrallel[4][1] == 'TCEP' ? 'selected' : ''}>Bachelor of Engineering Honours Degree in Chemical Engineering</option>
<option value="TIEP" ${parrallel[4][1] == 'TIEP' ? 'selected' : ''}>Bachelor of Engineering Honours Degree in Industrial and Manufacturing Engineering</option>
<option value="SORSP" ${parrallel[4][1] == 'SORSP' ? 'selected' : ''}>Bachelor of Science  Honours Degree in Operations Research and Statistics</option>
<option value="SMOP" ${parrallel[4][1] == 'SMOP' ? 'selected' : ''}>Bachelor of Science Honours Degree in Operations Research and Statistics</option>
<option value="SMAP" ${parrallel[4][1] == 'SMAP' ? 'selected' : ''}>Bachelor of Science Honours Degree in Applied Mathematics</option>
<option value="SCSP" ${parrallel[4][1] == 'SCSP' ? 'selected' : ''}>Bachelor of Science Honours Degree in Computer Science</option>
<option value="SCIP" ${parrallel[4][1] == 'SCIP' ? 'selected' : ''}>Bachelor of Science Honours Degree in Informatics</option>
<option value="SBBP" ${parrallel[4][1] == 'SBBP' ? 'selected' : ''}>Bachelor of Science Honours Degree in Applied Biology and Biochemistry</option>
<option value="IJMP" ${parrallel[4][1] == 'IJMP' ? 'selected' : ''}>Bachelor of Science Honours Degree in Journalism and Media Studies</option>
<option value="ILIP" ${parrallel[4][1] == 'ILIP' ? 'selected' : ''}>Bachelor of Science Honours Degree in Library and Information Science</option>
												
												</select>                                                                                
										<span class="fa fa-check form-control-feedback" aria-hidden="true"></span>
										<span id="inputSuccess2Status" class="sr-only">(success)</span>
									</div>
                                                                        <div class="form-group has-success has-feedback">
										<label class="control-label" for="inputSuccess2">Sixth Choice (Parrallel Programmes) </label>
										<input type="hidden" name="choice_para" value="6"></input>
                                                                                <select class="form-control" name="para" value="">
                                                                            <option value="" >Click To Select 6th Choice</option>
															<option value="BPEP" ${parrallel[5][1] == 'BPEP' ? 'selected' : ''}>Bachelor Science Honours Degree in Property Development and Estate Management</option>
<option value="BQSP" ${parrallel[5][1] == 'BQSP' ? 'selected' : ''}>Bachelor of Quantity Surveying Honours Degree</option>
<option value="CACP" ${parrallel[5][1] == 'CACP' ? 'selected' : ''}>Bachelor of Commerce Honours Degree in Accounting</option>
<option value="CBAP" ${parrallel[5][1] == 'CBAP' ? 'selected' : ''}>Bachelor of Commerce Honours  Degree in Banking</option>
<option value="CBU-MGTP" ${parrallel[5][1] == 'CBU-MGTP' ? 'selected' : ''}>Bachelor of Commerce Honours Degree in Management</option>
<option value="CBU-MKTP" ${parrallel[5][1] == 'CBU-MKTP' ? 'selected' : ''}>Bachelor of Commerce Honours Degree in Marketing</option>
<option value="CFIP" ${parrallel[5][1] == 'CFIP' ? 'selected' : ''}>Bachelor of Commerce Honours Degree in Finance</option>
<option value="CIN-RSKP" ${parrallel[5][1] == 'CIN-RSKP' ? 'selected' : ''}>Bachelor of Commerce Honours Degree in Risk Management and Insurance</option>
<option value="ESHP" ${parrallel[5][1] == 'ESHP' ? 'selected' : ''}>Bachelor of Science Honours Degree in Environmental Science and Health</option>
<option value="ESPH" ${parrallel[5][1] == 'ESPH' ? 'selected' : ''}>Bachelor of Science Honours Degree in Environmental Science & Health Honours</option>
<option value="TCWP" ${parrallel[5][1] == 'TCWP' ? 'selected' : ''}>Bachelor of Engineering Honours Degree in Civil and Water Engineering</option>
<option value="TCEP" ${parrallel[5][1] == 'TCEP' ? 'selected' : ''}>Bachelor of Engineering Honours Degree in Chemical Engineering</option>
<option value="TIEP" ${parrallel[5][1] == 'TIEP' ? 'selected' : ''}>Bachelor of Engineering Honours Degree in Industrial and Manufacturing Engineering</option>
<option value="SORSP" ${parrallel[5][1] == 'SORSP' ? 'selected' : ''}>Bachelor of Science  Honours Degree in Operations Research and Statistics</option>
<option value="SMOP" ${parrallel[5][1] == 'SMOP' ? 'selected' : ''}>Bachelor of Science Honours Degree in Operations Research and Statistics</option>
<option value="SMAP" ${parrallel[5][1] == 'SMAP' ? 'selected' : ''}>Bachelor of Science Honours Degree in Applied Mathematics</option>
<option value="SCSP" ${parrallel[5][1] == 'SCSP' ? 'selected' : ''}>Bachelor of Science Honours Degree in Computer Science</option>
<option value="SCIP" ${parrallel[5][1] == 'SCIP' ? 'selected' : ''}>Bachelor of Science Honours Degree in Informatics</option>
<option value="SBBP" ${parrallel[5][1] == 'SBBP' ? 'selected' : ''}>Bachelor of Science Honours Degree in Applied Biology and Biochemistry</option>
<option value="IJMP" ${parrallel[5][1] == 'IJMP' ? 'selected' : ''}>Bachelor of Science Honours Degree in Journalism and Media Studies</option>
<option value="ILIP" ${parrallel[5][1] == 'ILIP' ? 'selected' : ''}>Bachelor of Science Honours Degree in Library and Information Science</option>
												
												</select>
										<span class="fa fa-check form-control-feedback" aria-hidden="true"></span>
										<span id="inputSuccess2Status" class="sr-only">(success)</span>
									</div>
									
									
									
									
                                                                  	
								</div>
                                                            
                                                            
							</div>
                                                                                        </div>
                                                                                            
                                                                                             <div class="col-md-4">                                  
							<div class="widget">
								<div class="widget-header">
									<h3><i class="fa fa-edit"></i>BLOCK RELEASE PROGRAMMES CHOICES </h3></div>
								<div class="widget-content">
                                                                   
									<h4>REMEMBER YOUR CHOICES MATTER</h4>
									<div class="form-group has-success has-feedback">
										<label class="control-label" for="inputSuccess2">First Choice (Block Programmes)</label>
										<input type="hidden" name="choice_block" value="1"></input>
                                                                                <select class="form-control" name="blockprog" value="">
                                                                            <option value="">Click To Select 1st Choice</option>
<option value="BPEB" ${blockprogrammes[0][1] == 'BPEB' ? 'selected' : ''}>Bachelor of Science Honours Degree in Property Development and Estate Management</option>
<option value="BQSB-HRE" ${blockprogrammes[0][1] == 'BQSB-HRE' ? 'selected' : ''}>Bachelor of Quantity Surveying Honours Degree</option>
<option value="BSC-MW" ${blockprogrammes[0][1] == 'BSC-MW' ? 'selected' : ''}>Bachelor of Science Honours Degree in Midwifery</option>
<option value="CACB" ${blockprogrammes[0][1] == 'CACB' ? 'selected' : ''}>Bachelor of Commerce Honours Degree in Accounting</option>
<option value="CBU-MKTB" ${blockprogrammes[0][1] == 'CBU-MKTB' ? 'selected' : ''}>Bachelor of Commerce Honours Degree in Marketing</option>
<option value="CFI-HRE" ${blockprogrammes[0][1] == 'CFI-HRE' ? 'selected' : ''}>Bachelor of Commerce Honours Degree in Finance</option>-->
<option value="CIN-RSKB" ${blockprogrammes[0][1] == 'CIN-RSKB' ? 'selected' : ''}>Bachelor of Commerce Honours Degree in Risk Management and Insurance</option>
<option value="EAD-AAD" ${blockprogrammes[0][1] == 'EAD-AAD' ? 'selected' : ''}>Bachelor of Design Education Honours (BDesED Hons) in Applied Art and Design</option>
<option value="EAD-CTF" ${blockprogrammes[0][1] == 'EAD-CTF' ? 'selected' : ''}>Bachelor of Design Education Honours (BDesED Hons) in Clothing, Textile and Fashion Design</option>
<option value="EAD-DTE" ${blockprogrammes[0][1] == 'EAD-DTE' ? 'selected' : ''}>Bachelor of Design Education Honours (BDesED Hons) in Design and Technology</option>
<option value="EPH" ${blockprogrammes[0][1] == 'EPH' ? 'selected' : ''}>Bachelor of Environmental Science Honours Degree in Public Health</option>
<option value="IRAB" ${blockprogrammes[0][1] == 'IRAB' ? 'selected' : ''}>Bachelor of Science Honours Degree in Records and Archives Management</option>
<option value="TBE-ADD" ${blockprogrammes[0][1] == 'TBE-ADD' ? 'selected' : ''}>Bachelor of Education Honours Degree in Art and Design</option>
<option value="TBE-TXT" ${blockprogrammes[0][1] == 'TBE-TXT' ? 'selected' : ''}>Bachelor of Education Honours Degree in Clothing Textile and Fashion Design</option>
<option value="TTE-AAD" ${blockprogrammes[0][1] == 'TTE-AAD' ? 'selected' : ''}>Bachelor of Technical Teacher Education Honours Degree in Applied Art and Design</option>
<option value="TTE-CCE" ${blockprogrammes[0][1] == 'TTE-CCE' ? 'selected' : ''}>Bachelor of Technical Education Honours Degree in Civil and Construction  Engineering</option>
<option value="TTE-EEE" ${blockprogrammes[0][1] == 'TTE-EEE' ? 'selected' : ''}>Bachelor of Technical Education Honors Degree in Electrical and Electronic Engineering</option>
<option value="TTE-TXT" ${blockprogrammes[0][1] == 'TTE-TXT' ? 'selected' : ''}>Bachelor of Technical Education Honours Degree in Textile Technology</option>												
<option value="EST-BIO" ${blockprogrammes[0][1] == 'EST-BIO' ? 'selected' : ''}>Bachelor of Science Education Honours (BScED Hons) in Biology</option>
<option value="EST-CHE" ${blockprogrammes[0][1] == 'EST-CHE' ? 'selected' : ''}>Bachelor of Science Education Honours (BScED Hons) in Chemistry</option>
<option value="EST-CSC" ${blockprogrammes[0][1] == 'EST-CSC' ? 'selected' : ''}>Bachelor of Science Education Honours (BScEd Hons) in Computer Science</option>										
<option value="EST-PHY" ${blockprogrammes[0][1] == 'EST-PHY' ? 'selected' : ''}>Bachelor of Science Education Honours (BScEd Hons) in Physics</option>												
<option value="CFS" ${blockprogrammes[0][1] == 'CFS' ? 'selected' : ''}>Bachelor of Commerce Honours Degree in Fiscal Studies</option>			
<option value="CFS-HRE" ${blockprogrammes[0][1] == 'CFS-HRE' ? 'selected' : ''}>Bachelor of Commerce Honours Degree in Fiscal Studies (Block Release)-Harare</option>			                                                                              
                                                                                
                                                                                </select>
										<span class="fa fa-check form-control-feedback" aria-hidden="true"></span>
										<span id="inputSuccess2Status" class="sr-only">(success)</span>
									</div>
                                                                        <div class="form-group has-success has-feedback">
										<label class="control-label" for="inputSuccess2">Second Choice (Block Programmes)</label>
										<input type="hidden" name="choice_block" value="2"></input>
                                                                                <select class="form-control" name="blockprog" value="">
                                                                            <option value="">Click To Select 2nd Choice</option>
<option value="BPEB" ${blockprogrammes[1][1] == 'BPEB' ? 'selected' : ''}>Bachelor of Science Honours Degree in Property Development and Estate Management</option>
<option value="BQSB-HRE" ${blockprogrammes[1][1] == 'BQSB-HRE' ? 'selected' : ''}>Bachelor of Quantity Surveying Honours Degree</option>
<option value="BSC-MW" ${blockprogrammes[1][1] == 'BSC-MW' ? 'selected' : ''}>Bachelor of Science Honours Degree in Midwifery</option>
<option value="CACB" ${blockprogrammes[1][1] == 'CACB' ? 'selected' : ''}>Bachelor of Commerce Honours Degree in Accounting</option>
<option value="CBU-MKTB" ${blockprogrammes[1][1] == 'CBU-MKTB' ? 'selected' : ''}>Bachelor of Commerce Honours Degree in Marketing</option>
<option value="CFI-HRE" ${blockprogrammes[1][1] == 'CFI-HRE' ? 'selected' : ''}>Bachelor of Commerce Honours Degree in Finance</option>-->
<option value="CIN-RSKB" ${blockprogrammes[1][1] == 'CIN-RSKB' ? 'selected' : ''}>Bachelor of Commerce Honours Degree in Risk Management and Insurance</option>
<option value="EAD-AAD" ${blockprogrammes[1][1] == 'EAD-AAD' ? 'selected' : ''}>Bachelor of Design Education Honours (BDesED Hons) in Applied Art and Design</option>
<option value="EAD-CTF" ${blockprogrammes[1][1] == 'EAD-CTF' ? 'selected' : ''}>Bachelor of Design Education Honours (BDesED Hons) in Clothing, Textile and Fashion Design</option>
<option value="EAD-DTE" ${blockprogrammes[1][1] == 'EAD-DTE' ? 'selected' : ''}>Bachelor of Design Education Honours (BDesED Hons) in Design and Technology</option>
<option value="EPH" ${blockprogrammes[1][1] == 'EPH' ? 'selected' : ''}>Bachelor of Environmental Science Honours Degree in Public Health</option>
<option value="IRAB" ${blockprogrammes[1][1] == 'IRAB' ? 'selected' : ''}>Bachelor of Science Honours Degree in Records and Archives Management</option>
<option value="TBE-ADD" ${blockprogrammes[1][1] == 'TBE-ADD' ? 'selected' : ''}>Bachelor of Education Honours Degree in Art and Design</option>
<option value="TBE-TXT" ${blockprogrammes[1][1] == 'TBE-TXT' ? 'selected' : ''}>Bachelor of Education Honours Degree in Clothing Textile and Fashion Design</option>
<option value="TTE-AAD" ${blockprogrammes[1][1] == 'TTE-AAD' ? 'selected' : ''}>Bachelor of Technical Teacher Education Honours Degree in Applied Art and Design</option>
<option value="TTE-CCE" ${blockprogrammes[1][1] == 'TTE-CCE' ? 'selected' : ''}>Bachelor of Technical Education Honours Degree in Civil and Construction  Engineering</option>
<option value="TTE-EEE" ${blockprogrammes[1][1] == 'TTE-EEE' ? 'selected' : ''}>Bachelor of Technical Education Honors Degree in Electrical and Electronic Engineering</option>
<option value="TTE-TXT" ${blockprogrammes[1][1] == 'TTE-TXT' ? 'selected' : ''}>Bachelor of Technical Education Honours Degree in Textile Technology</option>												
<option value="EST-BIO" ${blockprogrammes[1][1] == 'EST-BIO' ? 'selected' : ''}>Bachelor of Science Education Honours (BScED Hons) in Biology</option>
<option value="EST-CHE" ${blockprogrammes[1][1] == 'EST-CHE' ? 'selected' : ''}>Bachelor of Science Education Honours (BScED Hons) in Chemistry</option>
<option value="EST-CSC" ${blockprogrammes[1][1] == 'EST-CSC' ? 'selected' : ''}>Bachelor of Science Education Honours (BScEd Hons) in Computer Science</option>										
<option value="EST-PHY" ${blockprogrammes[1][1] == 'EST-PHY' ? 'selected' : ''}>Bachelor of Science Education Honours (BScEd Hons) in Physics</option>												
<option value="CFS" ${blockprogrammes[1][1] == 'CFS' ? 'selected' : ''}>Bachelor of Commerce Honours Degree in Fiscal Studies</option>			
<option value="CFS-HRE" ${blockprogrammes[1][1] == 'CFS-HRE' ? 'selected' : ''}>Bachelor of Commerce Honours Degree in Fiscal Studies (Block Release)-Harare</option>			                                                                              
                                                                                												
                                                                                </select>
										<span class="fa fa-check form-control-feedback" aria-hidden="true"></span>
										<span id="inputSuccess2Status" class="sr-only">(success)</span>
									</div>
									
                                                                        <div class="form-group has-success has-feedback">
                                                                                <label class="control-label" for="inputSuccess2">Third Choice (Block Programmes)</label>
										<input type="hidden" name="choice_block" value="3"></input>
                                                                                <select class="form-control" name="blockprog" value="">
                                                                            <option value="">Click To Select 3rd Choice</option>
														<option value="BPEB" ${blockprogrammes[0][1] == 'BPEB' ? 'selected' : ''}>Bachelor of Science Honours Degree in Property Development and Estate Management</option>
<option value="BQSB-HRE" ${blockprogrammes[2][1] == 'BQSB-HRE' ? 'selected' : ''}>Bachelor of Quantity Surveying Honours Degree</option>
<option value="BSC-MW" ${blockprogrammes[2][1] == 'BSC-MW' ? 'selected' : ''}>Bachelor of Science Honours Degree in Midwifery</option>
<option value="CACB" ${blockprogrammes[2][1] == 'CACB' ? 'selected' : ''}>Bachelor of Commerce Honours Degree in Accounting</option>
<option value="CBU-MKTB" ${blockprogrammes[2][1] == 'CBU-MKTB' ? 'selected' : ''}>Bachelor of Commerce Honours Degree in Marketing</option>
<option value="CFI-HRE" ${blockprogrammes[2][1] == 'CFI-HRE' ? 'selected' : ''}>Bachelor of Commerce Honours Degree in Finance</option>-->
<option value="CIN-RSKB" ${blockprogrammes[2][1] == 'CIN-RSKB' ? 'selected' : ''}>Bachelor of Commerce Honours Degree in Risk Management and Insurance</option>
<option value="EAD-AAD" ${blockprogrammes[2][1] == 'EAD-AAD' ? 'selected' : ''}>Bachelor of Design Education Honours (BDesED Hons) in Applied Art and Design</option>
<option value="EAD-CTF" ${blockprogrammes[2][1] == 'EAD-CTF' ? 'selected' : ''}>Bachelor of Design Education Honours (BDesED Hons) in Clothing, Textile and Fashion Design</option>
<option value="EAD-DTE" ${blockprogrammes[2][1] == 'EAD-DTE' ? 'selected' : ''}>Bachelor of Design Education Honours (BDesED Hons) in Design and Technology</option>
<option value="EPH" ${blockprogrammes[2][1] == 'EPH' ? 'selected' : ''}>Bachelor of Environmental Science Honours Degree in Public Health</option>
<option value="IRAB" ${blockprogrammes[2][1] == 'IRAB' ? 'selected' : ''}>Bachelor of Science Honours Degree in Records and Archives Management</option>
<option value="TBE-ADD" ${blockprogrammes[2][1] == 'TBE-ADD' ? 'selected' : ''}>Bachelor of Education Honours Degree in Art and Design</option>
<option value="TBE-TXT" ${blockprogrammes[2][1] == 'TBE-TXT' ? 'selected' : ''}>Bachelor of Education Honours Degree in Clothing Textile and Fashion Design</option>
<option value="TTE-AAD" ${blockprogrammes[2][1] == 'TTE-AAD' ? 'selected' : ''}>Bachelor of Technical Teacher Education Honours Degree in Applied Art and Design</option>
<option value="TTE-CCE" ${blockprogrammes[2][1] == 'TTE-CCE' ? 'selected' : ''}>Bachelor of Technical Education Honours Degree in Civil and Construction  Engineering</option>
<option value="TTE-EEE" ${blockprogrammes[2][1] == 'TTE-EEE' ? 'selected' : ''}>Bachelor of Technical Education Honors Degree in Electrical and Electronic Engineering</option>
<option value="TTE-TXT" ${blockprogrammes[2][1] == 'TTE-TXT' ? 'selected' : ''}>Bachelor of Technical Education Honours Degree in Textile Technology</option>												
<option value="EST-BIO" ${blockprogrammes[2][1] == 'EST-BIO' ? 'selected' : ''}>Bachelor of Science Education Honours (BScED Hons) in Biology</option>
<option value="EST-CHE" ${blockprogrammes[2][1] == 'EST-CHE' ? 'selected' : ''}>Bachelor of Science Education Honours (BScED Hons) in Chemistry</option>
<option value="EST-CSC" ${blockprogrammes[2][1] == 'EST-CSC' ? 'selected' : ''}>Bachelor of Science Education Honours (BScEd Hons) in Computer Science</option>										
<option value="EST-PHY" ${blockprogrammes[2][1] == 'EST-PHY' ? 'selected' : ''}>Bachelor of Science Education Honours (BScEd Hons) in Physics</option>												
<option value="CFS" ${blockprogrammes[2][1] == 'CFS' ? 'selected' : ''}>Bachelor of Commerce Honours Degree in Fiscal Studies</option>			
<option value="CFS-HRE" ${blockprogrammes[2][1] == 'CFS-HRE' ? 'selected' : ''}>Bachelor of Commerce Honours Degree in Fiscal Studies (Block Release)-Harare</option>			                                                                              
                                                                                												
                                                                                </select>
										<span class="fa fa-check form-control-feedback" aria-hidden="true"></span>
										<span id="inputSuccess2Status" class="sr-only">(success)</span>
									</div>
                                                                        <div class="form-group has-success has-feedback">
										<label class="control-label" for="inputSuccess2">Fourth Choice (Block Programmes)</label>
										<input type="hidden" name="choice_block" value="4"></input>
                                                                                <select class="form-control" name="blockprog" value="">
                                                                            <option value="">Click To Select 4th Choice</option>
													<option value="BPEB" ${blockprogrammes[0][1] == 'BPEB' ? 'selected' : ''}>Bachelor of Science Honours Degree in Property Development and Estate Management</option>
<option value="BQSB-HRE" ${blockprogrammes[3][1] == 'BQSB-HRE' ? 'selected' : ''}>Bachelor of Quantity Surveying Honours Degree</option>
<option value="BSC-MW" ${blockprogrammes[3][1] == 'BSC-MW' ? 'selected' : ''}>Bachelor of Science Honours Degree in Midwifery</option>
<option value="CACB" ${blockprogrammes[3][1] == 'CACB' ? 'selected' : ''}>Bachelor of Commerce Honours Degree in Accounting</option>
<option value="CBU-MKTB" ${blockprogrammes[3][1] == 'CBU-MKTB' ? 'selected' : ''}>Bachelor of Commerce Honours Degree in Marketing</option>
<option value="CFI-HRE" ${blockprogrammes[3][1] == 'CFI-HRE' ? 'selected' : ''}>Bachelor of Commerce Honours Degree in Finance</option>-->
<option value="CIN-RSKB" ${blockprogrammes[3][1] == 'CIN-RSKB' ? 'selected' : ''}>Bachelor of Commerce Honours Degree in Risk Management and Insurance</option>
<option value="EAD-AAD" ${blockprogrammes[3][1] == 'EAD-AAD' ? 'selected' : ''}>Bachelor of Design Education Honours (BDesED Hons) in Applied Art and Design</option>
<option value="EAD-CTF" ${blockprogrammes[3][1] == 'EAD-CTF' ? 'selected' : ''}>Bachelor of Design Education Honours (BDesED Hons) in Clothing, Textile and Fashion Design</option>
<option value="EAD-DTE" ${blockprogrammes[3][1] == 'EAD-DTE' ? 'selected' : ''}>Bachelor of Design Education Honours (BDesED Hons) in Design and Technology</option>
<option value="EPH" ${blockprogrammes[3][1] == 'EPH' ? 'selected' : ''}>Bachelor of Environmental Science Honours Degree in Public Health</option>
<option value="IRAB" ${blockprogrammes[3][1] == 'IRAB' ? 'selected' : ''}>Bachelor of Science Honours Degree in Records and Archives Management</option>
<option value="TBE-ADD" ${blockprogrammes[3][1] == 'TBE-ADD' ? 'selected' : ''}>Bachelor of Education Honours Degree in Art and Design</option>
<option value="TBE-TXT" ${blockprogrammes[3][1] == 'TBE-TXT' ? 'selected' : ''}>Bachelor of Education Honours Degree in Clothing Textile and Fashion Design</option>
<option value="TTE-AAD" ${blockprogrammes[3][1] == 'TTE-AAD' ? 'selected' : ''}>Bachelor of Technical Teacher Education Honours Degree in Applied Art and Design</option>
<option value="TTE-CCE" ${blockprogrammes[3][1] == 'TTE-CCE' ? 'selected' : ''}>Bachelor of Technical Education Honours Degree in Civil and Construction  Engineering</option>
<option value="TTE-EEE" ${blockprogrammes[3][1] == 'TTE-EEE' ? 'selected' : ''}>Bachelor of Technical Education Honors Degree in Electrical and Electronic Engineering</option>
<option value="TTE-TXT" ${blockprogrammes[3][1] == 'TTE-TXT' ? 'selected' : ''}>Bachelor of Technical Education Honours Degree in Textile Technology</option>												
<option value="EST-BIO" ${blockprogrammes[3][1] == 'EST-BIO' ? 'selected' : ''}>Bachelor of Science Education Honours (BScED Hons) in Biology</option>
<option value="EST-CHE" ${blockprogrammes[3][1] == 'EST-CHE' ? 'selected' : ''}>Bachelor of Science Education Honours (BScED Hons) in Chemistry</option>
<option value="EST-CSC" ${blockprogrammes[3][1] == 'EST-CSC' ? 'selected' : ''}>Bachelor of Science Education Honours (BScEd Hons) in Computer Science</option>																						
<option value="EST-PHY" ${blockprogrammes[3][1] == 'EST-PHY' ? 'selected' : ''}>Bachelor of Science Education Honours (BScEd Hons) in Physics</option>												
<option value="CFS" ${blockprogrammes[3][1] == 'CFS' ? 'selected' : ''}>Bachelor of Commerce Honours Degree in Fiscal Studies</option>			
<option value="CFS-HRE" ${blockprogrammes[3][1] == 'CFS-HRE' ? 'selected' : ''}>Bachelor of Commerce Honours Degree in Fiscal Studies (Block Release)-Harare</option>			                                                                              
                                                                                                                                                                
                                                                                </select>
										<span class="fa fa-check form-control-feedback" aria-hidden="true"></span>
										<span id="inputSuccess2Status" class="sr-only">(success)</span>
									</div>
                                                                        <div class="form-group has-success has-feedback">
										<label class="control-label" for="inputSuccess2">Fifth Choice (Block Programmes)</label>
										<input type="hidden" name="choice_block" value="5"></input>
                                                                                <select class="form-control" name="blockprog" value="">
                                                                            <option value="" >Click To Select 5th Choice</option>
												<option value="BPEB" ${blockprogrammes[0][1] == 'BPEB' ? 'selected' : ''}>Bachelor of Science Honours Degree in Property Development and Estate Management</option>
<option value="BQSB-HRE" ${blockprogrammes[4][1] == 'BQSB-HRE' ? 'selected' : ''}>Bachelor of Quantity Surveying Honours Degree</option>
<option value="BSC-MW" ${blockprogrammes[4][1] == 'BSC-MW' ? 'selected' : ''}>Bachelor of Science Honours Degree in Midwifery</option>
<option value="CACB" ${blockprogrammes[4][1] == 'CACB' ? 'selected' : ''}>Bachelor of Commerce Honours Degree in Accounting</option>
<option value="CBU-MKTB" ${blockprogrammes[4][1] == 'CBU-MKTB' ? 'selected' : ''}>Bachelor of Commerce Honours Degree in Marketing</option>
<option value="CFI-HRE" ${blockprogrammes[4][1] == 'CFI-HRE' ? 'selected' : ''}>Bachelor of Commerce Honours Degree in Finance</option>-->
<option value="CIN-RSKB" ${blockprogrammes[4][1] == 'CIN-RSKB' ? 'selected' : ''}>Bachelor of Commerce Honours Degree in Risk Management and Insurance</option>
<option value="EAD-AAD" ${blockprogrammes[4][1] == 'EAD-AAD' ? 'selected' : ''}>Bachelor of Design Education Honours (BDesED Hons) in Applied Art and Design</option>
<option value="EAD-CTF" ${blockprogrammes[4][1] == 'EAD-CTF' ? 'selected' : ''}>Bachelor of Design Education Honours (BDesED Hons) in Clothing, Textile and Fashion Design</option>
<option value="EAD-DTE" ${blockprogrammes[4][1] == 'EAD-DTE' ? 'selected' : ''}>Bachelor of Design Education Honours (BDesED Hons) in Design and Technology</option>
<option value="EPH" ${blockprogrammes[4][1] == 'EPH' ? 'selected' : ''}>Bachelor of Environmental Science Honours Degree in Public Health</option>
<option value="IRAB" ${blockprogrammes[4][1] == 'IRAB' ? 'selected' : ''}>Bachelor of Science Honours Degree in Records and Archives Management</option>
<option value="TBE-ADD" ${blockprogrammes[4][1] == 'TBE-ADD' ? 'selected' : ''}>Bachelor of Education Honours Degree in Art and Design</option>
<option value="TBE-TXT" ${blockprogrammes[4][1] == 'TBE-TXT' ? 'selected' : ''}>Bachelor of Education Honours Degree in Clothing Textile and Fashion Design</option>
<option value="TTE-AAD" ${blockprogrammes[4][1] == 'TTE-AAD' ? 'selected' : ''}>Bachelor of Technical Teacher Education Honours Degree in Applied Art and Design</option>
<option value="TTE-CCE" ${blockprogrammes[4][1] == 'TTE-CCE' ? 'selected' : ''}>Bachelor of Technical Education Honours Degree in Civil and Construction  Engineering</option>
<option value="TTE-EEE" ${blockprogrammes[4][1] == 'TTE-EEE' ? 'selected' : ''}>Bachelor of Technical Education Honors Degree in Electrical and Electronic Engineering</option>
<option value="TTE-TXT" ${blockprogrammes[4][1] == 'TTE-TXT' ? 'selected' : ''}>Bachelor of Technical Education Honours Degree in Textile Technology</option>												
<option value="EST-BIO" ${blockprogrammes[4][1] == 'EST-BIO' ? 'selected' : ''}>Bachelor of Science Education Honours (BScED Hons) in Biology</option>
<option value="EST-CHE" ${blockprogrammes[4][1] == 'EST-CHE' ? 'selected' : ''}>Bachelor of Science Education Honours (BScED Hons) in Chemistry</option>
<option value="EST-CSC" ${blockprogrammes[4][1] == 'EST-CSC' ? 'selected' : ''}>Bachelor of Science Education Honours (BScEd Hons) in Computer Science</option>																						
<option value="EST-PHY" ${blockprogrammes[4][1] == 'EST-PHY' ? 'selected' : ''}>Bachelor of Science Education Honours (BScEd Hons) in Physics</option>												
<option value="CFS" ${blockprogrammes[4][1] == 'CFS' ? 'selected' : ''}>Bachelor of Commerce Honours Degree in Fiscal Studies</option>			
<option value="CFS-HRE" ${blockprogrammes[4][1] == 'CFS-HRE' ? 'selected' : ''}>Bachelor of Commerce Honours Degree in Fiscal Studies (Block Release)-Harare</option>			                                                                              
                                                                                                                                                                
                                                                                </select>
										<span class="fa fa-check form-control-feedback" aria-hidden="true"></span>
										<span id="inputSuccess2Status" class="sr-only">(success)</span>
									</div>
                                                                        <div class="form-group has-success has-feedback">
										<label class="control-label" for="inputSuccess2">Sixth Choice (Block Programmes)</label>
										<input type="hidden" name="choice_block" value="6"></input>
                                                                                <select class="form-control" name="blockprog" value="">
                                                                            <option value="">Click To Select 6th Choice</option>
													<option value="BPEB" ${blockprogrammes[0][1] == 'BPEB' ? 'selected' : ''}>Bachelor of Science Honours Degree in Property Development and Estate Management</option>
<option value="BQSB-HRE" ${blockprogrammes[5][1] == 'BQSB-HRE' ? 'selected' : ''}>Bachelor of Quantity Surveying Honours Degree</option>
<option value="BSC-MW" ${blockprogrammes[5][1] == 'BSC-MW' ? 'selected' : ''}>Bachelor of Science Honours Degree in Midwifery</option>
<option value="CACB" ${blockprogrammes[5][1] == 'CACB' ? 'selected' : ''}>Bachelor of Commerce Honours Degree in Accounting</option>
<option value="CBU-MKTB" ${blockprogrammes[5][1] == 'CBU-MKTB' ? 'selected' : ''}>Bachelor of Commerce Honours Degree in Marketing</option>
<option value="CFI-HRE" ${blockprogrammes[5][1] == 'CFI-HRE' ? 'selected' : ''}>Bachelor of Commerce Honours Degree in Finance</option>-->
<option value="CIN-RSKB" ${blockprogrammes[5][1] == 'CIN-RSKB' ? 'selected' : ''}>Bachelor of Commerce Honours Degree in Risk Management and Insurance</option>
<option value="EAD-AAD" ${blockprogrammes[5][1] == 'EAD-AAD' ? 'selected' : ''}>Bachelor of Design Education Honours (BDesED Hons) in Applied Art and Design</option>
<option value="EAD-CTF" ${blockprogrammes[5][1] == 'EAD-CTF' ? 'selected' : ''}>Bachelor of Design Education Honours (BDesED Hons) in Clothing, Textile and Fashion Design</option>
<option value="EAD-DTE" ${blockprogrammes[5][1] == 'EAD-DTE' ? 'selected' : ''}>Bachelor of Design Education Honours (BDesED Hons) in Design and Technology</option>
<option value="EPH" ${blockprogrammes[5][1] == 'EPH' ? 'selected' : ''}>Bachelor of Environmental Science Honours Degree in Public Health</option>
<option value="IRAB" ${blockprogrammes[5][1] == 'IRAB' ? 'selected' : ''}>Bachelor of Science Honours Degree in Records and Archives Management</option>
<option value="TBE-ADD" ${blockprogrammes[5][1] == 'TBE-ADD' ? 'selected' : ''}>Bachelor of Education Honours Degree in Art and Design</option>
<option value="TBE-TXT" ${blockprogrammes[5][1] == 'TBE-TXT' ? 'selected' : ''}>Bachelor of Education Honours Degree in Clothing Textile and Fashion Design</option>
<option value="TTE-AAD" ${blockprogrammes[5][1] == 'TTE-AAD' ? 'selected' : ''}>Bachelor of Technical Teacher Education Honours Degree in Applied Art and Design</option>
<option value="TTE-CCE" ${blockprogrammes[5][1] == 'TTE-CCE' ? 'selected' : ''}>Bachelor of Technical Education Honours Degree in Civil and Construction  Engineering</option>
<option value="TTE-EEE" ${blockprogrammes[5][1] == 'TTE-EEE' ? 'selected' : ''}>Bachelor of Technical Education Honors Degree in Electrical and Electronic Engineering</option>
<option value="TTE-TXT" ${blockprogrammes[5][1] == 'TTE-TXT' ? 'selected' : ''}>Bachelor of Technical Education Honours Degree in Textile Technology</option>												
<option value="EST-BIO" ${blockprogrammes[5][1] == 'EST-BIO' ? 'selected' : ''}>Bachelor of Science Education Honours (BScED Hons) in Biology</option>
<option value="EST-CHE" ${blockprogrammes[5][1] == 'EST-CHE' ? 'selected' : ''}>Bachelor of Science Education Honours (BScED Hons) in Chemistry</option>
<option value="EST-CSC" ${blockprogrammes[5][1] == 'EST-CSC' ? 'selected' : ''}>Bachelor of Science Education Honours (BScEd Hons) in Computer Science</option>																						
<option value="EST-PHY" ${blockprogrammes[5][1] == 'EST-PHY' ? 'selected' : ''}>Bachelor of Science Education Honours (BScEd Hons) in Physics</option>												
<option value="CFS" ${blockprogrammes[5][1] == 'CFS' ? 'selected' : ''}>Bachelor of Commerce Honours Degree in Fiscal Studies</option>			
<option value="CFS-HRE" ${blockprogrammes[5][1] == 'CFS-HRE' ? 'selected' : ''}>Bachelor of Commerce Honours Degree in Fiscal Studies (Block Release)-Harare</option>			                                                                              
                                                                                                                                                                
                                                                                </select>										<span class="fa fa-check form-control-feedback" aria-hidden="true"></span>
										<span id="inputSuccess2Status" class="sr-only">(success)</span>
									</div>
									
   <center style="color:red;">
                                        <%
                                            if (request.getParameter("message") == null) {
                                                out.println("Remember to click the submit button when done capturing Applicant Choice Details");
                                            } else {
                                                out.println(request. getParameter("message")+"</b>");
                                            }
                                        %>
                                    </center>		

                    <td><input class="btn btn-secondary dropdown-toggle" type="submit" id="dropdownMenuButton"></td>
                </tr>
               
                  <!--
                  
                  The was a nestable we tried before delete in need be
                <div class="myadmin-dd dd" id="nestable">
                                    <ol class="dd-list">
                                        <li class="dd-item" data-id="2">
                                            <div class="dd-handle"> Item 2 </div>
                                            <ol class="dd-list">
                                                <li class="dd-item" data-id="3">
                                                    <div class="dd-handle"> Item 3 </div>
                                                </li>
                                            </ol>
                                        </li>
                                    </ol>
                                </div>
                
                
                
                
                 <!-- Page wrapper  -->
                
        <!-- ============================================================== -->
   
            <!-- ============================================================== -->
            <!-- End Container fluid  -->
            <!-- ============================================================== -->
            <!-- ============================================================== -->
            <!-- footer -->
            <!-- ============================================================== -->
          
            <!-- ============================================================== -->
            <!-- End footer -->
            <!-- ============================================================== -->
        </div>
        <!-- ============================================================== -->
        <!-- End Page wrapper  -->
                
                
                
                
                
                
            </table>
                                </form>   
        
        
        
                                        </tbody>

                                   
                                     
                                    </table>
                                </div>
                            </div>
                        </div>
                    
                            </div>
                        </div>
                     </div>
                
                
                                






                                                
         
               
                                                

                <!-- My Content End-->    



                
                <!-- ============================================================== -->
                <!-- End PAge Content -->
                <!-- ============================================================== -->
                <!-- ============================================================== -->
                <!-- Right sidebar -->
                <!-- ============================================================== -->
                <!-- .right-sidebar -->
                <div class="right-sidebar">
                    <div class="slimscrollright">
                        <div class="rpanel-title"> Service Panel <span><i class="ti-close right-side-toggle"></i></span> </div>
                        <div class="r-panel-body">
                            <ul id="themecolors" class="m-t-20">
                                <li><b>With Light sidebar</b></li>
                                <li><a href="javascript:void(0)" data-theme="default" class="default-theme">1</a></li>
                                <li><a href="javascript:void(0)" data-theme="green" class="green-theme working">2</a></li>
                                <li><a href="javascript:void(0)" data-theme="red" class="red-theme">3</a></li>
                                <li><a href="javascript:void(0)" data-theme="blue" class="blue-theme">4</a></li>
                                <li><a href="javascript:void(0)" data-theme="purple" class="purple-theme">5</a></li>
                                <li><a href="javascript:void(0)" data-theme="megna" class="megna-theme">6</a></li>
                                <li class="d-block m-t-30"><b>With Dark sidebar</b></li>
                                <li><a href="javascript:void(0)" data-theme="default-dark" class="default-dark-theme">7</a></li>
                                <li><a href="javascript:void(0)" data-theme="green-dark" class="green-dark-theme">8</a></li>
                                <li><a href="javascript:void(0)" data-theme="red-dark" class="red-dark-theme">9</a></li>
                                <li><a href="javascript:void(0)" data-theme="blue-dark" class="blue-dark-theme">10</a></li>
                                <li><a href="javascript:void(0)" data-theme="purple-dark" class="purple-dark-theme">11</a></li>
                                <li><a href="javascript:void(0)" data-theme="megna-dark" class="megna-dark-theme ">12</a></li>
                            </ul>
                            <ul class="m-t-20 chatonline">
                                <li><b>Chat option</b></li>
                                <li>
                                    <a href="javascript:void(0)"><img src="resources/assets/images/users/1.jpg" alt="user-img" class="img-circle"> <span>Varun Dhavan <small class="text-success">online</small></span></a>
                                </li>
                                <li>
                                    <a href="javascript:void(0)"><img src="resources/assets/images/users/2.jpg" alt="user-img" class="img-circle"> <span>Genelia Deshmukh <small class="text-warning">Away</small></span></a>
                                </li>
                                <li>
                                    <a href="javascript:void(0)"><img src="resources/assets/images/users/3.jpg" alt="user-img" class="img-circle"> <span>Ritesh Deshmukh <small class="text-danger">Busy</small></span></a>
                                </li>
                                <li>
                                    <a href="javascript:void(0)"><img src="resources/assets/images/users/4.jpg" alt="user-img" class="img-circle"> <span>Arijit Sinh <small class="text-muted">Offline</small></span></a>
                                </li>
                                <li>
                                    <a href="javascript:void(0)"><img src="resources/assets/images/users/5.jpg" alt="user-img" class="img-circle"> <span>Govinda Star <small class="text-success">online</small></span></a>
                                </li>
                                <li>
                                    <a href="javascript:void(0)"><img src="resources/assets/images/users/6.jpg" alt="user-img" class="img-circle"> <span>John Abraham<small class="text-success">online</small></span></a>
                                </li>
                                <li>
                                    <a href="javascript:void(0)"><img src="resources/assets/images/users/7.jpg" alt="user-img" class="img-circle"> <span>Hritik Roshan<small class="text-success">online</small></span></a>
                                </li>
                                <li>
                                    <a href="javascript:void(0)"><img src="resources/assets/images/users/8.jpg" alt="user-img" class="img-circle"> <span>Pwandeep rajan <small class="text-success">online</small></span></a>
                                </li>
                            </ul>
                        </div>
                    </div>
                </div>
                <!-- ============================================================== -->
                <!-- End Right sidebar -->
                <!-- ============================================================== -->
            </div>
            <!-- ============================================================== -->
            <!-- End Container fluid  -->
            <!-- ============================================================== -->
            <!-- ============================================================== -->
            <!-- footer -->
            <!-- ============================================================== -->
            <footer class="footer">
                © 2018 NUST "Think in Other terms"
            </footer>
            <!-- ============================================================== -->
            <!-- End footer -->
            <!-- ============================================================== -->
        </div>
        <!-- ============================================================== -->
        <!-- End Page wrapper  -->
        <!-- ============================================================== -->
    </div>
    <!-- ============================================================== -->
    <!-- End Wrapper -->
    <!-- ============================================================== -->
    <!-- ============================================================== -->
    <!-- All Jquery -->
    <!-- ============================================================== -->
    <script src="resources/assets/plugins/jquery/jquery.min.js"></script>
    <!-- Bootstrap tether Core JavaScript -->
    <script src="resources/assets/plugins/bootstrap/js/popper.min.js"></script>
    <script src="resources/assets/plugins/bootstrap/js/bootstrap.min.js"></script>
    <!-- slimscrollbar scrollbar JavaScript -->
    <script src="resources/js/jquery.slimscroll.js"></script>
    <!--Wave Effects -->
    <script src="resources/js/waves.js"></script>
    <!--Menu sidebar -->
    <script src="resources/js/sidebarmenu.js"></script>
    <!--stickey kit -->
    <script src="resources/assets/plugins/sticky-kit-master/dist/sticky-kit.min.js"></script>
    <!--Custom JavaScript -->
    <script src="resources/js/custom.min.js"></script>
    <!-- jQuery peity -->
    <script src="resources/assets/plugins/peity/jquery.peity.min.js"></script>
    <script src="resources/assets/plugins/peity/jquery.peity.init.js"></script>
    <!-- ============================================================== -->
    <!-- Style switcher -->
    <!-- ============================================================== -->

   
    
    <!-- Start Script for collapsible table-->
    <script>
var acc = document.getElementsByClassName("accordion");
var i;

for (i = 0; i < acc.length; i++) {
    acc[i].addEventListener("click", function() {
        this.classList.toggle("active1");
        var panel = this.nextElementSibling;
        if (panel.style.display === "block") {
            panel.style.display = "none";
        } else {
            panel.style.display = "block";
        }
    });
}
</script>



   
   
   
        
        
        
        
     <!--   
  <script src="resources/assets/plugins/nestable/jquery.nestable.js"></script>
  <script type="text/javascript">
    $(document).ready(function() {
        // Nestable
        var updateOutput = function(e) {
            var list = e.length ? e : $(e.target),
                output = list.data('output');
            if (window.JSON) {
                output.val(window.JSON.stringify(list.nestable('serialize'))); //, null, 2));
            } else {
                output.val('JSON browser support required for this demo.');
            }
        };

        $('#nestable').nestable({
            group: 1
        }).on('change', updateOutput);

        $('#nestable2').nestable({
            group: 1
        }).on('change', updateOutput);

        updateOutput($('#nestable').data('output', $('#nestable-output')));
        updateOutput($('#nestable2').data('output', $('#nestable2-output')));

        $('#nestable-menu').on('click', function(e) {
            var target = $(e.target),
                action = target.data('action');
            if (action === 'expand-all') {
                $('.dd').nestable('expandAll');
            }
            if (action === 'collapse-all') {
                $('.dd').nestable('collapseAll');
            }
        });

        $('#nestable-menu').nestable();
    });
    </script>
    <!-- ============================================================== -->
    <!-- Style switcher -->
    <!-- ===

<!-- End Script for collapsible table-->



    
    
    
   


</body>

</html>
