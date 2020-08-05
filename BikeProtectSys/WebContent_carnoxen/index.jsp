<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<% request.setCharacterEncoding("UTF-8"); %>

<% 
	String message = (String) request.getAttribute("message");
%>

<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8" />
		<title>Insert title here</title>
	</head>
	<body>
		<h2>Please login</h2>
		<form method="post" action="login.jsp">
			<p><label>id: <input type="text" name="id" maxlength="40" /></label></p>
			<p><label>password: <input type="password" name="passwd" maxlength="45" /></label></p>
			<p><input type="submit" value="login" /></p>
		</form>
		<p style="color: red;"><%= ((message != null) ? message : "") %></p>
	</body>
</html>