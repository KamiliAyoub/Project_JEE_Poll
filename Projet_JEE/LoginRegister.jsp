<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<form action="LoginRegister" method="post" >
	<div>
		<table style="background-color: lightgreen ; margin-left:20px ; margin-right:20px ">
			
			<tr><td><h3 style="color:red">Login Page !!!!!</h3></td></tr>
			<tr><td> UserName</td><td><input type="text" name="username"></td></tr>
			<tr><td> Password</td><td><input type="text" name="password"></td></tr>
			<tr><td><input type="submit" name="submit" value="Login"></td><td><a href="Registration.jsp">Registration</a></td>
			<td><a href="HOME.jsp">Back</a></td></tr>
			
		</table>
	</div>
</form>

</body>
</html>