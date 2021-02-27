<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Login</title>
 <link rel="stylesheet" type="text/css" href="style.css" />
</head>
<body>
<%
String errMsg="";
if (request.getParameter("login")!=null)
{
	
	if(request.getAttribute("errMsg")!=null)
	{
	errMsg=(String)request.getAttribute("errMsg");
	%>
	<br>
	<div align="center" style="color: red; font-size: 20px;"><%=errMsg %></div>
	<%
	}
	}
%>


<form action="AdminLoginController" method = "post">
<h1>Admin Login</h1>

<div class="inset">
<p>
    <label style="color:white;" for="username">USER NAME</label>
    <input style="color:black;"type="text" name="username" id="username">
  </p>
  <p>
    <label style="color:white;" for="password">PASSWORD</label>
    <input style="color:black;"type="password" name="password" id="password">
  </p>
</div>
  <p class="p-container">
   
    <input type="submit" name="login" id="go" value="Log in">
  </p>
</form>


</body>
</html>