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
<title>Images</title>
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
<form action="displayimages" method="get" enctype='multipart/form-data' >
<%
String username = "root";
		String pwd = "akhilairuku1";
		String connUrl="jdbc:mysql://localhost:3306/testerdb1?useSSL=false";
 %>

<% 
try{ 
	Class.forName("com.mysql.jdbc.Driver");
	Connection con = DriverManager.getConnection(connUrl, username, pwd);
	PreparedStatement ps = con.prepareStatement("SELECT * FROM testerdb1.user where imagelink is not null");

  System.out.println("database connected");


ResultSet  rs = ps.executeQuery();
while(rs.next()){
%>
<table style = "width:100"  >
<tr>
<th><%=rs.getString("username") %></th></tr>
<tr>
<td>
<a href="http://localhost:8080/Sampler/details.jsp?username=<%=rs.getString("username") %>" name = "http://localhost:8080/Sampler/details.jsp?username=<%=rs.getString("username") %>"><img alt="Image" src=<%=rs.getString("imagelink") %> width="160" height="160"	class="img-thumbnail" /></a>
</td>
</tr>

<tr>

<% 
}

} catch (Exception e) {
e.printStackTrace();
}

%>

 <tr> <td>	<a href = "yettoview.jsp">Profiles yet to be viewed</a> </td> </tr> 

 
 <tr> <td><a href = "viewedprofiles.jsp">Visited</a> </td> </tr> 
 
 
 
 
 <% 
try{ 
	Class.forName("com.mysql.jdbc.Driver");
	Connection con = DriverManager.getConnection(connUrl, username, pwd);
	PreparedStatement ps = con.prepareStatement("SELECT * FROM testerdb1.loginusers ");


ResultSet  rs = ps.executeQuery();
while(rs.next()){

%>
 <tr><td>
<a href="http://localhost:8080/Sampler/updateprofile.jsp?username=<%=rs.getString("username") %>" />
<p>Update your profile?</p></a></td></tr> 
 <% 
}
}
 catch (Exception e) {
e.printStackTrace();
}

%>
 
 <!-- 
  <tr> <td>	<input type="text" name="text" value="" /> </td> </tr>
  
  
  <tr> <td>	<input type="submit" name="searchby" value="searchby" /> </td> </tr> -->
  
  <tr> <td>	<input type="submit" name="exit" value="exit" /> </td> </tr>
      
     <%--   <%
       
       String newp = request.getParameter("newPeople");
       String viwed = request.getParameter("viewed");
       String searchbtn = request.getParameter("searchby");
       if(newp.equals("newPeople")){
    	   
    	   response.sendRedirect("http://localhost:8080/Sampler/yettoview.jsp");
			
    	   
       }
       else if(viwed.equals("viewed")){
    	   response.sendRedirect("http://localhost:8080/Sampler/viewedprofiles.jsp");
       }
       
       else if(searchbtn.equals("searchby")){
    	   
    	   
    	   
       }
       
       
       %>
       
       --%>

</tr>
</table>

</form>
</body>
</html>