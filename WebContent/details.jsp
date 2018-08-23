<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.DriverManager" %>
<%@page import="java.sql.PreparedStatement" %>
<%@page import="java.sql.Connection" %>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<style>
.bg {
background-image: url("C:\\Users\\Manikesh\\Desktop\\JAVA-Dr.Sam\\Sampler\\WebContent\\images\\d2.png");
/* Full height */
    height: 100%; 
    /* Center and scale the image nicely */
    background-position: center;
    background-size: 100%;
}
</style>
<BODY class="bg">
<div >
<body>
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

String visName = request.getParameter("username");

String visURL = "http://localhost:8080/Sampler/details.jsp?username="+request.getParameter("username");
PreparedStatement is = con.prepareStatement("insert into testerdb1.visited value(?,?)");
is.setString(1, visName);
is.setString(2, visURL);


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
			<td> <label name = "username" ><%=rs.getString("username") %></label></td> </tr>
			
			<tr>
			<tr>
		 <td>	Email :</td> 
		 <td> <label name = "email" ><%=rs.getString("email") %></label> </td> </tr>
		 
		 	
			<tr>
			<td> Name </td>
			<td> <label name = "name" ><%=rs.getString("name") %></label> </td> </tr>
			
			<tr>
			
			
		<tr>
		 <td>	Surname : </td>
		 <td><label name = "surname" ><%=rs.getString("surname") %></label> </td> </tr>
			
		
		<tr>
		 <td>	Date of Birth : </td>
		 <td><label name = "dob" ><%=rs.getString("dateofbirth") %></label> </td> </tr>
		 
		
		
		<tr>
		 <td>	Telephone: </td>
		  <td> <label name = "telephone" ><%=rs.getString("telephone") %></label> </td> </tr>
		  
		<tr> 
		<td>	Address : </td>
		 <td> <label name = "address" ><%=rs.getString("address") %></label> </td> </tr>
		
		<tr>
		 <td>	Post Code : </td>
		 <td><label name = "postcode" ><%=rs.getString("postcode") %></label> </td> </tr>
		
		<tr>
		 <td>  salary :</td>
		 <td><label name = "salary" ><%=rs.getString("salary") %></label> </td> </tr>
		 
		 
		 
		 <tr>
		 <td>  sex :</td>
		 <td><label name = "salary" ><%=rs.getString("sex") %></label> </td> </tr>
		 
		 <tr>
		 <td>  personal address :</td>
		 <td><label name = "salary" ><%=rs.getString("personaladdress") %></label> </td> </tr>
		

</table>
<% 
is.executeUpdate();

}
}
 catch (Exception e) {
e.printStackTrace();
}

%>
</div>
</body>
</html>