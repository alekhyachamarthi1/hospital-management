<%@page import="com.hms.constants.SuccessConstants"%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<title>Home</title>
<style type="text/css">
html,body {font-family: Arial;

    
background-size: cover;
background-image: url("1.jpg");
background-repeat: no-repeat;
background-size:500%;
    -webkit-background-size: cover;
    -moz-background-size: cover;
    -o-background-size: cover;

}
.link {
    overflow: hidden;
    border: 1px solid #ccc;
  
   
}

h1
{

font-size: 50px;
color:white;
}

table
{
color:white;
}

</style>
<%
session = request.getSession();
String username = (String)session.getAttribute("username");
RequestDispatcher dispatcher = request.getRequestDispatcher(SuccessConstants.LOGIN_PAGE);
if(username==null){
	dispatcher.forward(request, response);
}
%>
</head>
<body >
<div class="link">
<h1  style="font-family:calibri; " align="center">Hospital Management System
</h1>

<table align="right" style="margin-right: 15px">
<tr><td>
 <a href="LoginController">
<img src="logout1.png" alt="Log out" width="40" height="30" border="0"></a></td><td><b>Log Out</b>

  </td></tr>
 </table>

</div>
<br>
<br>

<table align="left">

<tr><td>
 <a href="EnrollPatient.jsp">
<img src="patient1.png" alt="Patient Enroll" width="80" height="70" border="0"></a></td><td><b><i>Patient Enroll</i></b>

  </td></tr>
 <tr> <td>
  <a href="EnrollPhysician.jsp">
<img src="doctor.jpg"alt="Physicain Enroll" width="80" height="70" border="0"></a></td><td><b><i>Physicain Enroll</i></b>

  </td></tr>
  
 <tr><td>
 <a href="PatientDiagnosisDetails.jsp">
<img src="diagnosis1.png"alt="Patient Diagnosis Details" width="80" height="70" border="0"></a></td><td><b><i>Patient Diagnosis Details</i></b>
  </td></tr>
 </table>
 <table align="center">
  <tr><td>
  <a href="PatientSearch.jsp">
 <img src="patient search.png" alt="Patient Search" width="80" height="70" border="0"></a></td><td><b><i>Patient Search</i></b>

  </td></tr>
<tr>  <td>
  <a href="PhysicianSearch.jsp">
 <img src="physician search.png" alt="Physician Search" width="80" height="70" border="0"></a></td><td><b><i>Physician Search</i></b>

  </td></tr>
  
  </table>

</body>
</html>

