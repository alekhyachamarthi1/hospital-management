<%@page import="com.hms.constants.SuccessConstants"%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
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
 

  p{
   color: white;  
        font-size:30px;
   }
  .dropdown{
  position: absolute;
  }
  
  </style>
 	
</head>
<body>
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
<table align="right" style="margin-right: 15px">
<tr><td >
 <a href="LogoutController">
<img src="logout1.png" alt="Log out" width="40" height="30"  border="0"></a></td></tr>
 <tr><td>
 <a href ="Home.jsp">
<img src="home.png" alt="Home"  width="40" height="30" border="0"></a></td></tr>
 
 </table>
<form action="PhysicianSearchController" method ="post">
<div align="center">
<h1>  Physician Search</h1>
<div class="bg-agile">
	<div class="book-appointment">
<table cellpadding="10">
<div class="container" >
  <div class="dropdown">
<tr>
    <td>Department</td>
    <td>  <select class="btn btn-primary dropdown-toggle" data-toggle="dropdown" align="center" name="department">
 
  <option value="select">Select</option>
  <option value="Emergency Department">Emergency Department</option>
  <option value="Cardiology Department">Cardiology Department</option>
  <option value="Intensive Care Unit">Intensive Care Unit </option>
  <option value="OutPatient Department">OutPatient Department </option>
  <option value="Neurology Department">Neurology Department </option>
  </select></td>
  </tr>
  <tr><td><br></td><td><br></td></tr>
  <tr>
    <td>Plan</td>
    <td>  <select class="btn btn-primary dropdown-toggle" data-toggle="dropdown" align="center" name="plan">
 
  <option value="select">Select</option>
  <option value="Senior Citizen's Health Insurance Policy">Senior Citizen's Health Insurance Policy</option>
  <option value="Family Health Insurance Policy">Family Health Insurance Policy</option>
  <option value="Women Health Insurance Policy"> Women Health Insurance Policy</option>
    <option value="Children Health Insurance Policy">Children Health Insurance Policy</option>
  </select></td>
  </tr>
  <tr><td><br></td><td><br></td></tr>
  <tr>
    <td>State</td>
    <td> <select class="btn btn-primary dropdown-toggle" data-toggle="dropdown" align="center" name="state">
 
  <option value="select">Select</option>
  <option value="Andhra Pradesh">Andhra Pradesh</option>
  <option value="Arunachal Pradesh">Arunachal Pradesh</option>
  <option value="Assam">Assam</option>
  <option value="Bihar">Bihar</option>
   <option value="Chattisgarh">Chattisgarh</option>
  <option value="Goa">Goa</option>
  <option value="Gujarat">Gujarat</option>
  <option value="Haryana">Haryana</option>
   <option value="Himachal Pradesh">Himachal Pradesh</option>
  <option value="Jammu and Kashmir">Jammu and Kashmir</option>
  <option value="Jharkand">Jharkand</option>
  <option value="Karnataka">Karnataka</option>
   <option value="Kerala">Kerala</option>
  <option value="Madhya Pradesh">Madhya Pradesh</option>
  <option value="Maharashtra">Maharashtra</option>
  <option value="Manipur">Manipur</option>
   <option value="Meghalaya">Meghalaya</option>
  <option value="Mizoram">Mizoram</option>
  <option value="Nagaland">Nagaland</option>
  <option value="Odisha">Odisha</option>
   <option value="Punjab">Punjab</option>
  <option value="Rajasthan">Rajasthan</option>
  <option value="Sikkim">Sikkim</option>
  <option value="Tamil Nadu">Tamil Nadu</option>
   <option value="Telangana">Telangana</option>
  <option value="Tripura">Tripura</option>
  <option value="Uttar Pradesh">Uttar Pradesh</option>
  <option value="Uttarakhand">Uttarakhand</option>
   <option value="West Bengal">West Bengal</option>
  <option value="Delhi">Delhi</option>
  <option value="Chandigarh">Chandigarh</option>
  </select></td>
  </tr>
  
  
  
  </div>
  <tr><td><br></td><td><br></td></tr>
  <tr>
    <td>
    <p class="containers" >
    <button style="display:inline; "type="submit" class="btn btn-info" name="Submit">
      <span class="glyphicon glyphicon-search" ></span> Search For Patient
    </button></p>
  </td>
    
  </tr>
  </div>
</table>
</div>
</div>
</div>
</form>
</body>
</html>