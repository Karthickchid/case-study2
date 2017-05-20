<%@page import="com.daoImpl.EmployeeDaoImpl"%>
<%@page import="com.dao.EmployeeDao"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<jsp:useBean id="p" class="com.beans.Employee" scope="request"/>

<jsp:setProperty property="name" name="p"/>
<jsp:setProperty property="gender" name="p"/>
<jsp:setProperty property="qualification" name="p"/>
<jsp:setProperty property="blood_group" name="p"/>
<jsp:setProperty property="email" name="p"/>
<jsp:setProperty property="mobile" name="p"/>
<jsp:setProperty property="address" name="p"/>
<jsp:setProperty property="skill" name="p"/>
<jsp:setProperty property="dob" name="p"/>
<jsp:setProperty property="password" name="p"/>
<%
EmployeeDao pd=new EmployeeDaoImpl();
pd.insert(p);
%>
</body>
</html>