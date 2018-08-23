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
background-image: url("C:\\Users\\Manikesh\\Desktop\\JAVA-Dr.Sam\\Sampler\\WebContent\\images\\awe.jpg");
/* Full height */
    height: 100%; 
    /* Center and scale the image nicely */
    background-position: center;
    background-size: 100%;
}
</style>
<BODY class="bg">
<div >


<form action="loginRegister" method="get" enctype='multipart/form-data' >

<table  style=" margin-left: 200px; font-family: 'Lucida Console';
font-size: 25px;
color: #54475B;
font-weight: normal;
text-decoration: none;
font-style: normal;
font-variant: small-caps;"> 


<tr>
<td><h3>Kansas City Matrimony</h3>
<tr><td>Username: </td><td><input type="text" name = "username" ></td></tr>
<tr><td>Password: </td><td><input type="password" name = "password1" ></td></tr>
<tr><td><input type="submit" name = "submit"  value="login"></td><td><a href = "register.jsp">Registration</a></td></tr>
</table>
</form>
</div>
</BODY>


</html>