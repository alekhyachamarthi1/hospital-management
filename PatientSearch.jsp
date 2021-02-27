<%@page import="com.hms.constants.SuccessConstants"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
<meta charset="ISO-8859-1">
<title>Patient Search</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
 
 	<link rel="stylesheet" href="buttonstyle.css">
 	
 	<%
session = request.getSession();
String username = (String)session.getAttribute("username");
RequestDispatcher dispatcher = request.getRequestDispatcher(SuccessConstants.LOGIN_PAGE);
if(username==null){
	dispatcher.forward(request, response);
}
%>
 	<style>
  body{
 	 background: url("D:/1.jpg") no-repeat center center fixed; 
-webkit-background-size: cover;
-moz-background-size: cover;
-o-background-size: cover;
background-size: cover;

  }
 

  input{
   color: black;  
        font-size:15px;
   }
  .dropdown{
  position: absolute;
  }
  
  </style>
  <%
	String errMsg="";
	if (request.getParameter("Submit")!=null){
	if(request.getAttribute("errMsg")!=null)
	{
	errMsg=(String)request.getAttribute("errMsg");
	%>
	<div align="center" style="color: red; font-size: 20px;"><%=errMsg %></div>
	<%
	}
	}
	%>
 	
</head>
<body>

<div align="center" style="margin-right: 15px">
<h1>  Patient Search</h1>

<table align="right">
<tr><td >
 <a href="LogoutController">
<img src="logout1.png" alt="Log out" width="40" height="30" border="0"></a></td></tr>
 <tr><td>
<a href ="Home.jsp">
<img src="home.png" alt="Home"  width="40" height="30" border="0"></a></td></tr>
 
 </table>
<div class="bg-agile">
	<div class="book-appointment">
	
	<form action="PatientSearchController" method = "post">
<table cellpadding="10">
<div class="container" >
  <div class="dropdown">
<tr>
    <td>Patient ID</td>
    <td> <input type="text" name="patient_id" ></td>
  </tr>
  <tr><td><br></td><td><br></td></tr>
  <tr>
    <td>Patient First_name</td>
    <td>  <input type="text" name="first_name" ></td>
  </tr>
  <tr><td><br></td><td><br></td></tr>
  <tr>
    <td>Patient Last_name</td>
    <td><input type="text" name="last_name" ></td>
  </tr>
  
  
  
  </div>
  <tr><td><br></td><td><br></td></tr>
  <tr>
    <td>
    <p class="containers">
    <button style="display:inline;"type="submit" value="search" name="Submit"class="btn btn-info">
      <span class="glyphicon glyphicon-search" ></span> Search For Patient
    </button></p>
  </td>
    
  </tr>
  </div>
</table>
</form>
</div>

</div>
</div>

</body>
</html>