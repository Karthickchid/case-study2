<%@page import="java.util.Iterator"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.daoImpl.DisplayEmpFormDaoImpl"%>
<%@page import="com.dao.DisplayEmpFormDao"%>
<%@page import="com.beans.Common_Employee"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body background="mburef.jpg">
<h1>MBU referred Page</h1>
	<table border="1">
		<%
			Common_Employee reg = new Common_Employee();
			DisplayEmpFormDao formList = new DisplayEmpFormDaoImpl();
			ArrayList<Common_Employee> display = formList.refer(reg);
		%>

		<tr>
		    <td>Employee ID</td>
			<td>Name</td>
			<td>Gender</td>
			<td>Qualification</td>
			<td>Skill</td>
			<td>Email</td>
			<td>Joining date</td>
			

		</tr>

		<%
			Iterator<Common_Employee> it = display.iterator();
		%>
		<%
			while (it.hasNext()) {
				Common_Employee form = it.next();
			//	out.println(it.next());
		%>
		<tr>
			<td><%=form.getEmp_id()%></td>
			<td><%=form.getName()%></td>
			<td><%=form.getGender()%></td>
			<td><%=form.getQualification()%></td>
			<td><%=form.getSkill()%></td>
			<td><%=form.getEmail()%></td>
			<td><%=form.getDoj()%></td>
			
			
			<td>
			
			
			
			 
				<form action="AllocateSystem" method="post">
					<!-- <input type="text" name="joiningDate"></td> -->
					<td>
					<input type="hidden" name="emp_id" value=<%=form.getEmp_id()%>>
					<input type="hidden" name="id" value=<%=form.getApplication_id()%>>
					<input type="hidden" name="name" value=<%=form.getName()%>> 
					<input type="hidden" name="dob" value=<%=form.getDob()%>>
					<input type="hidden" name="gender" value=<%=form.getGender()%>>
					<input type="hidden" name="qualification" value=<%=form.getQualification()%>>
					<input type="hidden" name="skill" value=<%=form.getSkill()%>>
					<input type="hidden" name="email" value=<%=form.getEmail()%>>
					<input type="hidden" name="mobile" value=<%=form.getMobile()%>>
					<input type="hidden" name="joiningDate" value=<%=form.getDoj()%>>
					<input type="hidden" name="password" value=<%=form.getPassword()%>>
					
					
					<input type="submit" value="Refer">
				</form>
			</td>
			<td>
				<form action="Decline" method="post">
					<input type="hidden" name="id" value=<%=form.getApplication_id()%>> <input
						type="submit" value="Reject">
				</form>
			</td>

		</tr> 
			
			
			<%} %>
</tr>
	</table>
</form> 
</body>
</html>