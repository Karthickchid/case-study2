<%@page import="com.daoImpl.DisplayEmpFormDaoImpl"%>
<%@page import="com.dao.DisplayEmpFormDao"%>
<%@page import="com.beans.Employee"%>
<%@page import="com.daoImpl.EmployeeDaoImpl"%>
<%@page import="com.dao.EmployeeDao"%>
<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.Iterator"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body background="application.jpg">


<h1>Allotment Page</h1>
	<table border="1">
		<%
			request.getAttribute("username");
			Employee reg = new Employee();
			DisplayEmpFormDao formList = new DisplayEmpFormDaoImpl();
			ArrayList<Employee> display = formList.forms(reg);
		%>

		<tr>
		    <td>Application ID</td>
			<td>Name</td>
			<td>DOB</td>
			<td>Gender</td>
			<td>Qualification</td>
			<td>Skill</td>
			<td>Email</td>
			<td>Mobile</td>
			<td>Joining date</td>
			

		</tr>

		<%
			Iterator<Employee> it = display.iterator();
		%>
		<%
			while (it.hasNext()) {
				Employee form = it.next();
			//	out.println(it.next());
		%>
		<tr>
			<td><%=form.getApplication_id()%></td>
			<td><%=form.getName()%></td>
			<td><%=form.getDob()%></td>
			<td><%=form.getGender()%></td>
			<td><%=form.getQualification()%></td>
			<td><%=form.getSkill()%></td>
			<td><%=form.getEmail()%></td>
			<td><%=form.getMobile()%></td>
			
			<td>
			
			
			
			
				<form action="SendJoiningDateServlet" method="post">
					<input type="text" name="joiningDate"></td>
					<td>
					<input type="hidden" name="id" value=<%=form.getApplication_id()%>>
					<input type="hidden" name="name" value=<%=form.getName()%>> 
					<input type="hidden" name="dob" value=<%=form.getDob()%>>
					<input type="hidden" name="gender" value=<%=form.getGender()%>>
					<input type="hidden" name="qualification" value=<%=form.getQualification()%>>
					<input type="hidden" name="skill" value=<%=form.getSkill()%>>
					<input type="hidden" name="email" value=<%=form.getEmail()%>>
					<input type="hidden" name="mobile" value=<%=form.getMobile()%>>
					<input type="hidden" name="password" value=<%=form.getPassword()%>>
					
					
					<input type="submit" value="Accept">
				</form>
			</td>
			<td>
				<form action="Decline" method="post">
					<input type="hidden" name="id" value=<%=form.getApplication_id()%>> 
					<input type="hidden" name="decline" value="hrReject">
					<input type="submit" value="Reject">
				</form>
			</td>

		</tr>

		<%
			}
		%>
		

	</table>
</form>


<form action="hrHome.jsp">

<button type="submit">Home</button>
</form>

</body>
</html>