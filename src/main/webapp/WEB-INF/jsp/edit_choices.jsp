
<%@page import="nust.systems.workingcrud.entities.NUSTUSDApplicantEducation"%>
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
    <link rel="icon" type="image/png" sizes="16x16" href="resources/assets/images/favicon.png">
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
    <% System.out.println("now in edit choice"); %>
    
  
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
                                    <form  action="${pageContext.request.contextPath}/updateChooice1"  >
                                    <table class="table table-striped" style="border: 1px solid #dee2e6">
                                        
                                        
                                    <thead>
                                        <tr>
                                             <th>Applicant No.</th>
                                           <th>Choice</th>
                                            <th>Type</th>
                                             
                                     
                                             
                                            <th>Program Code</th>
                                           
                                          
                                           
                                            
                                           
                                             
   
                                        </tr>
                                    </thead>
                                    
                                    
                                    
                                                                            <tbody>
                                                                                
                                                                           
                                                                               
                                        
                                            <c:forEach  var="lines" items= '<%= request.getAttribute("choices") %>'>
                                            <tr>    
                                                <td><input type="text" name="appNo" size="1" class="form-control" value="${lines.getNUSTUSDApplicantChoicePK().getApplicantNo()}" readonly/></td>
                                             
                                                
                                            <td><input type="text"  class="form-control" size="1" name="choyice" value="${lines.getNUSTUSDApplicantChoicePK().getChoice()}" readonly/></td> 
    
                                                 
                                                
                                                    
                                             <td>
                                                 <c:set var="status" scope="session" value="${lines.getNUSTUSDApplicantChoicePK().getType()}"/>
                                                 
                                                 <select class="form-control" name="type"   value="" readonly> 
                                                 
                                                 <fmt:parseNumber var="i" integerOnly="false" 
                       type="number" value="${status}" />
            <c:choose>
                <c:when  test="${i ==1}">
                  <option value="1" >Conventional</option>
                </c:when>
                <c:when  test="${i == 2}">
                <option value="2" >Paralel</option>               
                </c:when>    
                <c:when  test="${i == 3}">
                <option value="3" >Block</option>               
                </c:when> 
             
                <c:otherwise>
                    <p >Failed to execute</p>
                </c:otherwise>
            </c:choose>
            <!-- End of choices --> 
            
             <option value="1" >Conventional </option>
             <option value="2">Parralel</option>
             <option value="3">Block</option>       
                                                  
                                                  
                                              
                                             </select> 
                                             
                                             </td>
                                             
                                             
                                           
                                             
                                             <td>
                                                  <!-- Conventional Porgrammes -->
                                                 <c:set var="aze" scope="session" value="${lines.getNUSTUSDApplicantChoicePK().getProgrammeCode()}"/>
                                                 <c:set var="cac" scope="session" value="CAC"/>
                                                 <c:set var="sma" scope="session" value="SMA"/>
                                                 <c:set var="bpe" scope="session" value="BPE"/>
                                                 <c:set var="bar" scope="session" value="BAR"/>
                                                 <c:set var="bqs" scope="session" value="BQS"/>
                                                 <c:set var="cba" scope="session" value="CBA"/>
                                                 <c:set var="cbaim" scope="session" value="CBA-BIM"/>
                                                 <c:set var="cbumgtb" scope="session" value="CBU-MGTB"/>
                                                 <c:set var="cbumkt" scope="session" value="CBU-MKT"/>
                                                 <c:set var="cfi" scope="session" value="CFI"/>
                                                 <c:set var="cfs" scope="session" value="CFS"/>
                                                 <c:set var="cin" scope="session" value="CIN-ACT"/>
                                                  <c:set var="rsk" scope="session" value="CIN-RSK"/>
                                                  <c:set var="efw" scope="session" value="EFW"/>
                                                  <c:set var="ijm" scope="session" value="IJM"/>
                                                  <c:set var="ili" scope="session" value="ILI"/>
                                                  <c:set var="imp" scope="session" value="IMPAE"/>
                                                  <c:set var="ipu" scope="session" value="IPU"/>
                                                  <c:set var="ira" scope="session" value="IRA"/>
                                                  <c:set var="sch" scope="session" value="SCH"/>
                                                   <c:set var="sci" scope="session" value="SCI"/>
                                                  <c:set var="scs" scope="session" value="SCS"/>
                                                  <c:set var="sors" scope="session" value="SORS"/>
                                                  <c:set var="sph" scope="session" value="SPH"/>
                                                  <c:set var="sra" scope="session" value="SRA"/>
                                                   <c:set var="ssc" scope="session" value="SSC"/>
                                                   <c:set var="tce" scope="session" value="TCE"/>
                                                   <c:set var="tcw" scope="session" value="TCW"/>
                                                   <c:set var="tee" scope="session" value="TEE"/>
                                                   <c:set var="tfe" scope="session" value="TFE"/>
                                                   <c:set var="tie" scope="session" value="TIE"/>
                                                    <c:set var="esh" scope="session" value="ESH"/>
                                                    
                                                    
                                                       <!-- Parallel Porgrammes -->
                                                   <c:set var="bpep" scope="session" value="BPEP"/>
                                                   <c:set var="bqsp" scope="session" value="BQSP"/>
                                                  <c:set var="cacp" scope="session" value="CACP"/>
                                                   <c:set var="cbumgtp" scope="session" value="CBU-MGTP"/>
                                                   <c:set var="cbap" scope="session" value="CBAP"/>
                                                   <c:set var="cbumktp" scope="session" value="CBU-MKTP"/>
                                                   <c:set var="cfip" scope="session" value="CFIP"/>
                                                   <c:set var="cinrsk" scope="session" value="CIN-RSKP"/>
                                                   <c:set var="esph" scope="session" value="ESPH"/>
                                                   <c:set var="tcep" scope="session" value="TCEP"/>
                                                   <c:set var="tcwp" scope="session" value="TCWP"/>
                                                   <c:set var="tiep" scope="session" value="TIEP"/>
                                                   <c:set var="sorsp" scope="session" value="SORSP"/>
                                                   <c:set var="smap" scope="session" value="SMAP"/>
                                                   <c:set var="scsp" scope="session" value="SCSP"/>
                                                   <c:set var="scip" scope="session" value="SCIP"/>
                                                   <c:set var="sbbp" scope="session" value="SBBP"/>
                                                    <c:set var="ijmp" scope="session" value="IJMP"/>
                                                    <c:set var="ilip" scope="session" value="ILIP"/> 
                                                    <c:set var="bqsb" scope="session" value="ILIP"/>
                                                    
                                                    
                                                    
                                                    
                                                       <!-- Block Porgrammes -->
                                                   <c:set var="bpeb" scope="session" value="BQSB-HRE"/> 
                                                   <c:set var="bscmw" scope="session" value="BSC-MW"/> 
                                                   <c:set var="cacb" scope="session" value="CACB"/> 
                                                   <c:set var="cbumktb" scope="session" value="CBU-MKTB"/> 
                                                   <c:set var="cfihre" scope="session" value="CFI-HRE"/> 
                                                   <c:set var="cinrsk" scope="session" value="CIN-RSKB"/>
                                                   <c:set var="eadaad" scope="session" value="EAD-AAD"/>
                                                   <c:set var="eadctf" scope="session" value="EAD-CTF"/>
                                                    <c:set var="eaddte" scope="session" value="EAD-DTE"/>
                                                    <c:set var="eph" scope="session" value="EPH"/>
                                                   <c:set var="irab" scope="session" value="IRAB"/>
                                                   <c:set var="tbe" scope="session" value="TBE-ADD"/>
                                                   <c:set var="txt" scope="session" value=" TBE-TXT"/>
                                                   <c:set var="add" scope="session" value="TTE-AAD"/>
                                                   <c:set var="cce" scope="session" value="TTE-CCE"/>
                                                   <c:set var="ttte" scope="session" value="TTE-EEE"/>
                                                   <c:set var="ttetxt" scope="session" value="TTE-TXT"/>
                                                   <c:set var="estbio" scope="session" value="EST-BIO"/>
                                                   <c:set var="estche" scope="session" value="EST-CHE"/>
                                                   <c:set var="estcsc" scope="session" value="EST-CSC"/>
                                                   <c:set var="estphy" scope="session" value="EST-PHY"/>
                                                   <c:set var="cfshre" scope="session" value="CFS-HRE"/>
                                                   
                                                     <!-- PostGrad Porgrammes -->
                                                    
                                                <c:set var="cfshre" scope="session" value="CFS-HRE"/>
                                                <c:set var="barcp" scope="session" value="BARCP"/>
                                                <c:set var="mbefe" scope="session" value="MBFE"/>
                                                <c:set var="mbefere" scope="session" value="MBFE-HRE"/>
                                                <c:set var="mebc" scope="session" value="MEBC"/>
                                                <c:set var="mgph" scope="session" value="MGPH"/>
                                                <c:set var="miemeom" scope="session" value="MIE-MEOM"/>
                                                <c:set var="msom" scope="session" value="MIE-MSOM"/>
                                                <c:set var="mienp" scope="session" value="MIENP"/>
                                                <c:set var="mlao" scope="session" value="MLAO"/>
                                                 <c:set var="mlisp" scope="session" value="MLISP"/>
                                                <c:set var="mmkt" scope="session" value="MMKT"/>   
			                      <c:set var="mssscac" scope="session" value="MSC-CAC"/>
                                              <c:set var="mscccfs" scope="session" value="MSC-CFS"/>
				              <c:set var="cfshree" scope="session" value="MSC-CFSHRE"/>
			                      <c:set var="pmree" scope="session" value="MSC-CPM"/>
					      <c:set var="dmsc" scope="session" value="MSC-DM"/>
					      <c:set var="damhre" scope="session" value="MSC-DMHRE"/>
					      <c:set var="mlisp" scope="session" value="MSC-DS-2016"/>
                                               <c:set var="msscds" scope="session" value="MSCDS-HRE"/>
                                             <c:set var="dso" scope="session" value="MSC-DSO"/>
                                            <c:set var="amber" scope="session" value="EMBA-HRE"/>
                                            <c:set var="feng" scope="session" value="MSC-FENG"/>
                                            <c:set var="finu" scope="session" value="MSC-FINHRE"/>
                                            <c:set var="mscjimu" scope="session" value="MSC-IJM"/>
                                            <c:set var="ilimsc" scope="session" value="MSC-ILI"/>
                                             <c:set var="iraq" scope="session" value="MSC-IRA"/>
                                              <c:set var="msciis" scope="session" value="MSC-IS"/>
                                              <c:set var="mbbmsc" scope="session" value="MSC-MBB"/>
                                               
                                              
<c:set var="scsmsc" scope="session" value="MSE-CSC"/>
<c:set var="evsmsc" scope="session" value="MSE-EVS"/>
<c:set var="matmsc" scope="session" value="MSE-MAT"/>
<c:set var="phymsc" scope="session" value="MSE-PHY"/>
<c:set var="addmsc" scope="session" value="MTE-AAD"/>
<c:set var="ccemsc" scope="session" value="MTE-CCE"/>
<c:set var="ctfmsc" scope="session" value="MTE-CTF"/>
<c:set var="dtemsc" scope="session" value="MTE-DTE"/>
<c:set var="eemsc" scope="session" value="MTE-EEE"/>
<c:set var="miemsc" scope="session" value="MTE-MIE"/>
<c:set var="tegmsc" scope="session" value="MTE-TEG"/>
<c:set var="wstmsc" scope="session" value="MTE-WST"/>
<c:set var="mphcsm" scope="session" value="MSC-MPH"/>
<c:set var="mwemsc" scope="session" value="MSC-MWE"/>
<c:set var="smamsc" scope="session" value="MSC-SMA"/>
<c:set var="smabmsc" scope="session" value="MSC-SMAB"/>
<c:set var="smasors" scope="session" value="MSC-SORS"/>
<c:set var="nbbmse" scope="session" value="MSE-ABS"/>
<c:set var="biomsc" scope="session" value="MSE-BIO"/>
<c:set var="mttescs" scope="session" value="MTTE"/>
<c:set var="mttepscs" scope="session" value="MTTEP"/>
<c:set var="mtxtmsc" scope="session" value="MTXT"/>
<c:set var="mudmsc" scope="session" value="MUD"/>
<c:set var="pgdmsc" scope="session" value="PGDEEN"/>
<c:set var="lismsc" scope="session" value="PGDLIS"/>
<c:set var="mgtmsc" scope="session" value="MPHIL-MGT"/>
        
                     
                                  

                                                  
                                               
                                                   
                                                   
                                                   
                                                    <select  name="programcode"  class="form-control" value=""/>
                                                 
                                           
                                                 <c:choose>
                                                 <c:when test="${aze == cac}">
                                                    <option value="CAC" >Bachelor of Commerce Honours Degree in Accounting (Under Grad Conventional Programme) </option>
                                                 </c:when>
                                                 <c:when test="${aze == sma}" >
                                                   <option value="SMA" >Bachelor of Science Honours Degree in Applied Mathematics (Under Grad Conventional Programme)</option>
                                                 </c:when>
                                                    <c:when test="${aze == bpe}" >
                                                   <option value="BPE" >Bachelor of Science Honours Degree in Property Development and Estate Management (Under Grad Conventional Programme)</option>
                                                 </c:when>
                                                   <c:when test="${aze == bar}" >
                                                   <option value="BPE" >Bachelor of Architectural Studies Honours Degree (Under Grad Conventional Programme)</option>
                                                 </c:when>
                                                   
                                                    <c:when test="${aze == bqs}" >
                                                   <option value="BQS" >Bachelor of Quantity Surveying Honours Degree (Under Grad Conventional Programme)</option>
                                                 </c:when>
                                                   
                                                   <c:when test="${aze == cba}" >
                                                   <option value="CBA" >Bachelor of Commerce Honours Degree in Banking (Under Grad Conventional Programme)</option>
                                                 </c:when>
                                                   
                                                 <c:when test="${aze == cbaim}" >
                                                   <option value="CBA-BIM" >Bachelor of Commerce Honours Degree in Banking and Investment Management (Under Grad Conventional Programme)</option>
                                                 </c:when>
                                                   
                                                   
                                                 <c:when test="${aze == cbumgtb}" >
                                                   <option value="CBU-MGTB" >Bachelor of Commerce Honours Degree in Management (Under Grad Conventional Programme)</option>
                                                 </c:when> 
                                                   
                                                    <c:when test="${aze == cbumkt}" >
                                                   <option value="CBU-MKT" >Bachelor of Commerce Honours Degree in Marketing (Under Grad Conventional Programme)</option>
                                                 </c:when> 
                                                   
                                                   <c:when test="${aze == cfi}" >
                                                   <option value="CFI" >Bachelor of Commerce Honours Degree in Finance (Under Grad Conventional Programme)</option>
                                                 </c:when> 
                                                   
                                                   <c:when test="${aze == cfs}" >
                                                   <option value="CFS" >Bachelor of Commerce Honours Degree in Fiscal Studies (Under Grad Conventional Programme)</option>
                                                 </c:when> 
                                                   
                                                   <c:when test="${aze == ira}" >
                                                   <option value="CFS" >Bachelor of Science Honours Degree in Records and Archives Management (Under Grad Conventional Programme)</option>
                                                 </c:when>
                                                   <c:when test="${aze == cin}" >
                                                   <option value="CIN-ACT" >Bachelor of Commerce Honours Degree in Actuarial Science (Under Grad Conventional Programme)</option>
                                                 </c:when> 
                                                   
                                                    <c:when test="${aze == rsk}" >
                                                   <option value="CIN-RSK" >Bachelor of Commerce Honours Degree in Risk Management and Insurance (Under Grad Conventional Programme)</option>
                                                 </c:when>
                                                   
                                                   <c:when test="${aze == efw}" >
                                                   <option value="EFW" >Bachelor of Science Honours Degree in Forest Resources and Wildlife Management (Under Grad Conventional Programme)</option>
                                                 </c:when>
                                                  
                                                   
                                                    <c:when test="${aze == efw}" >
                                                   <option value="EFW" >Bachelor of Science Honours Degree in Forest Resources and Wildlife Management (Under Grad Conventional Programme)</option>
                                                 </c:when>
                                                   
                                                    <c:when test="${aze == ijm}" >
                                                   <option value="EFW" >Bachelor of Science Honours Degree in Journalism and Media Studies (Under Grad Conventional Programme)</option>
                                                 </c:when>
                                                   
                                                   <c:when test="${aze == ili}" >
                                                   <option value="ILI" >Bachelor of Science Honours in Library and Information Science (Under Grad Conventional Programme)</option>
                                                 </c:when>
                                                   
                                                   
                                                   <c:when test="${aze == imp}" >
                                                   <option value="IMPAE" >Industrial, Mechanical,Production and Automotive Engineering (Under Grad Conventional Programme)</option>
                                                 </c:when>
                                                   
                                                    <c:when test="${aze == ipu}" >
                                                   <option value="IPU" >Bachelor of Science Honours Degree in Publishing (Under Grad Conventional Programme)</option>
                                                 </c:when>
                                                   
                                                    <c:when test="${aze == ira}" >
                                                   <option value="IRA" >Bachelor of Science Honours Degree in Records and Archives Management (Under Grad Conventional Programme)</option>
                                                 </c:when>
                                                   
                                                    <c:when test="${aze == mbbs}" >
                                                   <option value="MBBS" >Bachelor of Science Honours Degree in Records and Archives Management (Under Grad Conventional Programme)</option>
                                                 </c:when>
                                                   
                                                    <c:when test="${aze == sbb}" >
                                                   <option value="SBB">Bachelor of Science Honours Degree in Applied Biology and Biochemistry (Under Grad Conventional Programme)</option>
                                                 </c:when>
                                                   
                                                      <c:when test="${aze == sch}" >
                                                   <option value="SCH">Bachelor of Science Honours Degree in Applied Chemistry (Under Grad Conventional Programme)</option>
                                                 </c:when>
                                                   
                                                    <c:when test="${aze == sci}" >
                                                   <option value="SCI">Bachelor of Science Honours Degree in Informatics (Under Grad Conventional Programme)</option>
                                                 </c:when>
                                                   
                                                   <c:when test="${aze == scs}" >
                                                   <option value="SCS">Bachelor of Science Honours Degree in Computer Science (Under Grad Conventional Programme)</option>
                                                 </c:when>
                                                   
                                                    <c:when test="${aze == sors}" >
                                                   <option value="SORS">Bachelor of Science Honours Degree  in Operations Research and Statistics (Under Grad Conventional Programme)</option>
                                                 </c:when>
                                                   
                                                    <c:when test="${aze == sph}" >
                                                   <option value="SPH">Bachelor of Science Honours Degree in Applied Physics (Under Grad Conventional Programme)</option>
                                                 </c:when>
                                                   
                                                    <c:when test="${aze == sra}" >
                                                   <option value="SRA">Bachelor of Science Honours Degree in Radiography (Under Grad Conventional Programme)</option>
                                                 </c:when>
                                                   
                                                   <c:when test="${aze == ssc}" >
                                                   <option value="SSC">Bachelor of Science Honours Degree in Sports Science and Coaching (Under Grad Conventional Programme)</option>
                                                 </c:when>
                                                   
                                                    <c:when test="${aze == tce}" >
                                                   <option value="TCE">Bachelor of Engineering Honours Degree in Chemical Engineering (Under Grad Conventional Programme)</option>
                                                 </c:when>
                                                   
                                                    <c:when test="${aze == tcw}" >
                                                   <option value="TCW">Bachelor of Engineering Honours Degree in Civil and Water Engineering (Under Grad Conventional Programme)</option>
                                                 </c:when>
                                                   
                                                    <c:when test="${aze == tee}" >
                                                   <option value="TEE">Bachelor of Engineering Honours Degree in Electronic Engineering (Under Grad Conventional Programme)< </option>
                                                 </c:when>
                                                   
                                                    <c:when test="${aze == tfe}" >
                                                   <option value="TFE">Bachelor of Engineering Honours Degree in Fibre and Polymer Materials Engineering (Under Grad Conventional Programme)</option>
                                                 </c:when>
                                                   
                                                   <c:when test="${aze == tie}" >
                                                   <option value="TIE">Bachelor of Engineering Honours Degree in Industrial and Manufacturing Engineering (Under Grad Conventional Programme)<</option>
                                                 </c:when>
                                                   
                                                   <c:when test="${aze == esh}" >
                                                   <option value="ESH">Bachelor of Science Honours Degree in Environmental Science and Health (Under Grad Conventional Programme)<</option>
                                                 </c:when>
                                                   
                                                   
                                                    <c:when test="${aze == bpep}" >
                                                   <option value="BPEP">Bachelor of Science Honours Degree in Environmental Science and Health (Under Grad Conventional Programme)<</option>
                                                 </c:when>
                                                   
                                                     <c:when test="${aze == bqsp}" >
                                                   <option value="BQSP">Bachelor of Quantity Surveying Honours Degree (Under Grad Parallel Programme) </option>
                                                 </c:when>
                                                   
                                                     <c:when test="${aze == cacp}" >
                                                   <option value="CACP">Bachelor of Commerce Honours Degree in Accounting (Under Grad Parallel Programme)</option>
                                                 </c:when>
                                                   
                                                   <c:when test="${aze == cbap}" >
                                                   <option value="CBAP">Bachelor of Commerce Honours  Degree in Banking (Under Grad Parallel Programme)</option>
                                                 </c:when>
                                                   
                                                   
                                                     <c:when test="${aze == cbumgtp}" >
                                                   <option value="CBU-MGTP">Bachelor of Commerce Honours Degree in Management (Under Grad Parallel Programme)</option>
                                                 </c:when>
                                                   
                                                   
                                                    <c:when test="${aze == cbumktp}" >
                                                   <option value="CBU-MKTP">Bachelor of Commerce Honours Degree in Marketing (Under Grad Parallel Programme)</option>
                                                 </c:when>
                                                   
                                                   
                                                <c:when test="${aze == cfip}" >
                                                   <option value="CFIP">Bachelor of Commerce Honours Degree in Finance  (Under Grad Parallel Programme)</option>
                                                 </c:when>
                                                   
                                                   
                                                  <c:when test="${aze == cinrsk}" >
                                                   <option value="CIN-RSKP">Bachelor of Commerce Honours Degree in Risk Management and Insurance (Under Grad Parallel Programme)</option>
                                                 </c:when>  
                                                   
                                                   
                                                     
                                                  <c:when test="${aze == eshp}" >
                                                   <option value="ESHP">Bachelor of Science Honours Degree in Environmental Science & Health Honours (Under Grad Parallel Programme)</option>
                                                 </c:when> 
                                                   
                                                    <c:when test="${aze == tcep}" >
                                                   <option value="TCEP">Bachelor of Engineering Honours Degree in Chemical Engineering (Under Grad Parallel Programme)</option>
                                                 </c:when>  
                                                   
                                                   <c:when test="${aze == tcwp}" >
                                                   <option value="TCWP">Bachelor of Engineering Honours Degree in Civil and Water Engineering (Under Grad Parallel Programme)</option>
                                                 </c:when>
                                                   
                                                   <c:when test="${aze == tiep}" >
                                                   <option value="TIEP">Bachelor of Engineering Honours Degree in Industrial and Manufacturing Engineering (Under Grad Parallel Programme)</option>
                                                 </c:when>
                                                   
                                                    <c:when test="${aze == sorsp}" >
                                                   <option value="SORSP">Bachelor of Science  Honours Degree in Operations Research and Statistics (Under Grad Parallel Programme)</option>
                                                 </c:when>
                                                   
                                                     
                                                   
                                                    <c:when test="${aze == smap}" >
                                                   <option value="SMAP">Bachelor of Science Honours Degree in Applied Mathematics (Under Grad Parallel Programme)</option>
                                                 </c:when>
                                                   
                                                    <c:when test="${aze == scsp}" >
                                                   <option value="SCSP">Bachelor of Science Honours Degree in Computer Science (Under Grad Parallel Programme)</option>
                                                 </c:when>
                                                   
                                                     <c:when test="${aze == scip}" >
                                                   <option value="SCIP">Bachelor of Science Honours Degree in Informatics (Under Grad Parallel Programme)</option>
                                                 </c:when>
                                                   
                                                    <c:when test="${aze == sbbp}" >
                                                   <option value="SBBP">Bachelor of Science Honours Degree in Applied Biology and Biochemistry</option>
                                                 </c:when>
                                                   
                                                    <c:when test="${aze == ijmp}" >
                                                   <option value="IJMP">Bachelor of Science Honours Degree in Journalism and Media Studies (Under Grad Parallel Programme)</option>
                                                 </c:when>
                                                    
                                                   <c:when test="${aze == ilip}" >
                                                   <option value="ILIP">Bachelor of Science Honours Degree in Library and Information Science (Under Grad Parallel Programme)</option>
                                                 </c:when>
                                                   
                                                    <c:when test="${aze == bqsb}" >
                                                   <option value="BQSB-HRE">Bachelor of Quantity Surveying Honours Degree</option>
                                                 </c:when>
                                                   
                                                   <c:when test="${aze == bscmw}" >
                                                   <option value="BSC-MW">Bachelor of Quantity Surveying Honours Degree</option>
                                                 </c:when>
                                                   
                                                   <c:when test="${aze == cacb}" >
                                                   <option value="CACB">Bachelor of Commerce Honours Degree in Accounting</option>
                                                 </c:when>
                                                   
                                                   
                                                   <c:when test="${aze == cbumktb}" >
                                                   <option value="CBU-MKTB">Bachelor of Commerce Honours Degree in Marketing</option>
                                                 </c:when>
                                                   
                                                   
                                                   <c:when test="${aze == cfihre}" >
                                                   <option value="CFI-HRE">Bachelor of Commerce Honours Degree in Finance</option>
                                                 </c:when>
                                                   
                                                   
                                                    <c:when test="${aze == cinrsk}" >
                                                   <option value="CIN-RSKB">Bachelor of Commerce Honours Degree in Risk Management and Insurance</option>
                                                 </c:when>
                                                   
                                                    <c:when test="${aze == eadaad}" >
                                                   <option value="EAD-AAD">Bachelor of Design Education Honours (BDesED Hons) in Applied Art and Design</option>
                                                 </c:when>
                                                   
                                                   
                                                   
                                                    <c:when test="${aze == eadctf}" >
                                                   <option value="EAD-CTF">Bachelor of Design Education Honours (BDesED Hons) in Clothing, Textile and Fashion Design</option>
                                                 </c:when>
                                                   
                                         
                                                      <c:when test="${aze == eaddte}" >
                                                   <option value="EAD-DTE">Bachelor of Design Education Honours (BDesED Hons) in Design and Technology</option>
                                                 </c:when>
                                                   
                                                    <c:when test="${aze == eph}" >
                                                   <option value="EPH">Bachelor of Environmental Science Honours Degree in Public Health</option>
                                                 </c:when>
                                                   
                                                   <c:when test="${aze == irab}" >
                                                   <option value="IRAB">Bachelor of Science Honours Degree in Records and Archives Management</option>
                                                 </c:when>
                                                   
                                                   
                                                   <c:when test="${aze == tbe}" >
                                                   <option value="TBE-ADD">Bachelor of Education Honours Degree in Art and Design</option>
                                                 </c:when>
                                                   
                                                   
                                                     <c:when test="${aze == txt}" >
                                                   <option value="TBE-TXT">Bachelor of Education Honours Degree in Clothing Textile and Fashion Design</option>
                                                 </c:when>
                                          

                                                 <c:when test="${aze == add}" >
                                                   <option value="TTE-AAD">Bachelor of Technical Teacher Education Honours Degree in Applied Art and Design</option>
                                                 </c:when>
                                                   
                                                   
                                                     <c:when test="${aze == cce}" >
                                                   <option value="TTE-CCE">Bachelor of Technical Education Honours Degree in Civil and Construction  Engineering</option>
                                                 </c:when>
                                                   
                                                   
                                                    <c:when test="${aze == ttte}" >
                                                   <option value="TTE-EEE">Bachelor of Technical Education Honors Degree in Electrical and Electronic Engineering</option>
                                                 </c:when>
                                          
                                                <c:when test="${aze == ttetxt}" >
                                                   <option value="TTE-TXT">Bachelor of Technical Education Honours Degree in Textile Technology</option>
                                                 </c:when>
                                                   
                                                   
                                                   <c:when test="${aze == estbio}" >
                                                   <option value="EST-BIO">Bachelor of Science Education Honours (BScED Hons) in Biology</option>
                                                 </c:when>
                                                   
                                                    <c:when test="${aze == estche}" >
                                                   <option value="EST-CHE">Bachelor of Science Education Honours (BScED Hons) in Chemistry</option>
                                                 </c:when>
											

                                                    <c:when test="${aze == estcsc}" >
                                                   <option value="EST-CSC">Bachelor of Science Education Honours (BScEd Hons) in Computer Science</option>
                                                 </c:when>
                                                   
                                                      <c:when test="${aze == estphy}" >
                                                   <option value="EST-PHY">Bachelor of Science Education Honours (BScEd Hons) in Physics</option>
                                                 </c:when>
                                                   
                                                   
                                                    <c:when test="${aze == estphy}" >
                                                   <option value="EST-PHY">Bachelor of Science Education Honours (BScEd Hons) in Physics</option>
                                                 </c:when>
                                                   
                                                   <c:when test="${aze == cfshre}" >
                                                   <option value="CFS-HRE">Bachelor of Commerce Honours Degree in Fiscal Studies (Block Release)-Harare</option>
                                                 </c:when>
                                                   
                                                   <c:when test="${aze == barcp}" >
                                                   <option value="BARCP">Master of Science Degree in Radiography</option>
                                                 </c:when>
                                                   
                                                   <c:when test="${aze == marcb}" >
                                                   <option value="MARCB">Master of Architecture Degree(Block Release)</option>
                                                 </c:when>
                                                   
                                                    <c:when test="${aze == mbefe}" >
                                                   <option value="MBFE">Master of Science Degree in Banking and Financial Economics (Bulawayo Cohort)</option>
                                                 </c:when>
                                                   
                                                   
                                                    <c:when test="${aze == mbefere}" >
                                                   <option value="MBFE-HRE">Master of Science Degree in Banking and Financial Economics (Harare Cohort)</option>
                                                 </c:when>
                                                   
                                                   
                                                     <c:when test="${aze == mebc}" >
                                                   <option value="MEBC">Master of Science Degree in Eco Tourism and Biodiversity Conservation(Block-Release)</option>
                                                 </c:when>
                                                   
                                                   
                                                    <c:when test="${aze == mebc}" >
                                                   <option value="MEBC">Master of Science Degree in Eco Tourism and Biodiversity Conservation(Block-Release)</option>
                                                 </c:when>
                                                   
                                                   
                                                   <c:when test="${aze == mgph}" >
                                                   <option value="MGPH">Master of Science Degree in Geophysics</option>
                                                 </c:when>
                                                   
                                                     <c:when test="${aze == miemeom}" >
                                                   <option value="MIE-MEOM">Master of Engineering Degree in Manufacturing Engineering and Operations Management</option>
                                                 </c:when>
                                                   
                                                   
                                                   <c:when test="${aze == msom}" >
                                                   <option value="MIE-MSOM">Master of Engineering Degree in Manufacturing Systems and Operations Management</option>
                                                 </c:when>
                                                   
                                                   
                                                   
                                                    <c:when test="${aze == mienp}" >
                                                   <option value="MIENP">Master of Science Degree in Industrial & Manufacturing Engineering</option>
                                                 </c:when>
                                                   
                                                   
                                                   
                                                    <c:when test="${aze == mlao}" >
                                                   <option value="MLAO">Master of Science Degree in Lasers and Applied Optics</option>
                                                 </c:when>
                                                   
                                                  <c:when test="${aze == mlisp}" >
                                                   <option value="MLISP">Master of Science Degree in Library & Information Science</option>
                                                 </c:when>
												 
						<c:when test="${aze == mmkt}" >
                                                   <option value="MMKT">Master of Science Degree in  Marketing</option>
                                                 </c:when>
                                                   
												   
					   <c:when test="${aze == mssscac}" >
                                                   <option value="MSC-CAC">Master of Science Degree in Accounting and Finance</option>
                                                 </c:when>

					 <c:when test="${aze == mscccfs}" >
                                                   <option value="MSC-CFS">Master of Science Degree in Fiscal Studies</option>
                                                 </c:when>
												 
												 
						 <c:when test="${aze == cfshree}" >
                                                   <option value="MSC-CFSHRE">Master of Science Degree in Fiscal Studies (Harare)</option>
                                                 </c:when>
												 
						 <c:when test="${aze == pmree}" >
                                                   <option value="MSC-CPM">Master of Science Degree in Construction Project Management</option>
                                                 </c:when>

												 
			                   <c:when test="${aze == dmsc}" >
                                                   <option value="MSC-DM">Master of Science Degree in Disaster Management (Bulawayo Cohort)</option>
                                                 </c:when>
												 
                                                <c:when test="${aze == damhre}" >
                                                   <option value="MSC-DMHRE">Master of Science Degree in Disaster Management (Harare Cohort)</option>
                                                 </c:when>
												 
												 
					       <c:when test="${aze == damhre}" >
                                                   <option value="MSC-DS-2016">Master of Science Degree in Development Studies (Bulawayo Cohort)</option>
                                                 </c:when>

                                                   
	
		                                                                             


<c:when test="${aze == msscds}" >
<option value="MSCDS-HRE">Master of Science Degree in Development Studies (Harare Cohort)</option>
</c:when>



<c:when test="${aze == dso}" >
<option value="MSC-DSO">Master of Science Degree in Development Studies</option>
</c:when>


<c:when test="${aze == amber}" >
<option value="EMBA-HRE">Master of Business Administration (Executive) - Harare Cohort</option>
</c:when>


<c:when test="${aze == feng}" >
<option value="MSC-FENG">Master of Science Degree in Financial Engineering (Bulawayo Cohort)</option>
</c:when>


<c:when test="${aze == feng}" >
<option value="MSC-FENGHR">Master of Science Degree in Financial Engineering (Harare Cohort)</option>
</c:when>


<c:when test="${aze == finu}" >
<option value="MSC-FINHRE">Master of Science Degree in Finance and Investment (Harare Cohort)</option>
</c:when>

<c:when test="${aze == mscjimu}" >
<option value="MSC-IJM">Master of Science Degree in Journalism and Media Studies</option>
</c:when>


<c:when test="${aze == ilimsc}" >
<option value="MSC-ILI">Master of Science Degree in Library and Information Science</option>
</c:when>

<c:when test="${aze == iraq}" >
<option value="MSC-IRA">Master of Science Degree in Records and Archives Management</option>
</c:when>


<c:when test="${aze == msciis}" >
<option value="MSC-IS">Master of Science Degree in Information Systems</option>
</c:when>

<c:when test="${aze == mbbmsc}" >
<option value="MSC-MBB">Master of Science Degree in Applied Microbiology and Biotechnology</option>
</c:when>





<c:when test="${aze == mphcsm}" >
<option value="MSC-MPH">Master of Science Degree in Medical Physics</option>
</c:when>

<c:when test="${aze == mwemsc}" >
<option value="MSC-MWE">Master of Science Degree in Midwifery Education</option>
</c:when>

<c:when test="${aze == smamsc}" >
<option value="MSC-SMA">Master of Science Degree in Applied Mathematical Modelling</option>
</c:when>

<c:when test="${aze == smabmsc}" >
<option value="MSC-SMAB">Master of Science Degree in Applied Mathematical Modelling (Block-Release</option>
</c:when>


<c:when test="${aze == smasors}" >
<option value="MSC-SORS">Master of Science Degree in Operations Research and Statistics</option>
</c:when>

<c:when test="${aze == nbbmse}" >
<option value="MSE-ABS">Master Of Science Education In Accounting and Business Studies</option>
</c:when>


<c:when test="${aze == biomsc}" >
<option value="MSE-BIO">Master Of Science Education In Biology</option>
</c:when>


<c:when test="${aze == chemmsc}" >
<option value="MSE-CHE">Master Of Science Education In IN Chemistry</option>
</c:when>



<c:when test="${aze == scsmsc}" >
<option value="MSE-CSC">Master Of Science Education In IN Computer Science</option>
</c:when>


<c:when test="${aze == evsmsc}" >
<option value="MSE-EVS">Master Of Science Education In Environmental Science</option>
</c:when>



<c:when test="${aze == matmsc}" >
<option value="MSE-MAT">Master Of Science Education In Mathematics And Statistics</option>
</c:when>



<c:when test="${aze == phymsc}" >
<option value="MSE-PHY">Master Of Science Education In Physics</option>
</c:when>



<c:when test="${aze == addmsc}" >
<option value="MTE-AAD">Master Of Technology Education In Applied Art and Design</option>
</c:when>


<c:when test="${aze == ccemsc}" >
<option value="MTE-CCE">Master Of Technology Education In Civil and Construction Engineering</option>
</c:when>


<c:when test="${aze == ctfmsc}" >
<option value="MTE-CTF">Master Of Technology Education In Clothing Textile and Fashion Design</option>
</c:when>




<c:when test="${aze == dtemsc}" >
<option value="MTE-DTE">Master Of Technology Education In Design And Technology</option>
</c:when>





<c:when test="${aze == eemsc}" >
<option value="MTE-EEE">Master Of Technology Education In Electrical and Electronic Engineering</option>
</c:when>




<c:when test="${aze == miemsc}" >
<option value="MTE-MIE">Master Of Technology Education In Mechanical and Industrial Engineering</option>
</c:when>



<c:when test="${aze == tegmsc}" >
<option value="MTE-TEG">Master Of Technology Education In Technical Graphics</option>
</c:when>


<c:when test="${aze == wstmsc}" >
<option value="MTE-WST">Master Of Technology Education In Wood Science Technology</option>
</c:when>

<c:when test="${aze == mttescs}" >
<option value="MTTE">Master of Science Degree in Technical Teacher Education</option>
</c:when>



<c:when test="${aze == mttepscs}" >
<option value="MTTEP">Master of Science Degree in Technical Teacher Education</option>
</c:when>


<c:when test="${aze == mtxtmsc}" >
<option value="MTXT">Master of Science Degree in Textile Technology</option>
</c:when>


<c:when test="${aze == mudmsc}" >
<option value="MUD">Master of Urban Design Degree</option>
</c:when>

<c:when test="${aze == pgdmsc}" >
<option value="PGDEEN">Electronic Engineering</option>
</c:when>


<c:when test="${aze == lismsc}" >
<option value="PGDLIS">Postgraduate Diploma in Library and Information Science</option>
</c:when>


<c:when test="${aze == mgtmsc}" >
<option value="MPHIL-MGT">Master of Philosophy in Records and Archives Management</option>
</c:when>













                                                  
                                            <c:otherwise>
                 <option value="null">Subject Could not be found...Please check if it exists </option>
                                               </c:otherwise>
                                                </c:choose>
 <!-- Conventional Porgrammes -->
                                                    
                                                     <option value="CAC" >Bachelor of Commerce Honours Degree in Accounting (Under Grad Conventional Programme)</option>
                                                     <option value="SMA">Bachelor of Science Honours Degree in Applied Mathematics (Under Grad Conventional Programme)</option>
                                                     <option value="BPE">Bachelor of Science Honours Degree in Property Development and Estate Management (Under Grad Conventional Programme)<</option>
                                                     <option value="BAR">Bachelor of Architectural Studies Honours Degree (Under Grad Conventional Programme)</option>
                                                     <option value="BQS">Bachelor of Quantity Surveying Honours Degree (Under Grad Conventional Programme)</option>
                                                     <option value="CBA">Bachelor of Commerce Honours Degree in Banking (Under Grad Conventional Programme)</option>
                                                     <option value="CBA-BIM">Bachelor of Commerce Honours Degree in Banking and Investment Management (Under Grad Conventional Programme)</option>
                                                     <option value="CBU-MGTB">Bachelor of Commerce Honours Degree in Management (Under Grad Conventional Programme)</option>
                                                     <option value="CBU-MKT">Bachelor of Commerce Honours Degree in Marketing (Under Grad Conventional Programme)</option>
                                                     <option value="CFI">Bachelor of Commerce Honours Degree in Finance (Under Grad Conventional Programme)</option>
                                                     <option value="CFS">Bachelor of Commerce Honours Degree in Fiscal Studies (Under Grad Conventional Programme)</option>
                                                     <option value="CIN-ACT">Bachelor of Commerce Honours Degree in Actuarial Science (Under Grad Conventional Programme)</option>
                                                     <option value="CIN-RSK">Bachelor of Commerce Honours Degree in Risk Management and Insurance (Under Grad Conventional Programme)</option>
                                                     <option value="EFW">Bachelor of Science Honours Degree in Forest Resources and Wildlife Management (Under Grad Conventional Programme)</option>
                                                     <option value="IJM">Bachelor of Science Honours Degree in Journalism and Media Studies (Under Grad Conventional Programme)</option>
                                                     <option value="ILI">Bachelor of Science Honours in Library and Information Science (Under Grad Conventional Programme)</option>
                                                     <option value="IMPAE">Industrial, Mechanical,Production and Automotive Engineering (Under Grad Conventional Programme)</option>
                                                    <option value="IPU">Bachelor of Science Honours Degree in Publishing (Under Grad Conventional Programme)</option>
                                                    <option value="IRA">Bachelor of Science Honours Degree in Records and Archives Management (Under Grad Conventional Programme)</option> 
                                                    <option value="MBBS">Bachelor of Medicine and Bachelor of Surgery Degree (Under Grad Conventional Programme)</option>
                                                    <option value="SCH">Bachelor of Science Honours Degree in Applied Chemistry (Under Grad Conventional Programme)</option>
                                                    <option value="SCI">Bachelor of Science Honours Degree in Informatics (Under Grad Conventional Programme)</option>
                                                    <option value="SCS">Bachelor of Science Honours Degree in Computer Science (Under Grad Conventional Programme)</option>
                                                    <option value="SORS">Bachelor of Science Honours Degree  in Operations Research and Statistics (Under Grad Conventional Programme)</option>
                                                    <option value="SPH">Bachelor of Science Honours Degree in Applied Physics (Under Grad Conventional Programme)</option>
                                                    <option value="SRA">Bachelor of Science Honours Degree in Radiography (Under Grad Conventional Programme)</option>
                                                    <option value="SSC">Bachelor of Science Honours Degree in Sports Science and Coaching (Under Grad Conventional Programme)</option>
                                                    <option value="TCE">Bachelor of Engineering Honours Degree in Chemical Engineering (Under Grad Conventional Programme)</option>
                                                    <option value="TCW">Bachelor of Engineering Honours Degree in Civil and Water Engineering (Under Grad Conventional Programme)</option>
                                                    <option value="TEE">Bachelor of Engineering Honours Degree in Electronic Engineering (Under Grad Conventional Programme)</option                                                                  
                                                    <option value="TFE">Bachelor of Engineering Honours Degree in Fibre and Polymer Materials Engineering (Under Grad Conventional Programme)</option                                                                  
                                                    <option value="TIE">Bachelor of Engineering Honours Degree in Industrial and Manufacturing Engineering (Under Grad Conventional Programme)</option 
                                                    <option value="ESH">Bachelor of Science Honours Degree in Environmental Science and Health (Under Grad Conventional Programme)</option                                                                  

                                                    
    <!-- Parallel -->                                                
                                                    
<option value="BPEP">Bachelor Science Honours Degree in Property Development and Estate Management (Under Grad Parallel Programme)</option>
<option value="BQSP">Bachelor of Quantity Surveying Honours Degree (Under Grad Parallel Programme)</option>
<option value="CACP">Bachelor of Commerce Honours Degree in Accounting (Under Grad Parallel Programme)</option>
<option value="CBAP">Bachelor of Commerce Honours  Degree in Banking (Under Grad Parallel Programme)</option>
<option value="CBU-MGTP">Bachelor of Commerce Honours Degree in Management (Under Grad Parallel Programme)</option>
<option value="CBU-MKTP">Bachelor of Commerce Honours Degree in Marketing (Under Grad Parallel Programme)</option>
<option value="CFIP">Bachelor of Commerce Honours Degree in Finance (Under Grad Parallel Programme)</option>
<option value="CIN-RSKP">Bachelor of Commerce Honours Degree in Risk Management and Insurance (Under Grad Parallel Programme)</option>
<option value="ESHP">Bachelor of Science Honours Degree in Environmental Science and Health (Under Grad Parallel Programme)</option>
<option value="TCWP">Bachelor of Engineering Honours Degree in Civil and Water Engineering (Under Grad Parallel Programme)</option>
<option value="TCEP">Bachelor of Engineering Honours Degree in Chemical Engineering (Under Grad Parallel Programme)</option>
<option value="TIEP">Bachelor of Engineering Honours Degree in Industrial and Manufacturing Engineering (Under Grad Parallel Programme)</option>
<option value="SORSP">Bachelor of Science  Honours Degree in Operations Research and Statistics (Under Grad Parallel Programme)</option>
<option value="SMAP">Bachelor of Science Honours Degree in Applied Mathematics (Under Grad Parallel Programme)</option>
<option value="SCSP">Bachelor of Science Honours Degree in Computer Science (Under Grad Parallel Programme)</option>
<option value="SCIP">Bachelor of Science Honours Degree in Informatics (Under Grad Parallel Programme)</option>
<option value="SBBP">Bachelor of Science Honours Degree in Applied Biology and Biochemistry (Under Grad Parallel Programme)</option>
<option value="IJMP">Bachelor of Science Honours Degree in Journalism and Media Studies (Under Grad Parallel Programme)</option>
<option value="ILIP">Bachelor of Science Honours Degree in Library and Information Science (Under Grad Parallel Programme)</option>

                                                    
                                                    
 


<!-- Block Release -->


<option value="BQSB-HRE">Bachelor of Quantity Surveying Honours Degree</option>
<option value="BSC-MW">Bachelor of Science Honours Degree in Midwifery</option>
<option value="CACB">Bachelor of Commerce Honours Degree in Accounting</option>
<option value="CBU-MKTB">Bachelor of Commerce Honours Degree in Marketing</option>
<option value="CFI-HRE">Bachelor of Commerce Honours Degree in Finance</option>
<option value="CIN-RSKB">Bachelor of Commerce Honours Degree in Risk Management and Insurance</option>
<option value="EAD-AAD">Bachelor of Design Education Honours (BDesED Hons) in Applied Art and Design</option>
<option value="EAD-CTF">Bachelor of Design Education Honours (BDesED Hons) in Clothing, Textile and Fashion Design</option>
<option value="EAD-DTE">Bachelor of Design Education Honours (BDesED Hons) in Design and Technology</option>
<option value="EPH">Bachelor of Environmental Science Honours Degree in Public Health</option>
<option value="IRAB">Bachelor of Science Honours Degree in Records and Archives Management</option>
<option value="TBE-ADD">Bachelor of Education Honours Degree in Art and Design</option>
<option value="TBE-TXT">Bachelor of Education Honours Degree in Clothing Textile and Fashion Design</option>
<option value="TTE-AAD">Bachelor of Technical Teacher Education Honours Degree in Applied Art and Design</option>
<option value="TTE-CCE">Bachelor of Technical Education Honours Degree in Civil and Construction  Engineering</option>
<option value="TTE-EEE">Bachelor of Technical Education Honors Degree in Electrical and Electronic Engineering</option>
<option value="TTE-TXT">Bachelor of Technical Education Honours Degree in Textile Technology</option>												
<option value="EST-BIO">Bachelor of Science Education Honours (BScED Hons) in Biology</option>
<option value="EST-CHE">Bachelor of Science Education Honours (BScED Hons) in Chemistry</option>
<option value="EST-CSC">Bachelor of Science Education Honours (BScEd Hons) in Computer Science</option>										
<option value="EST-PHY">Bachelor of Science Education Honours (BScEd Hons) in Physics</option>												
<option value="CFS-HRE">Bachelor of Commerce Honours Degree in Fiscal Studies (Block Release)-Harare</option>			                                                                              


<!-- Masters Programs -->
                                     
<option value="BARCP">Master of Science Degree in Radiography</option>
<option value="MARCB">Master of Architecture Degree(Block Release)</option>
<option value="MBFE">Master of Science Degree in Banking and Financial Economics (Bulawayo Cohort)</option>
<option value="MBFE-HRE">Master of Science Degree in Banking and Financial Economics (Harare Cohort)</option>
<option value="MEBC">Master of Science Degree in Eco Tourism and Biodiversity Conservation(Block-Release)</option>
<option value="MGPH">Master of Science Degree in Geophysics</option>
<option value="MIE-MEOM">Master of Engineering Degree in Manufacturing Engineering and Operations Management</option>
<option value="MIE-MSOM">Master of Engineering Degree in Manufacturing Systems and Operations Management</option>
<option value="MIENP">Master of Science Degree in Industrial & Manufacturing Engineering</option>
<option value="MLAO">Master of Science Degree in Lasers and Applied Optics</option>
<option value="MLISP">Master of Science Degree in Library & Information Science</option>
<option value="MMKT">Master of Science Degree in  Marketing</option>
<option value="MSC-CAC"$>Master of Science Degree in Accounting and Finance </option>
<option value="MSC-CFS">Master of Science Degree in Fiscal Studies</option>
<option value="MSC-CFSHRE">Master of Science Degree in Fiscal Studies (Harare)</option>
<option value="MSC-CPM">Master of Science Degree in Construction Project Management</option>
<option value="MSC-DM">Master of Science Degree in Disaster Management (Bulawayo Cohort)</option>
<option value="MSC-DMHRE">Master of Science Degree in Disaster Management (Harare Cohort)</option>
<!--<option value="MSC-DMO"$>Master of Science Degree in Development Studies (Bulawayo Cohort)</option>-->
<option value="MSC-DS-2016">Master of Science Degree in Development Studies (Bulawayo Cohort)</option>
<option value="MSCDS-HRE">Master of Science Degree in Development Studies (Harare Cohort)</option>
<option value="MSC-DSO">Master of Science Degree in Development Studies</option>
<!--<option value="EMBA">Master of Business Administration Degree (Executive) - Bulawayo Cohort</option>
<option value="EMBA-HRE">Master of Business Administration (Executive) - Harare Cohort</option>-->
<option value="MSC-FENG">Master of Science Degree in Financial Engineering (Bulawayo Cohort)</option>
<option value="MSC-FENGHR">Master of Science Degree in Financial Engineering (Harare Cohort)</option>
<option value="MSC-FINHRE">Master of Science Degree in Finance and Investment (Harare Cohort)</option>
<!--<option value="MSC-FINOLD">Master of Science Degree in Finance and Investment (Harare)</option>-->
<option value="MSC-IJM">Master of Science Degree in Journalism and Media Studies</option>
<option value="MSC-ILI">Master of Science Degree in Library and Information Science</option>
<option value="MSC-IRA">Master of Science Degree in Records and Archives Management</option>
<option value="MSC-IS">Master of Science Degree in Information Systems</option>
<option value="MSC-MBB">Master of Science Degree in Applied Microbiology and Biotechnology</option>
<!--<option value="MSC-MIS">Master of Science Degree in Information Systems</option>-->




<option value="MSC-MPH">Master of Science Degree in Medical Physics</option>
<option value="MSC-MWE">Master of Science Degree in Midwifery Education</option>
<option value="MSC-SMA">Master of Science Degree in Applied Mathematical Modelling</option>
<option value="MSC-SMAB">Master of Science Degree in Applied Mathematical Modelling (Block-Release)</option>
<option value="MSC-SORS">Master of Science Degree in Operations Research and Statistics</option>
<option value="MSE-ABS">Master Of Science Education In Accounting and Business Studies</option>
<option value="MSE-BIO">Master Of Science Education In Biology</option>
<option value="MSE-CHE">Master Of Science Education In IN Chemistry</option>
<option value="MSE-CSC">Master Of Science Education In IN Computer Science</option>
<option value="MSE-EVS">Master Of Science Education In Environmental Science</option>
<option value="MSE-MAT">Master Of Science Education In Mathematics And Statistics</option>
<option value="MSE-PHY">Master Of Science Education In Physics</option>
<option value="MTE-AAD">Master Of Technology Education In Applied Art and Design</option>
<option value="MTE-CCE">Master Of Technology Education In Civil and Construction Engineering</option>
<option value="MTE-CTF">Master Of Technology Education In Clothing Textile and Fashion Design</option>
<option value="MTE-DTE">Master Of Technology Education In Design And Technology</option>
<option value="MTE-EEE">Master Of Technology Education In Electrical and Electronic Engineering</option>
<option value="MTE-MIE">Master Of Technology Education In Mechanical and Industrial Engineering</option>
<option value="MTE-TEG">Master Of Technology Education In Technical Graphics</option>
<option value="MTE-WST">Master Of Technology Education In Wood Science Technology</option>














<option value="MTTE">Master of Science Degree in Technical Teacher Education</option>
<option value="MTTEP">Master of Science Degree in Technical Teacher Education</option>
<option value="MTXT">Master of Science Degree in Textile Technology</option>
<option value="MTXTP">Master of Science Degree in Textile Technology</option>
<option value="MUD">Master of Urban Design Degree</option>
<option value="PGDEEN">Electronic Engineering</option>
<option value="PGDLIS">Postgraduate Diploma in Library and Information Science</option>
<option value="MPHIL-MGT">Master of Philosophy in Records and Archives Management</option>










                                    </select> 
                                             </td> 
</td>
                                                  

                                                                                            
                                              
                                              
                                              
                                              
                                              
                                               
                                         
                                              
                                              
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

