<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="com.JEE.beans.Questionnaire"%>
<%@page import="com.JEE.operation.Op_Questionnaire"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<form action="Questionnaire" method="post">
	<div>
	   <% 
		Op_Questionnaire op = new Op_Questionnaire();
		Questionnaire q =op.nb_question();
		%>
		<h3>Remplir le QUESTIONNAIRE :</h3>
		<table style="background-color: lightgreen ">
		<br>
 				<tr>
				<td>Nom_Questionnaire :</td>
				<td><%=q.getNom()%>  </td>
				<tr/>
			<br><br> 
			
				<%   
				    for(int i=1 ;i<q.getNb()+1 ;i++){  %>
				<tr>
				<td> Question <%=i%> :</td>
				<td><input type="text" name="question_<%=i%>"/></td>
				</tr>
				<tr>
				<td>Reponse <%=i%> :</td>
				<td>
				<select name="reponse_<%=i%>">
					<option value=""></option>
					<option value="True">True</option>
					<option value="False">False</option>
				</select>
				</td>
				</tr>	
			<%	}%>
 			<tr><td><input type="submit" name="btn_Q" value="Créer"></td></tr>
		</table>
	</div>
</form>

</body>
</html>