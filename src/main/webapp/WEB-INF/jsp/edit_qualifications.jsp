<%@page import="nust.systems.workingcrud.entities.NUSTUSDApplicantChoice" %>
<%@page import="nust.systems.workingcrud.entities.NUSTUSDApplicantEducation"%>
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

                            
                        </div >
                        <div class="col-md-6 col-4 align-self-center">
                            
                            <!-- Start test code -->
                             <form>
                                 <!-- onchange="javascript: if(this.value != '0') this.form.submit(); else alert('hello');" -->

 </form>
                                
                            </div>
                            <!-- End test code -->
                            
                            <%
                            

//int selectedItem=Integer.parseInt(request.getParameter("Points"));

//if(request.getParameter("academicYear")!=null)
//{
//String k=request.getParameter("academicYear");
//request.setAttribute("AcYear", k);
//}


                            %>


                    

                        </div>
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
                 
                            
                 <div class="col-lg-12">   
              
   <div >
                            <div class="card-body">
                               <h2>Qualifications</h2>
                                <div class="table-responsive ">
                                    <form action="${pageContext.request.contextPath}/updateQualification1">
                                    <table class="table table-striped" style="border: 1px solid #dee2e6">
                                        
                                        
                                    <thead>
                                        <tr>
                                             <th>Programme Description</th>
                                           
                                            <th>Examination Body</th>
                                             <th>Level</th>
                                     
                                             <th>Exam Date</th>
                                            <th>Classification</th>
                                            
                                            
                                           
                                            
                                           
                                            
                                          
                                           
                                           
                                        </tr>
                                    </thead>
                                                                            <tbody>
                                        
                                        
                                            <c:forEach  var="lines" items= '<%= request.getAttribute("qualifications") %>'>
                                            <tr>    
                                            <td><input type="text" class="form-control" value="${lines.getProgrammeDescription()}" readonly/></td>
                                            
                                             
                                             <td><input type="text" class="form-control" value="${lines.getExaminationBody()}" name="exambody"/></td>
                                             
                                             
                                             
                                             <td>
                                                 
                                                 
                                                 
                                                   <c:set var="status" scope="session" value="${lines.getLevel()}"/>
                                                 
                                                   <select class="form-control" name="levelI"   value="">                 
           
            <fmt:parseNumber var="i" integerOnly="false" 
                       type="number" value="${status}" />
            <c:choose>
                <c:when  test="${i ==1}">
                  <option value="1" >O Level</option>
                </c:when>
                <c:when  test="${i == 2}">
                <option value="2" >A Level</option>               
                </c:when>   
             
                <c:otherwise>
                    <p >Failed to execute</p>
                </c:otherwise>
            </c:choose>
            <!-- End of choices --> 
            
             <option value="1" >O Level </option>
             <option value="2">A Level</option>
                    
                                                  
                                                  
                                              
                                             </select> 
                                                
                                                 
                                                 
                                                 
                                                 
                                                 
                                                 
                                                 <input type="hidden"  class="form-control" value="${lines.getLevel()}"/>
                                                 
                                             </td> 
                                             <td><c:out value="${lines.getExamDate()}"/></td> 
                                             
                                            
                                              <td>
                                              <!--   <input type="text" name="classification" class="form-control" value="${lines.getClassification()}"/> 
                                                 
                                                  --> 
                                                  
                                                 <c:set var="aze" scope="session" value="${lines.getClassification()}"/>
                                                 <c:set var="age" scope="session" value="A"/>
                                                 <c:set var="aaa" scope="session" value="B"/>
                                                 <c:set var="ace" scope="session" value="C"/>
                                                 <c:set var="ade" scope="session" value="D"/>
                                                 <c:set var="afe" scope="session" value="E"/>
                                                
                                                 <select  name="classification" class="form-control" value=""/>

                                                 <c:choose>
                                                 <c:when test="${aze == age}">
                                                    <option value="A" >A</option>
                                                 </c:when>
                                                 <c:when test="${aze == aaa}" >
                                                   <option value="B" >B</option>
                                                 </c:when>
                                                    <c:when test="${aze == ace}" >
                                                    <option value="C" >C</option>
                                                 </c:when>
                                                
                                                 <c:when test="${aze == ade}" >
                                                    <option value="D" >D</option>
                                                 </c:when>
                                                    
                                                    <c:when test="${aze == afe}" >
                                                     <option value="E" >E</option>
                                                 </c:when>
                                                    
                                                    <c:otherwise>
                                                    <option value="F" >F</option>
                                                 </c:otherwise>
                                                  
                                                    </c:choose>
 
                                                    
                                                     <option value="A" >A</option>
                                                     <option value="B">B</option>
                                                     <option value="C">C</option>
                                                     <option value="D">D</option>
                                                     <option value="E">E</option>
                                                     <option value="F">F</option>
                                                 </select> 
                                                 
                                                 
                                                 
                                             </td>
                                             
                                             
                                             
                                             
                                             
                                             
                                             <td><input type="hidden"  value="${lines.getSubjectPoints()}"/></td>                                               
                                              
                                             <td><input type="hidden" class="form-control" name="subjectCodeF" value="${lines.getSubject()}"/>
                                                 <input type="hidden" name="subjectCodeI" value="${lines.getSubject()}"/>
                                              </td> 
                                              
                                              <td><input type="hidden" class="form-control"  name="appNo" value="${lines.getNUSTUSDApplicantQualificationPK().getApplicantNo()}" readonly/></td>
                                              <td><input type="hidden" class="form-control"  name="code" value="${lines.getNUSTUSDApplicantQualificationPK().getCode()}" readonly/></td>

                                              

                                                                  
    
                                            
                                                    
                                                    
                                          
                                        </tr>
                                        
                                        </c:forEach>  
                                    </tbody>
                                    </table>
                                                                        <input class="btn btn-secondary dropdown-toggle" type="submit" id="dropdownMenuButton" placeholder="Submit">

                                </form>
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
             <footer class="footer"> © 2018 NUST "Think in Other terms" </footer>
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

