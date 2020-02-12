<%@page import="com.JEE.beans.Questionnaire"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.JEE.operation.Op_Questionnaire"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.sql.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
</head>
<body>

 <%    Op_Questionnaire op = new Op_Questionnaire();
	   ArrayList<Questionnaire> questionnare = op.getTQuestionnaire() ;
	   int nb =  questionnare.size() ; %>
	   
	   
	   
	   
<form action="UserChoice" method="post">
	<div>
	
	
	<center>
	
	
	<h3>La liste du Questionnaire disponibles :</h3>
		<table border="1" style="background-color: lightgreen ; margin-left:20px ; margin-right:20px ">
			 
			
		 				
			  
				
				<td>nom_questionnaire</td>
				
				<td>nombre_question</td>
				
				</tr>
			 
			  	<%
			for(int i=0;i<nb;i++){
				
				Questionnaire q = new Questionnaire();
				q = questionnare.get(i); 
			
			%>
			  <tr>
			  <td><%=q.getNom()%></td>
			  
			  <td><%=q.getNb() %></td>
			  </tr>
					  
			  <%   } %>
				 
			
			 
			
	  		
	  	
				
			
			
				
				
			
			
		</table>
			<a href="Le_Resource_Humaine.jsp">Back</a>
	</div>
</form>

</center>
</body>
</html>