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
<title>already seen</title>
</head>
<style>
.bg {
background-image: url("C:\\Users\\Manikesh\\Desktop\\JAVA-Dr.Sam\\Sampler\\WebContent\\images\\pink.jpeg");
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
	PreparedStatement ps = con.prepareStatement("SELECT v.*,u.imagelink FROM testerdb1.visited v left join testerdb1.user u on u.username = v.username where url is not null");



ResultSet  rs = ps.executeQuery();
while(rs.next()){
%>


<table style = "width:100"  >
<tr>
<th><%=rs.getString("username") %></th>
<a href="http://localhost:8080/Sampler/details.jsp?username=<%=rs.getString("username") %>" name = "http://localhost:8080/Sampler/details.jsp?username=<%=rs.getString("username") %>"><img alt="Image" src=<%=rs.getString("imagelink") %> width="160" height="160"	class="img-thumbnail" /></a>

</tr>

<tr>

<% 

}

} catch (Exception e) {
e.printStackTrace();
}

%>



</body>
</html>