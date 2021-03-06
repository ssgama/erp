    
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

                <button class="accordion ">Personal Data</button>
                 <div class="col-lg-12" >   
              
                                                <div class="card col-lg-6" style="float: left">
                            <div class="card-body">
                                <div class="table-responsive ">
                                    <table class="table table-striped" style="border: 1px solid #dee2e6">
                                        
    <tbody>
                                            <tr>
                                                <td>No.:</td>
                                                <td><%=me.getNUSTUSDApplicantPK().getNo()%></td>
                                            </tr>
                                            <tr>
                                                <td>Entry Type:</td>
                                                <td>
                                                
                                                <!-- Start of choices -->
                                                <c:set var="status" scope="session" value="<%=me.getEntryType()%>"/>
                                                 
                               
                                      
           
            <fmt:parseNumber var="i" integerOnly="false" 
                       type="number" value="${status}" />
            <c:choose>
                <c:when  test="${i ==1}">
                    <p> Normal </p>
                </c:when>
                <c:when  test="${i ==2}">
                    <p > Parallel </p>
                </c:when>   
                <c:when  test="${i ==3}">
                    <p > Special </p>
                </c:when> 
                <c:when  test="${i ==4}">
                    <p > Postgraduate </p>
                </c:when> 
                <c:otherwise>
                    <p >NULL</p>
                </c:otherwise>
            </c:choose>
                              
                                                
                                                <!-- End of choices -->
                                                
                                                
                                                
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>National ID.No:</td>
                                                <td><%=me.getNationalIDNo()%></td>
                                            </tr>
                                            <tr>
                                                <td>Year:</td>
                                                <td><%=me.getYear()%></td>
                                            </tr>
                                            <tr>
                                                <td>Title:</td>
                                                                                             
                                                
                                               <td>
                                                
                                                <!-- Start of choices -->
                                                <c:set var="status" scope="session" value="<%=me.getTitle()%>"/>
                                                 
                               
                                      
           
            <fmt:parseNumber var="i" integerOnly="false" 
                       type="number" value="${status}" />
            <c:choose>
                <c:when  test="${i ==1}">
                    <p> Mr. </p>
                </c:when>
                <c:when  test="${i ==2}">
                    <p > Mrs. </p>
                </c:when>   
                <c:when  test="${i ==3}">
                    <p > Miss. </p>
                </c:when> 
                <c:when  test="${i ==4}">
                    <p > Ms. </p>
                    </c:when> 
                <c:when  test="${i ==5}">
                    <p> Rev. </p>
                </c:when>
                <c:when  test="${i ==6}">
                    <p > Sr. </p>
                </c:when>   
                <c:when  test="${i ==7}">
                    <p > Dr. </p>
                </c:when> 
                <c:when  test="${i ==8}">
                    <p > Prof. </p>
                </c:when> 
                <c:otherwise>
                    <p >NULL</p>
                </c:otherwise>
            </c:choose>
                              
                                                
                                                <!-- End of choices -->
                                                
                                                
                                                
                                                </td> 
                                                
                                                
                                            </tr>
                                          <tr>
                                              <td>Forename</td>
                                              <td><%=me.getForenames()%></td>
                                          </tr>
                                           <tr>
                                              <td>Surname</td>
                                              <td><%=me.getSurname()%></td>
                                          </tr>
                                          <tr>
                                              <td>Previous Surname</td>
                                              <td><%=me.getPreviousSurname()%></td>
                                          </tr>
                                          <tr>
                                              <td>Marital Status</td>
                                              
                                              
                                               <td>
                                                
                                                <!-- Start of choices -->
                                                <c:set var="status" scope="session" value="<%=me.getMaritalStatus()%>"/>
                                                 
                               
                                      
           
            <fmt:parseNumber var="i" integerOnly="false" 
                       type="number" value="${status}" />
            <c:choose>
                <c:when  test="${i ==1}">
                    <p> Married </p>
                </c:when>
                <c:when  test="${i ==2}">
                    <p > Single </p>
                </c:when>   
             
                <c:otherwise>
                    <p >NULL</p>
                </c:otherwise>
            </c:choose>
                              
                                                
                                                <!-- End of choices -->
                                                
                                                
                                                
                                                </td> 
                                              
                                          </tr>
                                          <tr>
                                              <td>Sex</td>
                                              
                                              
                                              <td>
                                                
                                                <!-- Start of choices -->
                                                <c:set var="status" scope="session" value="<%=me.getSex()%>"/>
                                                 
                               
                                      
           
            <fmt:parseNumber var="i" integerOnly="false" 
                       type="number" value="${status}" />
            <c:choose>
                <c:when  test="${i ==1}">
                    <p> Male </p>
                </c:when>
                <c:when  test="${i ==2}">
                    <p > Female </p>
                </c:when>   
             
                <c:otherwise>
                    <p >NULL</p>
                </c:otherwise>
            </c:choose>
                              
                                                
                                                <!-- End of choices -->
                                                
                                                
                                                
                                                </td> 
                                              
                                          </tr>
                                          <tr>
                                              <td>Nationality</td>
                                              <td><%=me.getNationality()%></td>
                                          </tr>
                                          <tr>
                                              <td>Citizenship</td>
                                              <td><%=me.getCitizenship()%></td>
                                          </tr>
                                          <tr>
                                              <td>Permanent Resident</td>
                                              <td>
                                                  
                                               <!-- Start of choices -->
                                                <c:set var="status" scope="session" value="<%=me.getPermanentResident()%>"/>
                                                 
                               
                                      
           
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
            <!-- End of choices -->    
                                                  
                                                  
                                             
                                              </td>
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
                                        
    <tbody>
                                            <tr>
                                                <td>Residence Permit Description:</td>
                                                <td><%=me.getResidencePermitDescription()%></td> 
                                            </tr>
                                            <tr>
                                                <td>Period of Residence:</td>
                                                <td>
                                                
                                                <!-- Start of choices -->
                                                <c:set var="status" scope="session" value="<%=me.getPeriodofResidence()%>"/>
                                                 
                               
                                      
           
            <fmt:parseNumber var="i" integerOnly="false" 
                       type="number" value="${status}" />
            <c:choose>
                <c:when  test="${i > 1}">
                   <c:out value = "${i}"/>
                </c:when>   
             
                <c:otherwise>
                    <p ></p>
                </c:otherwise>
            </c:choose>
            <!-- End of choices -->   
                                                
                                                
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>Date of Birth:</td>
                                                <td><%=me.getDateofBirth()%></td>
                                            </tr>
                                            <tr>
                                                <td>Place of Birth:</td>
                                                <td><%=me.getPlaceofBirth()%></td>
                                            </tr>
                                            <tr>
                                                <td>Birth Certificate No.:</td>
                                                <td><%=me.getBirthCertificateNo()%></td>
                                            </tr>
                                          <tr>
                                              <td>Physical Disability:</td>
                                              <td><%=me.getPhysicalDisability()%></td>
                                          </tr>
                                          <tr>
                                              <td>Disability Code:</td>
                                              <td><%=me.getPhysicalDisabilityDetail()%></td>
                                          </tr>
                                          <tr>
                                              <td>Applicant Qualifications:</td>
                                              <td> 
                                                  <div class="btnspace"><c:out value="${count}"></c:out><a href="${pageContext.request.contextPath}/findQualification?id=<%=me.getNUSTUSDApplicantPK().getNo()%>"><button style="position: relative; float: right;" type="button" class="btn btn-primary btn-circle btn-lg" ><i class="fa fa-list"></i> </button></a></div></td>

                                          </tr>
                                          <tr>
                                              <td>Applicants Choices:</td>
                                              <td>
                                                  <div class="btnspace"><c:out value="${choicecount}"></c:out> <a href="${pageContext.request.contextPath}/findChoices?id=<%=me.getNUSTUSDApplicantPK().getNo()%>"><button style="position: relative; float: right;" type="button" class="btn btn-primary btn-circle btn-lg"><i class="fa fa-list"></i> </button></a></div></td>
                                          </tr>
                                          <tr>
                                              <td>AlevelPoints:</td>
                                              <td><c:out value="${pointsout}"></c:out></td>
                                          </tr>
                                          <tr>
                                              <td>Captured By:</td>
                                              <td><%=me.getCapturedBy()%></td>
                                          </tr>
                                          <tr>
                                              <td>Date Capture:</td>
                                              <td><%=me.getDateCaptured()%></td>
                                          </tr>
                  
                                          
                                        </tbody>

                                   
                                     
                                    </table>
                                </div>
                            </div>
                        </div>
                   
                                  
                        
                    
                
                          
                                </div>


                    
                    
                    
                    
                                 <button class="accordion ">Selection History</button>
                 <div class="col-lg-12" style="display: none">   
              
                                             <div class="card col-lg-6" style="float: left">
                            <div class="card-body">
                                <div class="table-responsive ">
                                    <table class="table table-striped" style="border: 1px solid #dee2e6">
                                        
    <tbody>
                                            <tr>
                                                <td>Selection Scoring History:</td>
                                                <td>XXXXXXXXXXX</td>
                                            </tr>
                                            <tr>
                                                <td>Selection Programme History:</td>
                                                <td>
                                                  <div class="btnspace"><c:out value="${noProgHist}"></c:out> <a href="${pageContext.request.contextPath}/ProgHistory?id=<%=me.getNUSTUSDApplicantPK().getNo()%>"><button style="position: relative; float: right;" type="button" class="btn btn-primary btn-circle btn-lg"><i class="fa fa-list"></i> </button></a></div>  </td>
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
                                        
    <tbody>
                                            <tr>
                                                <td>TotalFees:</td>
                                                <td><div class="btnspace"><c:out value="${fees}"></c:out> <a href="${pageContext.request.contextPath}/progFeeDetail?year=<%=me.getYear()%>&prog=<%=me.getSelectedProgramme() %>"><button style="position: relative; float: right;" type="button" class="btn btn-primary btn-circle btn-lg"><i class="fa fa-list"></i> </button></a></div></td>
                                            </tr>
                                        

                                        </tbody>

                                   
                                     
                                    </table>
                                </div>
                            </div>
                        </div>
                   
                                  

                </div>
                    
                    
                    
                    
                                <button class="accordion ">Communication</button>
                 <div class="col-lg-12" style="display: none">   
              
                        <div class="card col-lg-6" style="float: left">
                            <div class="card-body">
                                <div class="table-responsive ">
                                    <table class="table table-striped" style="border: 1px solid #dee2e6">
                                        
    <tbody>
                                            <tr>
                                                <td>Permanent Address:</td>
                                                <td><%=me.getPermanentAddress()%></td>
                                            </tr>
                                            <tr>
                                                <td>Permanent Address 2:</td>
                                                <td><%=me.getPermanentAddress2()%></td>
                                            </tr>
                                            <tr>
                                                <td>Permanent Address 3:</td>
                                                <td><%=me.getPermanentAddress3()%></td>
                                            </tr>
                                            <tr>
                                                <td>City:</td>
                                                <td><%=me.getCity()%></td>
                                            </tr>
                                            <tr>
                                                <td>Contact Address :</td>
                                                <td><%=me.getContactAddress()%></td>
                                            </tr>
                                            <tr>
                                                <td>Contact Address 1 :</td>
                                                <td><%=me.getContactAddress1()%></td>
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
                                        
    <tbody>
                                            <tr>
                                                <td>Contact Address 2 :</td>
                                                <td><%=me.getContactAddress2()%></td>
                                            </tr>
                                            <tr>
                                                <td>Phone (Home) :</td>
                                                <td><%=me.getPhoneH()%></td>
                                            </tr>
                                            <tr>
                                                <td>Phone(Other):</td>
                                                <td><%=me.getPhoneW()%></td>
                                            </tr>
                                            <tr>
                                                <td>Email :</td>
                                                <td><%=me.getEMail()%></td>
                                            </tr>
                                            <tr>
                                                <td>Cell  :</td>
                                                <td><%=me.getCell()%></td>
                                            </tr>
                                         
                                            

                                        </tbody>

                                   
                                     
                                    </table>
                                </div>
                            </div>
                        </div>
                   

                </div>    
                    



                                <button class="accordion ">Education</button>
                 <div class="col-lg-12" style="display: none">   
              
                        <div class="card col-lg-6" style="float: left">
                            <div class="card-body">
                                <div class="table-responsive ">
                                    <table class="table table-striped" style="border: 1px solid #dee2e6">
                                        
    <tbody>
                                            <tr>
                                                <td>Last School Att.:</td>
                                                <td><%=me.getLastSchoolAtt()%></td>
                                            </tr>
                                            <tr>
                                                <td>Last School Attended:</td>
                                                <td><%=me.getLastSchoolAttended()%></td>
                                            </tr>
                                            <tr>
                                                <td>Last School Start Year:</td>
                                                <td><%=me.getLastSchoolStartYear()%></td>
                                            </tr>
                                            <tr>
                                                <td>Last School End Year::</td>
                                                <td><%=me.getLastSchoolEndYear()%></td>
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
                                        
    <tbody>
                                            <tr>
                                                <td>Former Student:</td>
                                                <td>
                                                <!-- Start of choices -->
                                                <c:set var="status" scope="session" value="<%=me.getFormerStudent()%>"/>
                                                 
                               
                                      
           
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
            <!-- End of choices -->  
                                                
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>Barcode:</td>
                                                <td><%=me.getBarcode()%></td>
                                            </tr>
                                            <tr>
                                                <td>Programme Class:</td>
                                                <td><%=me.getProgrammeClass()%></td>
                                            </tr>                                          
                                            <tr>
                                                <td>Student Registration No:</td>
                                                <td><%=me.getNUSTUSDApplicantPK().getCustomerNo()%></td>
                                            </tr>
                

                                        </tbody>

                                   
                                     
                                    </table>
                                </div>
                            </div>
                        </div>
                   

                </div>
                    
                    
                                <button class="accordion ">Sponsorship</button>
                 <div class="col-lg-12" style="display: none">   
              
                        <div class="card col-lg-6" style="float: left">
                            <div class="card-body">
                                <div class="table-responsive ">
                                    <table class="table table-striped" style="border: 1px solid #dee2e6">
                                        
    <tbody>
                                            <tr>
                                                <td>Sponsor Types.:</td>
                                                
                                                
                                                 <td>
                                                
                                                <!-- Start of choices -->
                                                <c:set var="status" scope="session" value="<%=me.getSponsorType()%>"/>
                                                 
                               
                                      
           
            <fmt:parseNumber var="i" integerOnly="false" 
                       type="number" value="${status}" />
            <c:choose>
                <c:when  test="${i ==1}">
                    <p> Self </p>
                </c:when>
                <c:when  test="${i ==2}">
                    <p > Government </p>
                </c:when>
                <c:when  test="${i ==3}">
                    <p> Bank </p>
                </c:when>
                <c:when  test="${i ==4}">
                    <p > Company </p>
                </c:when>
             
                <c:otherwise>
                    <p >NULL</p>
                </c:otherwise>
            </c:choose>
                              
                                                
                                                <!-- End of choices -->
                                                
                                                
                                                
                                                </td> 
                                                
                                            </tr>
                                            <tr>
                                                <td>Sponsor name:</td>
                                                <td><%=me.getSponsorName()%></td>
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
                                        
    <tbody>
                                            <tr>
                                                <td>Staff Dependant:</td>
                                                <td>
                                                <!-- Start of choices -->
                                                <c:set var="status" scope="session" value="<%=me.getStaffDependant()%>"/>
                                                 
                               
                                      
           
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
            <!-- End of choices -->  
                                                
                                                
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>Applicant Staff No.:</td>
                                                <td>XXXXXXXXXXX</td>
                                            </tr>
                                            <tr>
                                                <td>Staff Member:</td>
                                                <td>
                                                
                                                <!-- Start of choices -->
                                                <c:set var="status" scope="session" value="<%=me.getStaffMember()%>"/>
                                                 
                               
                                      
           
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
            <!-- End of choices -->  
                                                    
                                                </td>
                                            </tr>
              

                                        </tbody>

                                   
                                     
                                    </table>
                                </div>
                            </div>
                        </div>
                   

                </div>                    
            
                                <button class="accordion ">Post Graduate</button>
                 <div class="col-lg-12" style="display: none">   
              
                        <div class="card col-lg-6" style="float: left">
                            <div class="card-body">
                                <div class="table-responsive ">
                                    <table class="table table-striped" style="border: 1px solid #dee2e6">
                                        
    <tbody>
                                            <tr>
                                                <td>Proposed Field of Study.:</td>
                                                <td><%=me.getProposedFieldofStudy()%></td>
                                            </tr>
                                            <tr>
                                                <td>Proposed Title of Thesis:</td>
                                                <td><%=me.getProposedTitleofThesis()%></td>
                                            </tr>
                                            <tr>
                                                <td>Place of Work:</td>
                                                <td><%=me.getPlaceofWork()%></td>
                                            </tr>
                                            <tr>
                                                <td>Work Address:</td>
                                                <td><%=me.getWorkAddress()%></td>
                                            </tr>
                                            <tr>
                                                <td>Facilities for Research:</td>
                                                <td><%=me.getFacilitiesforResearch()%></td>
                                            </tr>
                                            <tr>
                                                <td>Prop. Supervisor:</td>
                                                <td><%=me.getPropSupervisor()%></td>
                                            </tr>
                                            <tr>
                                                <td>Prop. Joint Supervisor:</td>
                                                <td><%=me.getPropJointSupervisor()%></td>
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
                                        
                                        <tbody>
                                            <tr>
                                                <td>Prop. Assoc. Supervisor:</td>
                                                <td><%=me.getPropAssocSupervisor()%></td>
                                            </tr>
                                            <tr>
                                                <td>Prop. Starting Date:</td>
                                                <td><%=me.getPropStartingDate()%></td>
                                            </tr>
                                            <tr>
                                                <td>Prop. Min. Study Period:</td>
                                                <td><%=me.getPropMinStudyPeriod()%></td>
                                            </tr>
                                            <tr>
                                                <td>Source of Funding (self):</td>
                                                <td><%=me.getSourceofFundingself()%></td>
                                            </tr>
                                            <tr>
                                                <td>Source of Funding (research):</td>
                                                <td><%=me.getSourceofFundingresearch()%></td>
                                            </tr>
                                             <tr>
                                                <td>Sponsorship Applied For:</td>
                                                <td></td>
                                            </tr>
              

                                        </tbody>

                                   
                                     
                                    </table>
                                </div>
                            </div>
                        </div>
                   

                </div> 
                                





<button class="accordion ">Official Use</button>
                 
<div class="col-lg-12" style="display: none">
	<div class="card col-lg-6" style="float: left">
		<div class="card-body">
			<div class="table-responsive ">
				<table class="table table-striped" style="border: 1px solid #dee2e6">
					<tbody>
						<tr>
							<td>Applicant Date</td>
							<td><%=me.getApplicationDate()%></td>
						</tr>
						
                                                <tr>
							<td>National I.D Verified</td>
							<td>
                                                        
                                                        <!-- Start of choices -->
                                                <c:set var="status" scope="session" value="<%=me.getNationalIDVerified()%>"/>
                                                 
                               
                                      
           
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
                              
                                                
                                                <!-- End of choices -->    
                                                            
                                                    
                                                            
                                                        </td>
						</tr>
						
                                                <tr>
							<td>Birth Certificate Verified</td>
							<td>
                                                        
                                                        <!-- Start of choices -->
                                                <c:set var="status" scope="session" value="<%=me.getBirthCertificateVerified()%>"/>
                                                 
                               
                                      
           
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
                              
                                                
                                                <!-- End of choices -->     
                                                            
                                                       
                                                        </td>
						</tr>
                                                
						<tr>
							<td> Marriage Cert. Verified</td>
							<td>
                                                        
                                                        <!-- Start of choices -->
                                                <c:set var="status" scope="session" value="<%=me.getMarriageCertVerified()%>"/>
                                                 
                               
                                      
           
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
                              
                                                
                                                <!-- End of choices -->       
                                                            
                                                            
                                                            
                              
                                                        
                                                        </td>
						</tr>
						
                                                <tr>
							<td>O'Level Cert. Verified :</td>
							<td>
                                                            
                                                        <!-- Start of choices -->
                                                <c:set var="status" scope="session" value="<%=me.getOLevelCertVerified()%>"/>
                                                 
                               
                                      
           
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
                              
                                                
                                                <!-- End of choices -->    
                                                            
                                                            
                                                            

                                                        
                                                        </td>
						</tr>
                                                
						<tr>
							<td>A'level Cert. Verified:</td>
							<td>
                                                        
                                                         <!-- Start of choices -->
                                                <c:set var="status" scope="session" value="<%=me.getALevelCertVerified()%>"/>
                                                 
                               
                                      
           
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
                              
                                                
                                                <!-- End of choices -->   
                                                            

                                                        
                                                        </td>
						</tr>
                                                
						<tr>
							<td>School Cert. Verified :</td>
							<td>
                                                            
                                                         <!-- Start of choices -->
                                                <c:set var="status" scope="session" value="<%=me.getSchoolCertVerified()%>"/>
                                                 
                               
                                      
           
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
                              
                                                
                                                <!-- End of choices -->       
                                                            
                                                        
                                                        
                                                        
                                                        </td>
						</tr>
						<tr>
							<td>Univeristy Cert. Verified</td>
							<td>
                                                        
                                                         <!-- Start of choices -->
                                                <c:set var="status" scope="session" value="<%=me.getUniversityCertVerified()%>"/>
                                                 
                               
                                      
           
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
                              
                                                
                                                <!-- End of choices -->
                                                        
                                                        
                                                        </td>
						</tr>
						<tr>
							<td>Other Cert. Verified:</td>
							<td>
                                                        
                                                        <!-- Start of choices -->
                                                <c:set var="status" scope="session" value="<%=me.getOtherCertVerified()%>"/>
                                                 
                               
                                      
           
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
                              
                                                
                                                <!-- End of choices -->    
                                                            
                                                        
                                                        </td>
						</tr>
						<tr>
							<td>Research doc. Seen:</td>
							<td>
                                                            
                                                        <!-- Start of choices -->
                                                <c:set var="status" scope="session" value="<%=me.getResearchDocSeen()%>"/>
                                                 
                               
                                      
           
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
                              
                                                
                                                <!-- End of choices -->      
                                                            
                                                            
                                                      
                                                        </td>
						</tr>
						<tr>
							<td>Acceptance Letter Received:</td>
							<td>
                                                        
                                                       <!-- Start of choices -->
                                                <c:set var="status" scope="session" value="<%=me.getAcceptanceLetterReceived()%>"/>
                                                 
                               
                                      
           
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
                              
                                                
                                                <!-- End of choices --> 
                                                            
                                                            
                                                        
                                                        </td>
						</tr>
						<tr>
							<td>Process Applicant :</td>
							<td>
                                                        
                                                        <!-- Start of choices -->
                                                <c:set var="status" scope="session" value="<%=me.getProcessApplicant()%>"/>
                                                 
                               
                                      
           
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
                              
                                                
                                                <!-- End of choices -->     
                                                            
                                                            

                                                        
                                                        </td>
						</tr>
						<tr>
							<td>Processed:</td>
							<td>
                                                    
                                                            
                                                     <!-- Start of choices -->
                                                <c:set var="status" scope="session" value="<%=me.getProcessed()%>"/>
                                                 
                               
                                      
           
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
            <!-- End of choices -->                  
                                                        

                                                        
                                                        </td>
						</tr>
						<tr>
							<td>Applicant Type:</td>
							
                                                        
                                                                      <td>
                                                
                                                <!-- Start of choices -->
                                                <c:set var="status" scope="session" value="<%=me.getApplicantType()%>"/>
                                                 
                               
                                      
           
            <fmt:parseNumber var="i" integerOnly="false" 
                       type="number" value="${status}" />
            <c:choose>
                <c:when  test="${i ==1}">
                    <p> Conventional </p>
                </c:when>
                <c:when  test="${i ==2}">
                    <p > Parallel </p>
                </c:when>
                <c:when  test="${i ==3}">
                    <p> Block </p>
                </c:when>
                            
                <c:otherwise>
                    <p >NULL</p>
                </c:otherwise>
            </c:choose>
                              
                                                
                                                <!-- End of choices -->
                                                
                                                
                                                
                                                </td> 
                                                        
						</tr>
						<tr>
							<td>Original Applicant No.</td>
							<td><%=me.getOriginalApplicantNo() %></td>
						</tr>
						<tr>
							<td>File Location</td>
							<td><%=me.getFileLocation() %></td>
						</tr>
						<tr>
							<td>Receipt Ack</td>
							<td><%=me.getReceiptAck() %></td>
						</tr>
						<tr>
							<td>Receipt Prev:</td>
							<td><%=me.getReceiptPrev() %></td>
						</tr>
						<tr>
							<td>Sought Transcript :</td>
							<td><%=me.getSoughtTranscript() %></td>
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
					<tbody>
						<tr>
							<td>Sought Ref:</td>
							<td><%=me.getSoughtRef() %></td>
						</tr>
						<tr>
							<td>Sought Ref 1:</td>
							<td><%=me.getSoughtRef1() %></td>
						</tr>
						<tr>
							<td>Received Transcript</td>
							<td><%=me.getReceivedTranscript() %></td>
						</tr>
						<tr>
							<td>Received Ref 1</td>
							<td><%=me.getReceivedRef1() %></td>
						</tr>
						<tr>
							<td>Received Ref 2:</td>
							<td><%=me.getReceivedRef2() %></td>
						</tr>
						<tr>
							<td>Received Ref 3</td>
							<td><%=me.getReceivedRef3() %></td>
						</tr>
						<tr>
							<td>P/A Admit :</td>
							<td><%=me.getPAAdmit() %></td>
						</tr>
						<tr>
							<td>Reject</td>
							<td><%=me.getReject() %></td>
						</tr>
						<tr>
							<td>Withdraws:</td>
							<td><%=me.getWithdraws() %></td>
						</tr>
						<tr>
							<td>Letter(RNQ):</td>
							<td><%=me.getLetterRNQ() %></td>
						</tr>
						<tr>
							<td>Select Programme :</td>
							<td><%=me.getSelectedProgramme() %></td>
						</tr>
						<tr>
							<td>Teaching Location</td>
							<td><c:out value="${location}"></c:out></td>
						</tr>
						<tr>
							<td>OnlineApplicantId</td>
							<td><%=me.getOnlineApplicantId() %></td>
						</tr>
						<tr>
							<td>Modified By</td>
							<td>XXXXXXXX</td>
						</tr>
						<tr>
							<td>Date Modified </td>
							<td>XXXXXXXXXXXX</td>
						</tr>
						<tr>
							<td>Applicant Deposit Override :</td>
							<td></td>
						</tr>
						<tr>
							<td>Overrider</td>
							<td></td>
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
                � 2018 NUST "Think in Other terms"
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
