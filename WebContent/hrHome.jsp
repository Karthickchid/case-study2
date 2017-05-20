<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>HR Home</title>
</head>
<body background="Home.jpg">


<%
	session.getAttribute("username");
 %>
<h1 style="color:aqua; font-size: 1cm;">HR  </h1>
<form action="Application.jsp">
<button type="submit">Application</button>
</form>
<br>
<form action="AcceptingEmployee.jsp">
<button type="submit">Accepted Employees</button>
</form>
<br>
<form action="hrReferred.jsp">
<button type="submit">MBU Referred Employees</button>
</form>
<br>
<form action="Home.jsp">
<button type="submit">Log Out</button>
</form>


</body>
</html>