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
		<h1>Search bicycle</h1>
		<form method="post" action="login.jsp">
			<p><input type="text" name="bicycle_id" maxlength="12" pattern="\d{2}-\d{2}-\d{6}" placeholder="01-23-456789" /></p>
			<p><input type="file" accept="image/*" capture="environment" /><input type="submit" value="login" /></p>
		</form>
		<p style="color: red;"><%= ((message != null) ? message : "") %></p>
	</body>
</html>