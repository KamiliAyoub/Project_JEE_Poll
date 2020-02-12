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
<form action="UserChoice" method="post">
	<div>
	
	<% 	Op_Questionnaire op = new Op_Questionnaire();
	    ArrayList lis = op.getAllNomQuestionnaire() ;
	    ArrayList ids = op.getAllid() ;
	    
	    int nb = lis.size() ;%>
	    
		<table style="background-color: lightgreen ; margin-left:20px ; margin-right:20px ">
			<tr>
			<td><h3>Choose :</h3></td></tr>
			 
				 <tr><td><select id="choi" name="choix" >
			 		  
			 		  <%  for (int i = 0 ;i<nb;i++){    %>
 		    
                     <option value="<%=ids.get(i) %>" ><%=lis.get(i) %></option>

			 	     <%  }  %>
 
			   </select></td></tr>

				<td><input type="submit" name="choice" value="Choose Test"></td>
 		
		</table>
	</div>
</form>


</body>
</html>