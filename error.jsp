<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html >
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
 <%if(session.getAttribute("errorMessage")!=null) {%>
<span style="color:red;"><%= session.getAttribute("errorMessage")%></span>
<%
session.removeAttribute("errorMessage");
} 
session.removeAttribute("errorMap");
%> 
</body>
</html>