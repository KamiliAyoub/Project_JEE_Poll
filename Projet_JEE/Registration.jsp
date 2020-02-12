<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<form action="Registration" method="post" >
	<div>
		<table
			style="background-color: skyblue ; margin-left:20px ; margin-right:20px ">
			<tr><td><h3 style="color:red">Registration Page !!!!!</h3></td></tr>
			<tr><td> UserName :</td><td><input type="text" name="username"></td></tr>
			<tr><td> Name :</td><td><input type="text" name="name"></td></tr>
			<tr><td> Password :</td><td><input type="text" name="password"></td></tr>
			<tr><td><input type="submit" name="submit" value="Register"></td><td><a href="LoginRegister.jsp">Back</a></td></tr>
			
		</table>
	</div>
</form>


</body>
</html>