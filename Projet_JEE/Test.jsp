<%@page import="java.util.ArrayList"%>
<%@page import="com.JEE.operation.Op_Questionnaire"%>
<%@page import="javax.xml.bind.ParseConversionEvent"%>
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
<form  action="Test" method="post">
	<div>
		<table style="background-color: lightgreen ; margin-left:20px ; margin-right:20px ">
			
			
			 <% int id_questionnaire =Integer.parseInt((String)request.getAttribute("data"));
			
			   Op_Questionnaire op = new Op_Questionnaire();
	           ArrayList<String> questions = op.questions(id_questionnaire) ;
	           ArrayList<Integer> id_ques = op.id_question(id_questionnaire) ;
	           
	            int nb = questions.size() ; %>
	            
			<tr><td><h3>Answer   :</h3></td></tr>
			
			<%
			for (int i=0;i<nb;i++)
				{ 
				%>
				
					<tr>
				<td><%=questions.get(i)%>   :</td>
				<td>
				<select id="answer" name="<%=i%>">
				<option value="True">True</option>
				<option value="False">False</option>
				</select>
				</td>
				</tr>
			
				<%}%>	
				
            <td><input type="submit" name="btn" value="faite"></td> 
            <input type="hidden" name="a" value="<%=id_questionnaire%>"/>
				
		 
			
			
			
		</table>
	</div>
</form>
</body>
</html>