<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page import="nust.systems.workingcrud.entities.NUSTUSDApplicant"%>
<%@page import="nust.systems.workingcrud.entities.NUSTUSDApplicantPK"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<html>
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <!-- Tell the browser to be responsive to screen width -->
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta name="description" content="">
        <meta name="author" content="">
        <!-- Favicon icon -->

        <title>Nust Management System</title>
        <!-- Bootstrap Core CSS -->
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
       <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
        <link href="resources/assets/plugins/bootstrap/css/bootstrap.min.css" rel="stylesheet">
        <link href="resources/assets/plugins/bootstrap/css/bootstrap.min.css" rel="stylesheet">
        <!-- Custom CSS -->
        <link href="resources/css/style.css" rel="stylesheet">
        <!-- You can change the theme colors from here -->
        <link href="resources/css/colors/blue.css" id="theme" rel="stylesheet">
        <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
        <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
        <!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
        <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
        
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
    </head>

    <body class="fix-header card-no-border">
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
                            <!-- Logo text --><span style="color: white">

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

                            
                        </ul>
                    </div>
                </nav>
            </header>
            <div>
                 <aside class="left-sidebar">
                    <!-- Sidebar scroll-->
                    <div class="scroll-sidebar" style="float:left; border:none; height:80px;">
                        <!-- Sidebar navigation-->
                        <div  style="border:no-border;">
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

                                        <div class="navbar1">
  <a href="${pageContext.request.contextPath}/chooseApplicantType"><img src="resources/assets/images/c41.png">New</a>
                                            <a id="link1"><img src="resources/assets/images/c11.png">Edit</a>

                                            <a id="link2"><img src="resources/assets/images/c11.png">View</a> 
                                            <a href="#"><img src="resources/assets/images/c41.png">Delete</a>
                                            <a id="link3"><img src="resources/assets/images/c51.png">Offer Leter</a>
                                            <a href="#"><img src="resources/assets/images/c91.png">Convert to Stud</a>
                                            <a href="#"><img src="resources/assets/images/c21.png">App. Dep</a>
                                            <a href="#"><img src="resources/assets/images/c21.png">App. Dep. List</a>
                                            <a href="#"><img src="resources/assets/images/c71.png">Show List</a>
                                            <a href="#"><img src="resources/assets/images/b11.png">Show Chart</a>
                                            <a href="#"><img src="resources/assets/images/c61.png">Refresh</a>
                                            <a href="#"><img src="resources/assets/images/a11.png">Clear Filter</a>
                                            
<!--                                            <div class="dropdown1">
                                            <a href="#" class="dropbtn1" ><img src="resources/assets/images/d2.png">Find</a>
                                            <div class="dropdown-content" style="position:absolute;" >
                                            <form name="search_input"  action="${pageContext.request.contextPath}/findApplicant">
                                            <select name='academicYear'  >
                                            <option value='0' selected>SELECT ACADEMIC YEAR</option>
                                            <option value='2015'>2015</option>
                                            <option value='2016'>2016</option>
                                            <option value='2017'>2017</option>
                                            <option value='2018'>2018</option>
                                            </select>
                                            <div class="dropdown pull-right m-r-10 hidden-sm-down">
                                            <input class="btn btn-info" type="submit" id="dropdownMenuButton"> 
                                            </div>
                                            <input type="text" placeholder="search" style="padding-left: 25px;height:35px;font-size:14pt;"  name="search_filter">
                                            </form>
                       
                                        </div>
                                      </div> -->

                                                    <button type="submit" class="btn btn-info dropdown-toggle" type="button" id="dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"><span class="glyphicon glyphicon-search" aria-hidden="true"></span></button>
                                                    <div class="dropdown-menu" aria-labelledby="dropdownMenuButton" style="padding:10px;">
                                    
                                    
                                    <form name="search_input"  action="${pageContext.request.contextPath}/findApplicant">
                                    <div><select name='academicYear' >
                                     <option value='0' selected>SELECT ACADEMIC YEAR &nbsp &nbsp &nbsp</option>
                                     <option value='2015'>2015</option>
                                     <option value='2016'>2016</option>
                                     <option value='2017'>2017</option>
                                     <option value='2018'>2018</option>
                                        </select></div> <br>
                                 
                                        <div> <input type="text" placeholder="search" style="padding-left: 25px;height:35px;font-size:14pt;"  name="search_filter"></div><br>
                                        <div> <input class="btn btn-info" type="submit" id="dropdownMenuButton"> </div>
                                </form>
                                                    </div>
                                                

                                    </div>

                                    </div>
                                            
                                            
                                            
                                </div>

                                     <div class="tab-pane  p-20" id="profile" role="tabpanel">Actions</div>
                                    <div class="tab-pane p-20" id="messages" role="tabpanel">Navigate</div>
                                            
                            </div>


                        </div>
                        <!-- End Sidebar navigation -->
                    </div>
                    <!-- End Sidebar scroll-->

                </aside>
            </div>

            <!-- ============================================================== -->
            <!-- End Left Sidebar - style you can find in sidebar.scss  -->
            <!-- ============================================================== -->
            <!-- ============================================================== -->
            <!-- Page wrapper  -->
            <!-- ============================================================== -->
            <div class="page-wrapper">
                <!-- ============================================================== -->
                <!-- Container fluid  -->
                <!-- ============================================================== -->
                <div class="container-fluid"> 
                    <!-- ============================================================== -->
                    <!-- Bread crumb and right sidebar toggle -->
                    <!-- ============================================================== -->
                    <div class="row page-titles">
                        <div class="col-md-6 col-8 align-self-center">

                            
                        </div>
                        <div class="col-md-6 col-4 align-self-center">

                            
                                
                               <div class="dropdown pull-right m-r-10 hidden-sm-down"> 
                                <form name="search_input"  action="${pageContext.request.contextPath}/unselectedbyno">
                                    <div class="dropdown pull-right m-r-10 hidden-sm-down">
                                        <input class="btn btn-info" type="submit" id="dropdownMenuButton"> 
                                    </div>
                                    <input type="text" placeholder="Applicant Number" style="padding-left: 25px;"  name="search_filter">
                                </form>
                                    
                                    
                                <form name="search_input"  action="${pageContext.request.contextPath}/unselectedbychoice">
                                    <div><select name='academicYear' >
                                     <option value='0' selected>SELECT ACADEMIC YEAR &nbsp &nbsp &nbsp</option>
                                     <option value='2015'>2015</option>
                                     <option value='2016'>2016</option>
                                     <option value='2017'>2017</option>
                                     <option value='2018'>2018</option>
                                        </select></div> <br>
                                    <div class="dropdown pull-right m-r-10 hidden-sm-down">
                                       &nbsp <input class="btn btn-info" type="submit" id="dropdownMenuButton"> 
                                    </div>
                                    <input type="text" placeholder="Program Choice" style="padding-left: 25px;height:35px;font-size:14pt;"  name="program_filter">
                                </form>    
                            </div>
                                
                                

                            <!--  <button class="btn pull-right hidden-sm-down btn-success"><i class="mdi mdi-plus-circle"></i> Create</button> -->

                        </div>
                    </div>
                    <!-- ============================================================== -->
                    <!-- End Bread crumb and right sidebar toggle -->
                    <!-- ============================================================== -->
                    <!-- ============================================================== -->
                    <!-- Start Page Content -->
                    <!-- ============================================================== -->
                    <div class="row">
                        <div class="col-12">
                            <div class="card">
                                <div class="card-body">
                                    <h4 class="card-title"><c:out value="${count}" /> Unselected Applicants for: <c:out value="${progCode}" /></h4>
                                    <h6 class="card-subtitle">
                                        <a href="${pageContext.request.contextPath}/" class="btn btn-info"><i class="fa fa-check"></i> All Applicants</a>
                                        <a href="${pageContext.request.contextPath}/selected" class="btn btn-info"><i class="fa fa-undo"></i> Selected Applicants</a>
                                    </h6>
                                    <div class="table-responsive">
                                        <table id="demo-foo-addrow" class="table m-t-30 table-hover contact-list" data-page-size="75"  >
                                            <thead>
                                                <tr>
                                                    <th >No.</th>
                                                    <th>Customer No.</th>
                                                    <th></th>
                                                    <th>Cell</th>
                                                    <th>Bar Code</th>
                                                    <th>Year</th>
                                                    <th>National I.d No.</th>
                                                    <th>Sex</th>
                                                    <th>Surname</th>
                                                    <th>Forenames</th>
                                                    <th>Selected Programme</th>
                                                    <th>Program Class</th>
                                                    <th>Entry Type</th>
                                                    <th>Processed</th>
                                                </tr>
                                            </thead>
                                             <tbody>
                                                 <tr>
                                                    
                                                   <c:forEach  var="applicant" items="${getunSelectedApplicants}"  >
                                                       <td><c:out value="${applicant.getNUSTUSDApplicantPK().no}" /></td>
                                                       <td><c:out value="${applicant.getNUSTUSDApplicantPK().customerNo}" /></td>
                                                   <td>
                                                    <button type="submit" class="btn btn-info dropdown-toggle" type="button" id="dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"><span class="glyphicon glyphicon-option-horizontal" aria-hidden="true"></span></button>
                                                    <div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
                                                        <a class="dropdown-item" href="${pageContext.request.contextPath}/viewApplicant?id=${applicant.getNUSTUSDApplicantPK().no}" >View</a> <a class="dropdown-item" href="${pageContext.request.contextPath}/editApplicant?id=${applicant.getNUSTUSDApplicantPK().no}" >Edit</a>  <a class="dropdown-item" href="${pageContext.request.contextPath}/editApplicant?id=${applicant.getNUSTUSDApplicantPK().no}">Delete</a>
                                                    </div>
                                                </td>
                                                       <td><c:out value="${applicant.cell}" /></td>
                                                       <td><c:out value="${applicant.barcode}" /></td>
                                                       <td><c:out value="${applicant.year}" /></td>
                                                       <td><c:out value="${applicant.nationalIDNo}" /></td>
                                                       <td><!-- Start of choices -->
                                                <c:set var="status" scope="session" value="${applicant.sex}"/>
                                                 
                               
                                      
           
            <fmt:parseNumber var="i" integerOnly="false" 
                       type="number" value="${status}" />
            <c:choose>
                <c:when  test="${i ==1}">
                   <p>Male</p>
                </c:when>
                <c:when  test="${i ==2}">
                   <p>Female</p>
                </c:when>   
             
                <c:otherwise>
                    <p >NULL</p>
                </c:otherwise>
            </c:choose>
            <!-- End of choices --></td> 
                                                       <td><c:out value="${applicant.surname}"/></td> 
                                                       <td><c:out value="${applicant.forenames}"/></td>
                                                       <td><c:out value="${applicant.selectedProgramme}"/></td> 
                                                       <td><c:out value="${applicant.programmeClass}"/></td>
                                                       <td><!-- Start of choices -->
                                                <c:set var="status" scope="session" value="${applicant.entryType}"/>
                                                 
                               
                                      
           
            <fmt:parseNumber var="i" integerOnly="false" 
                       type="number" value="${status}" />
            <c:choose>
                <c:when  test="${i ==1}">
                   <p>Normal</p>
                </c:when>
                <c:when  test="${i ==2}">
                   <p>Parallel</p>
                </c:when>
                 <c:when  test="${i ==3}">
                   <p>Special</p>
                </c:when>
                <c:when  test="${i ==4}">
                   <p>Postgraduate</p>
                </c:when> 
             
                <c:otherwise>
                    <p >NULL</p>
                </c:otherwise>
            </c:choose>
            <!-- End of choices --></td>
                                                       <td><!-- Start of choices -->
                                                <c:set var="status" scope="session" value="${applicant.processed}"/>
                                                 
                               
                                      
           
            <fmt:parseNumber var="i" integerOnly="false" 
                       type="number" value="${status}" />
            <c:choose>
                <c:when  test="${i ==1}">
                   <input type="checkbox" class="check" id="minimal-checkbox-2" checked>
                </c:when>
                <c:when  test="${i ==0}">
                   <input type="checkbox" class="check" id="minimal-checkbox-2">
                </c:when>   
             
                <c:otherwise>
                    <p >NULL</p>
                </c:otherwise>
            </c:choose>
            <!-- End of choices --></td>
                                                   </tr>
                                                   </c:forEach>
                                                  
                                               </tbody>
                                            <tfoot>
                                                <tr>

                                            <div id="add-contact" class="modal fade in" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
                                                <div class="modal-dialog">
                                                    <div class="modal-content">

                                                        <div class="modal-body">
                                                            <from class="form-horizontal form-material">
                                                                <div class="form-group">
                                                                    <div class="col-md-12 m-b-20">
                                                                        <input type="text" class="form-control" placeholder="Type name"> </div>
                                                                    <div class="col-md-12 m-b-20">
                                                                        <input type="text" class="form-control" placeholder="Email"> </div>
                                                                    <div class="col-md-12 m-b-20">
                                                                        <input type="text" class="form-control" placeholder="Phone"> </div>
                                                                    <div class="col-md-12 m-b-20">
                                                                        <input type="text" class="form-control" placeholder="Designation"> </div>
                                                                    <div class="col-md-12 m-b-20">
                                                                        <input type="text" class="form-control" placeholder="Age"> </div>
                                                                    <div class="col-md-12 m-b-20">
                                                                        <input type="text" class="form-control" placeholder="Date of joining"> </div>
                                                                    <div class="col-md-12 m-b-20">
                                                                        <input type="text" class="form-control" placeholder="Salary"> </div>
                                                                    <div class="col-md-12 m-b-20">
                                                                        <div class="fileupload btn btn-danger btn-rounded waves-effect waves-light"><span><i class="ion-upload m-r-5"></i>Upload Contact Image</span>
                                                                            <input type="file" class="upload"> </div>
                                                                    </div>
                                                                </div>
                                                            </from>
                                                        </div>
                                                        <div class="modal-footer">
                                                            <button type="button" class="btn btn-info waves-effect" data-dismiss="modal">Save</button>
                                                            <button type="button" class="btn btn-default waves-effect" data-dismiss="modal">Cancel</button>
                                                        </div>
                                                    </div>
                                                    <!-- /.modal-content -->
                                                </div>
                                                <!-- /.modal-dialog -->
                                            </div>
                                            <td colspan="7">
                                                <div class="text-right">
                                                    <ul class="pagination"> </ul>
                                                </div>
                                            </td>
                                            </tr>
                                            </tfoot>
                                        </table>
                                    </div>
                                </div>
                            </div>
                            <!-- Column -->

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
                        <footer class="footer"> © 2018 NUST "Think in Other terms"</footer>
                        <!-- ============================================================== -->
                        <!-- End footer -->
                        <!-- ============================================================== -->
                    </div>
                    <!-- ============================================================== -->
                    <!-- End Page wrapper  -->
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
                    <!-- Footable -->
                    <script src="resources/assets/plugins/footable/js/footable.all.min.js"></script>
                    <script src="resources/assets/plugins/bootstrap-select/bootstrap-select.min.js" type="text/javascript"></script>
                    <!--FooTable init-->
                    <script src="resources/js/footable-init.js"></script>
                    <!-- ============================================================== -->
                    <!-- Style switcher -->
                    <!-- ============================================================== -->
                    <script src="resources/assets/plugins/styleswitcher/jQuery.style.switcher.js"></script>
                    </body>
                    </html>
