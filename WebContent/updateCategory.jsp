<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%String id=(String)request.getAttribute("id");
  String name= (String) request.getAttribute("name");
  HttpSession session1= request.getSession();
  session1.setAttribute("view", "admin");
%>
	<fieldset>
<legend>Update category</legend>
<form action="/CoffeShop/action/updateCategory1" method="post">
<input type="text" name="name" value="<%=name %>">
<input type="hidden" name="id" value="<%=id%>">
<input type="submit" value="Update"  %>

</form>
</fieldset>
</body>
</html>