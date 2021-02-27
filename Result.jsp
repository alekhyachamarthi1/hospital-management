<%@page import="com.hms.constants.SuccessConstants"%>
<%@page import="java.util.List"%>
<%@page import="com.hms.model.EnrollPatientTO"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Patient Details</title>
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

<% 

EnrollPatientTO plist =(EnrollPatientTO ) session.getAttribute("p");
%>
<table align="right" style="margin-right: 15px">
<tr><td >
 <a href="LogoutController">
<img src="logout1.png" alt="Log out" width="40" height="30"  border="0"></a></td></tr>
 <tr><td>
 <a href ="Home.jsp">
<img src="home.png" alt="Home"  width="40" height="30" border="0"></a></td></tr>
 
 </table>
<h1 align="center">Patient Details</h1>

<p align="center">Patient Name:<%=plist.getFirst_name().concat(" ").concat(plist.getLast_name()) %></p>
<p align="center">Email:<%=plist.getEmail() %></p>
<p align="center">Contact Number:<%=plist.getContact_no() %></p>
<p align="center">State Name:<%=plist.getState_name() %></p>
<p align="center">Plan Name:<%=plist.getPlan_name() %></p>
</body>
</html>