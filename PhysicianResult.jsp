<%@page import="com.hms.constants.SuccessConstants"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.util.List"%>
<%@page import="com.hms.model.EnrollPhysicianTO"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Physician Details</title>
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
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
<h1 align="center">Physician Details</h1>
<table align="right" style="margin-right: 15px">
<tr><td >
 <a href="LogoutController">
<img src="logout1.png" alt="Log out" width="40" height="30"  border="0"></a></td></tr>
 <tr><td>
 <a href ="Home.jsp">
<img src="home.png" alt="Home"  width="40" height="30" border="0"></a></td></tr>
 
 </table>
<table class="w3-table-all w3-card-4"> 
<tr>
	<td>Patient Name</td>
	<td>Department</td>
	<td>Qualification</td>
	<td>Experience</td>
	<td>State Name</td>
	<td>Plan Name</td>
</tr>
<% 

List<EnrollPhysicianTO> physicianList = (List<EnrollPhysicianTO>) session.getAttribute("physicianList");
%>
<%for(EnrollPhysicianTO p :physicianList){ %>
<tr>
<td><%=p.getFirst_name().concat(" ").concat(p.getLast_name()) %></td>
<td><%=p.getDepartment() %></td>
<td><%=p.getQualification() %></td>
<td><%=p.getExperience() %></td>
<td><%=p.getState_name()%></td>
<td><%=p.getPlan_name()%></td>
<td>
</tr>
<%} %>

<tr>
	
</tr>

</table>
</body>
</html>