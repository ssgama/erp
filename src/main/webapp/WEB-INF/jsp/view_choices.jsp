
<%@page import="nust.systems.workingcrud.entities.NUSTUSDApplicant" %>
<%@page import="nust.systems.workingcrud.entities.NUSTUSDApplicantChoice" %>
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
    <title>Nust Management System</title>
    <!-- Bootstrap Core CSS -->
    
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

        <!-- ============================================================== -->
        <!-- End Left Sidebar - style you can find in sidebar.scss  -->
        <!-- ============================================================== -->
        <!-- ============================================================== -->
        <!-- Page wrapper  -->
        <!-- ============================================================== -->
        <div>
            <!-- ============================================================== -->
            <!-- Container fluid  -->
            <!-- ============================================================== -->
            <div class="container-fluid">
                <!-- ============================================================== -->
                <!-- Bread crumb and right sidebar toggle -->
                <!-- ============================================================== -->
                <div class="row page-titles">


                </div>

                <!-- ============================================================== -->
                <!-- End Bread crumb and right sidebar toggle -->
                <!-- ============================================================== -->
                <!-- ============================================================== -->
                <!-- Start Page Content -->
                <!-- ============================================================== -->
                <div class="row">
                    <!-- column -->
                    
                    <!-- ============================================================== -->
                <!-- My Content Start-->
                <!-- ============================================================== -->
                 <% 

                 %> 
 
             <div class="accordion ">Applicant Choices</div>                   
                 <div class="col-lg-12">   
              
   <div >
                            <div class="card-body">
                               
                                <div class="table-responsive ">
                                    <table class="table table-striped" style="border: 1px solid #dee2e6">
                                        
                                        
                                    <thead>
                                        <tr>
                                             <th>Applicant No.</th>
                                           
                                            <th>Type</th>
                                             <th>Choice</th>
                                     
                                             <th>Committed</th>
                                            <th>Program Code</th>
                                            <th>Location</th>
                                            <th>Year</th>
                                            <th>Score</th>
                                            <th>Status</th> 
                                             <th>Ranking No.</th>
                                             <th>Algorithm Choice</th>
   
                                        </tr>
                                    </thead>
                                                                            <tbody>
                                        
                                        
                                            <c:forEach  var="lines" items= '<%= request.getAttribute("choices") %>'>
                                            <tr>    
                                            <td><c:out value="${lines.getNUSTUSDApplicantChoicePK().getApplicantNo()}"/></td>
                                            
                                             
                                             <td><c:out value="${lines.getNUSTUSDApplicantChoicePK().getType()}"/></td>
                                             <td><c:out value="${lines.getNUSTUSDApplicantChoicePK().getChoice()}"/></td> 
                                           
                                             
                                             <td>
                                                 
                                                 <!-- Start of choices -->
                                                <c:set var="status" scope="session" value="${lines.getCommited()}"/>
                                                 
                               
                                      
           
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
                    <p >Failed to execute</p>
                </c:otherwise>
            </c:choose>
            <!-- End of choices -->  
                                                   </td> 
                                             
                                      
                                             <td><c:out value="${lines.getNUSTUSDApplicantChoicePK().getProgrammeCode()}"/></td>
                                             <td><c:out value="${lines.getLocation()}"/></td>                                               
                                              
                                              <td><c:out value="${lines.getYear()}"/></td> 
                                              
                                              <td>
                                                                                              <!-- Start of choices -->
                                                <c:set var="status" scope="session" value="${lines.getScore()}"/>
                                                 
                               
                                      
           
            <fmt:parseNumber var="i" integerOnly="false" 
                       type="number" value="${lines.getScore()}" />
            <c:choose>
                <c:when  test="${i>0}">
                    <p> ${lines.getScore()} </p>
                </c:when>
                            
                <c:otherwise>
                    <p >0</p>
                </c:otherwise>
            </c:choose>
                              
                                                
                                                <!-- End of choices -->
                                              
                                              
                                              </td>
                                               <td><c:out value="${lines.getStatus()}"/></td>
                                               <td><c:out value="${lines.getRankingNo()}"/></td>
                                               <td><c:out value="${lines.getAlgorithimChoice()}"/></td>
                                              
                                              
                                              
                                            </c:forEach>  
                                                    
                                                    
                                          
                                        </tr>
                                    </tbody>
                                    </table>
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
                © 2018 NUST "Think in Other Terms"
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
    <script src="resources/assets/plugins/styleswitcher/jQuery.style.switcher.js"></script>
   
    
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
    <!-- End Script for collapsible table-->
</div>
    </body>
</html>
