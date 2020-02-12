<%@page import="com.JEE.operation.Op_Questionnaire"%>
<%@page import="com.JEE.beans.recommandation"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.JEE.operation.OP_User"%>
<%@page import="com.JEE.operation.Op_recommandation"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<form action="Le_Chef_De_Projet" method="post">
	 
	 
	  <%		Op_recommandation op_rec=new Op_recommandation();
	  			OP_User op_user=new OP_User();
	  			Op_Questionnaire opq = new Op_Questionnaire() ;
	  			
	  			ArrayList<recommandation> result = new ArrayList<recommandation>(); 
	  			result = op_rec.getResult();
	  			int nb =result.size();
 
	  			%>
	
		<table border="2">
			
			<tr>
			<td>Nom de User</td>
			<td>Nom Qustionnaire </td>
			<td>Taux de Reponse</td>
			<td>Recommandation</td>
			<tr/>
			
			<% for (int i=0;i<nb ;i++){
				recommandation rq = new recommandation();
				rq = result.get(i) ;
								%>
			 
			<tr>
			<td><%=op_user.nomUser(rq.getId_user())%></td>
			<td><%=opq.NomQuestionnaire(rq.getId_questionnaire()) %></td>
			<td><%=rq.getTaux_reponse() %> %</td>
		 
		     <% if(rq.getRecommandation().equals("Aucun_Recommandation") || rq.getRecommandation().isEmpty())  { %>  
		 
			 
			 <td><input type="text" name="recommandation"></td>
			 <td><input type="submit" name="btn" value="recommander_<%=i%>"></td>
			 <td><input type="hidden" name="recommander_<%=i%>" value="<%=rq.getId_recom()%>"/></td>
			 
			 <% }  
		 
		      	
		  else { %>  
		 
			<td><%=rq.getRecommandation()%> </td>
			
			 <% } %> 
			<tr/>
			 
			 <% } %>
		
		</table>
		<tr><td><a href="HOME.jsp">Back</a></td></tr>
</form>
</body>
</html>