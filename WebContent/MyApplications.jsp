<%@page import="com.beans.Employee"%>
<%@page import="java.util.Iterator"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.daoImpl.DisplayEmpFormDaoImpl"%>
<%@page import="com.dao.DisplayEmpFormDao"%>
<%@page import="com.beans.Joining_Emp"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>My Applications</title>
</head>
<body background="mbuhome.jpg">
<h1>Appointment Page</h1>
	<table border="1">
		<%
			HttpSession ss = request.getSession();
			
			//String status = (String)request.getAttribute("value");
			
			
			
			String username=(String)ss.getAttribute("m1_userName");
			String password=(String)ss.getAttribute("m_password");
			//Joining_Emp je = new Joining_Emp();
		Joining_Emp reg=new Joining_Emp();
			DisplayEmpFormDao user = new DisplayEmpFormDaoImpl();
			//ArrayList<Joining_Emp> data = user.forms(je);
			//ArrayList<Joining_Emp> data = user.forms(reg);
			reg=user.getemp(username,password);
			System.out.println("----------"+username +"--------------"+ password);
			
			System.out.println("5"+reg.getName());
			
		%>
		

		<tr>
		    <td>Application ID</td>
			<td>Name</td>
			<td>Qualification</td>
			<td>Skill</td>
			<td>Email</td>
			<td>Mobile</td>
			<td>Joining date</td>
			

		</tr>

		<%--  <%
			//Iterator<Joining_Emp> it = data.iterator();
			//Iterator<Joining_Emp> it = data.iterator();
			//while (it.hasNext()) {
				//Joining_Emp form = it.next();
				//Joining_Emp form = it.next();
			//	out.println(it.next());
		%>  --%>
		<tr>
			<td><%=reg.getApplication_id()%></td>
			<td><%=reg.getName()%></td>
			<td><%=reg.getQualification()%></td>
			<td><%=reg.getSkill()%></td>
			<td><%=reg.getEmail()%></td>
			<td><%=reg.getMobile()%></td>
			<td><%=reg.getJoiningDate()%></td>
			
			
			<td>
			
			
			
			
				<form action="AcceptJoiningServlet" method="post">
					<td>
					<input type="hidden" name="id" value=<%=reg.getApplication_id()%>>
					 <input type="hidden" name="name" value=<%=reg.getName()%>> 
					<input type="hidden" name="dob" value=<%=reg.getDob()%>>
					<input type="hidden" name="gender" value=<%=reg.getGender()%>>
					<input type="hidden" name="qualification" value=<%=reg.getQualification()%>>
					<input type="hidden" name="skill" value=<%=reg.getSkill()%>>
					<input type="hidden" name="email" value=<%=reg.getEmail()%>>
					<input type="hidden" name="mobile" value=<%=reg.getMobile()%>>
					<input type="hidden" name="password" value=<%=reg.getPassword()%>>
					<input type="hidden" name="joiningDate" value=<%=reg.getJoiningDate()%>>
					
					
					
					
					<input type="submit" value="Accept">
				</form>
			</td>
			<td>
				<form action="Decline" method="post">
					<input type="hidden" name="id" value=<%=reg.getApplication_id()%>>
				
					 <input type="hidden" name="decline" value="hrReject">
					 <input type="submit" value="Reject">
				</form>
			</td>

		</tr>

		
 
	</table>
</form>
</body>
</html>