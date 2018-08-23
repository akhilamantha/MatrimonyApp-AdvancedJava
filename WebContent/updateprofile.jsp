
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.DriverManager" %>
<%@page import="java.sql.PreparedStatement" %>
<%@page import="java.sql.Connection" %>
<%@page import="javax.servlet.http.HttpServlet" %>
<%@page import="javax.servlet.http.HttpServletRequest" %>
<%@page import="javax.servlet.http.HttpServletResponse" %>



<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<form action="updateservlet" method="get" enctype='multipart/form-data' >
<%

String username = "root";
String pwd = "akhilairuku1";
String connUrl="jdbc:mysql://localhost:3306/testerdb1?useSSL=false";

%>

<% 
try{ 
	Class.forName("com.mysql.jdbc.Driver");
	Connection con = DriverManager.getConnection(connUrl, username, pwd);
	PreparedStatement ps = con.prepareStatement("SELECT * FROM testerdb1.user where username = ? ");
     ps.setString(1, request.getParameter("username"));
     
ResultSet  rs = ps.executeQuery();
/* 

PreparedStatement is = con.prepareStatement("update testerdb1.user set (?,?,?,?,?,?,?,?,?,?,?,?) ");
ps.setString(1, request.getParameter("username"));
ps.setString(2,  request.getParameter("email"));
ps.setString(3,  request.getParameter("pwd"));
ps.setString(4,  request.getParameter("name"));
ps.setNString(5, request.getParameter("surname"));
ps.setNString(6, request.getParameter("dob"));
ps.setNString(7, request.getParameter("telephone"));
ps.setNString(8, request.getParameter("address"));
ps.setNString(9, request.getParameter("ptc"));
ps.setNString(10, request.getParameter("salary"));
ps.setNString(11, request.getParameter("sex"));
ps.setNString(12, request.getParameter("personaladdress"));


is.executeUpdate();
 */
while(rs.next()) {
	
%>

<table  style=" margin-left: 200px; font-family: 'Lucida Console';
font-size: 25px;
color: #54475B;
font-weight: normal;
text-decoration: none;
font-style: normal;
font-variant: small-caps;"> 

	<tr>	
	<td>	<h3 style="color: blue;">DETAILS HERE</h3> 
			<tr>
			<td> UserName </td>
			<td> <input type = "text" name = "username" value= <%=rs.getString("username") %>></td> </tr>
			
			
			
				
			<tr>
			<tr>
		 <td>	Email :</td> 
		 <td> <input type = "text"  name = "email" value= <%=rs.getString("email") %>> </td> </tr>
		 
			
			
			<tr>
			<td> Password </td>
			<td> <input type = "text" name = "pwd" value= <%=rs.getString("password") %>></td> </tr>
			
			
		
		 	
			<tr>
			<td> Name </td>
			<td> <input type ="text" name = "name" value = <%=rs.getString("name") %>> </td> </tr>
			
			<tr>
			
			
		<tr>
		 <td>	Surname : </td>
		 <td><input type ="text" name = "surname" value = <%=rs.getString("surname") %>> </td> </tr>
			
		
		<tr>
		 <td>	Date of Birth : </td>
		 <td><input type = "text" name = "dob" value = <%=rs.getString("dateofbirth") %>> </td> </tr>
		 
		
		
		<tr>
		 <td>	Telephone: </td>
		  <td> <input type = "text" name = "telephone" value = <%=rs.getString("telephone") %>> </td> </tr>
		  
		<tr> 
		<td>	Address : </td>
		 <td> <input type = "text" name = "address" value = <%=rs.getString("address") %>> </td> </tr>
		
		<tr>
		 <td>	Post Code : </td>
		 <td><input type = "text" name = "ptc" value = <%=rs.getString("postcode") %>> </td> </tr>
		
		<tr>
		 <td>  salary :</td>
		 <td><input type = "text" name = "salary" value = <%=rs.getString("salary") %>> </td> </tr>
		 
		 
		 
		 <tr>
		 <td>  sex :</td>
		 <td><input type = "text" name = "sex" value = <%=rs.getString("sex") %>> </td> </tr>
		 
		 <tr>
		 <td>  personal address :</td>
		 <td><input type = "text" name = "personaladdress" value = <%=rs.getString("personaladdress") %>> </td> </tr>
		
<tr> <td>	<input type="submit" name="update" value="update" /> </td> </tr>
</table>
<% 


}
}
 catch (Exception e) {
e.printStackTrace();
}

%>
</div>


</form>

</body>
</html>