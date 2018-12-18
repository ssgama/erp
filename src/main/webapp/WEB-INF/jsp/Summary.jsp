
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
    <title>Nust Management System</title>
    <!-- Bootstrap Core CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
       <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
        <link href="resources/assets/plugins/bootstrap/css/bootstrap.min.css" rel="stylesheet">
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
    <% NUSTUSDApplicant me=new NUSTUSDApplicant();
                    NUSTUSDApplicantQualification qf=new NUSTUSDApplicantQualification();
                    me=(NUSTUSDApplicant)request.getAttribute("applicant");
                 %>
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

                                            <a href="#"><img src="resources/assets/images/c41.png">New</a>
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

                <button class="accordion ">Applicants Summary</button>
                 <div class="col-lg-12" >   
              
                                                <div class="card col-lg-6" style="float: left">
                            <div class="card-body">
                                <div class="table-responsive ">
                                    <table class="table table-striped" style="border: 1px solid #dee2e6">
                                        <header><h4>Selected Applicants</h4></header>    
                                           <tbody>
                                            <tr>
                                                <td>Number of Applicants:</td>
                                                <td><c:out value="${noSelected}"></c:out></td> 
                                            </tr>
                                            <tr>
                                                <td>Male:</td>
                                                <td><c:out value="${maleSelected}"></c:out></td> 
                                            </tr>
                                            <tr>
                                                <td>Female:</td>
                                                <td><c:out value="${femaleSelected}"></c:out></td> 
                                            </tr>
                  
                                          
                                        </tbody>
                                   
                                     
                                    </table>
                                </div>
                            </div>
                        </div>
                    
                
                          
                                          <div class="card col-lg-6" style="float: left">
                            <div class="card-body">
                              
                                <div class="table-responsive ">
                                    <table class="table table-striped" style="border: 1px solid #dee2e6">
                                        <header><h4>Unselected Applicants</h4></header>    
                                        <tbody>
                                            <tr>
                                                <td>Number of Applicants:</td>
                                                <td><c:out value="${noUnselected}"></c:out></td> 
                                            </tr>
                                            <tr>
                                                <td>Male:</td>
                                                <td><c:out value="${maleUnselected}"></c:out></td> 
                                            </tr>
                                            <tr>
                                                <td>Female:</td>
                                                <td><c:out value="${femaleUnselected}"></c:out></td> 
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

                <!-- ============================================================== -->
                <!-- End My Content -->
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
    <script src="resources/assets/plugins/styleswitcher/jQuery.style.switcher.js"></script>
   
    
    <!-- Start Script for collapsible table-->

    <!-- End Script for collapsible table-->
</div>
    </body>
</html>
