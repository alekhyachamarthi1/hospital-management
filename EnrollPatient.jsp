<%@page import="com.hms.constants.SuccessConstants"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Patient Enrolment</title>
<link href="sam.css" rel='stylesheet' type='text/css' />
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

 <h1 > Patient Enrol Form</h1>
 <table align="right" style="margin-right: 15px">
<tr><td >
 <a href="LogoutController">
<img src="logout1.png" alt="Log out" width="40" height="30" border="0"></a></td></tr>
<tr><td>
<a href ="Home.jsp">
<img src="home.png" alt="Home"  width="40" height="30" border="0"></a></td></tr>

 </table>
    <div class="bg-agile">
	<div class="book-appointment">
	<h3>Patient Information</h3>
	
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
	
			<form action="EnrollPatientController" method="post">
				<div class="left-agileits-w3layouts same" >
					<div class="gaps">
						<p>First Name</p>
						<input type="text" name="first_name" placeholder="First Name" required/>
					</div>	
					<div class="gaps">
						<p>Last Name</p>
							<input type="text" name="last_name" placeholder="Last Name" required/>
					</div>
					<div class="gaps">
						<p>Password</p>		
						<input type="password" name="password" placeholder="" required/>
						<p style="color:red; font-size:15px;">Password must be of 8 characters and must contain 1 special character, 1 digit and a capital letter</p>
					</div>
				
					<div class="gaps">
						<p>Date of Birth</p>		
						<input type="date" id="datepicker1" name="date_of_birth"  value="" placeholder="dd-MM-yyyy" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'dd-MM-yyyy';}" required>
					</div>
					<div class="gaps">
						<p>Email</p>
						<input type="text" name="email" placeholder="" required/>
					</div>	
					<div class="gaps">	
						<p>Contact Number</p>
						<input type="text" name="contact_no" placeholder="" required/>
					</div>		
					
					<div class="gaps">
						<p>State</p>	
						<select class="form-control" name="state_name">
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
						</select>
					</div>
					
					
					<div class="gaps">
						<p>Plan</p>	
						<select class="form-control" name="plan_name">
						<option value="select">Select</option>
  <option value="Senior Citizen Health Insurance Policy">Senior Citizen's Health Insurance Policy</option>
  <option value="Family Health Insurance Policy">Family Health Insurance Policy</option>
  <option value="Women Health Insurance Policy"> Women Health Insurance Policy</option>
    <option value="Children Health Insurance Policy">Children Health Insurance Policy</option>
  	
						</select>
					</div>
					
					
				</div>
				<div class="clear"></div>
				<input type="submit" value="Submit" name="Submit">
				<input type="submit" value="reset">
			</form>
		</div>
   </div>
</body>
</html>