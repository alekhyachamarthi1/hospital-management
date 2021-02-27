<%@page import="com.hms.constants.SuccessConstants"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
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
<body>

<h1 >Patient Diagnosis Details</h1>
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
if (request.getParameter("Submit")!=null)
{
	
if(request.getAttribute("errMsg")!=null) {
%>
<span style="color:red; font-size: 20px;"><%= request.getAttribute("errMsg")%></span>
<%

} 
}
%> 
			<form action="PatientDiagnosisController" method="post">
				<div class="left-agileits-w3layouts same" >
					<div class="gaps">
						<p>Patient ID</p>
						<input type="text" name="patient_id" id="patient_id" />
					</div>	
					
					<div class="gaps">
						<p>Diagnosis ID</p>
							<input type="text" name="diagnosis_id" id="diagnosis_id" />
					</div>
					
					<div class="gaps">
						<p>Symptoms</p>
							<textarea name="symptoms" id="symptoms" ></textarea>
					</div>
					
					<div class="gaps">
						<p>Diagnosis</p>
							<input type="text" name="diagnosis" id="diagnosis" />
					</div>
					
					<div class="gaps">
						<p>Physician Name</p>
							<input type="text" name="physician_name" id="physician_name" placeholder="First name space last name"/>
					</div>
					
					<div class="gaps">
						<p>Date Of Diagnosis</p>
							<input type="text" name="date_of_diagnosis" id="date_of_diagnosis" />
					</div>
					
					<div class="gaps">
						<p>Follow-up Required</p>
							
						
						<select class="form-control" name="follow_up_required">
						<option value="select">Select</option>
  <option value="yes">yes</option>
  <option value="no">no</option>
  
				</select>	
						
					</div>
					
					<div class="gaps">
						<p>Date Of Follow-up</p>
							<input type="text" name="date_of_follow_up" id="date_of_follow_up" />
					</div>
					
					<div class="gaps">
						<p>Total Amount</p>
							<input type="text" name="total_amount" id="total_amount" />
					</div>
					
					<div class="gaps">
						<p>Mode Of Payment</p>
						
						<select class="form-control" name="mode_of_payment">
						<option value="select">Select</option>
  <option value="card">card</option>
  <option value="cash">cash</option>
  
				</select>		

					</div>
					
					<div class="gaps">
						<p>Card Number</p>
							<input type="text" name="card_number" id="card_number" />
					</div>
				</div>
				<div class="clear"></div>
				<input type="submit" value="Submit" name="Submit">
				<input type="submit" value="Reset"  onclick="PatientDiagnosisDetails.jsp;">
			</form>
		</div>
   </div>
</body>
</html>