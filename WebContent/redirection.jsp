<%@page import="domen.User"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Redirection</title>
</head>
<body>
<% 
HttpSession sess = request.getSession();
User user = (User)sess.getAttribute("loggedInUser");
if(user != null){
%>
<p><%-- <%= user.getUsername() %> --%></p>
<%}else{
	
	response.sendRedirect("index.jsp");
	
}
	%>
</body>
</html>