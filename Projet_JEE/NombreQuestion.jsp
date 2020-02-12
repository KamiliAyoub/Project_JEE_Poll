<%@page import="com.JEE.beans.Questionnaire"%>
<%@page import="com.JEE.operation.Op_Questionnaire"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<form action="NombreQuestion" method="post">
		<div><center>
	<h3>Créer QUESTIONNAIRE</h3>
		<table style="background-color: lightgreen " >
			
			<tr>
			<td>Nom Questionaire  :</td>
			<td><input type="text" name="id_nom" /></td>
			<tr/>
			
			<tr>
			<td>Nombre_Question :</td>
			<td><input type="text" name="nombre_question" /></td>
			<tr/>
			
			<tr>
			<td></td>
			<td><input type="submit" name="submit" value="Créer" /></td>
			<tr/>
		
		</table>
		</div>
</form>
</center>
</body>
</html>
