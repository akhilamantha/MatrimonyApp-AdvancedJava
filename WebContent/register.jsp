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
background-image: url("C:\\Users\\Manikesh\\Desktop\\JAVA-Dr.Sam\\Sampler\\WebContent\\images\\pink.jpeg");
/* Full height */
    height: 100%; 
    /* Center and scale the image nicely */
    background-position: center;
    background-size: 100%;
}
</style>
<BODY class="bg">
<div>
	
	<form action="registerimpli"  method="get" enctype='multipart/form-data'>   
	
	<table  style=" margin-left: 200px; font-family: 'Lucida Console';
font-size: 25px;
color: 	#54475B;
font-weight: normal;
text-decoration: none;
font-style: normal;
font-variant: small-caps;"> 
	<tr>	
	<td>	<h3 style="color: blue;">REGISTER HERE</h3> 
			<tr>
			<td> UserName </td>
			<td> <input type="text" name="username" /> </td> </tr>
			
			<tr>
			<tr>
		 <td>	Email *:</td> 
		 <td> <input type="text" name="email" /> </td> </tr>
		 
		 
		 
			 <td>Password *:</td>
			<td>  <input type="text" name="pwd" /> </td> </tr>
		
			
			<tr>
			<td> Name </td>
			<td> <input type="text" name="name" /> </td> </tr>
			
			<tr>
			
			
		<tr>
		 <td>	Surname *: </td>
		 <td> <input type="text" name="surname" /> </td> </tr>
			
		
		<tr>
		 <td>	Date of Birth *: </td>
		 <td><input type="text" name="dob" /> </td> </tr>
		 
		
		
		<tr>
		 <td>	Telephone: </td>
		  <td> <input type="text" name="tel" /> </td> </tr>
		  
		<tr> 
		<td>	Address *: </td>
		 <td> <input type="text" name="add" /> </td> </tr>
		
		<tr>
		 <td>	Post Code *: </td>
		 <td><input type="text" name="ptc" /> </td> </tr>
		
		<tr>
		 <td>  salary :</td>
		 <td> <input type="text" name = "salary" /> </td> </tr>
		
		
<tr>
<td>Sex</td>
<td><input type="radio" name="sex" value="male">Male
<input type="radio" name="sex" value="Female" size="10">Female</td>
</tr>
		<tr>

		<tr>

		<tr>

<td>Personal Address</td>
<td><input type="text" name="personaladdress"
id="personaladdress" size="30"></td>
</tr>

<tr>
<td>Image link</td>
<td><input type="file" name="file"></td>
</tr>



 


<tr> <td>	<input type="submit" name="submit" value="register" /> </td> </tr> 

		
		</table>
	
	


<p>Note: Please make sure your details are correct before submitting form and that all fields marked with * are completed!.</p>

</form>
</div>
</body>
</html>