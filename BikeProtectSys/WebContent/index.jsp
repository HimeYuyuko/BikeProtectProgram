<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="needs.User" %>

<% request.setCharacterEncoding("UTF-8"); %>

<% 
	String message = (String) request.getAttribute("message");
%>

<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8" />
		<title>Homepage</title>
	</head>
	<body>
		<header>
			<div>
				<% if (session.getAttribute("user") == null) { %>
					<a href="./login.jsp">login</a>
				<% 
					} else { 
					String nickname = ((User) session.getAttribute("user")).nickname;
					String id = ((User) session.getAttribute("user")).id;
				%>
					<form>
						<label for="idToggleSwitch"></label>
						<input type="checkbox" id="idToggleSwitch" />
					</form>
				<% } %>
			</div>
		</header>
		<main>
			<h1>Search bicycle</h1>
			<form method="post" action="login.jsp">
				<p><input type="search" name="bicycle_id" maxlength="12" pattern="\d{2}-\d{2}-\d{6}" placeholder="01-23-456789" /></p>
				<p><input type="file" accept="image/*" capture="environment" /><input type="submit" value="search" /></p>
			</form>
			<p style="color: red;"><%= ((message != null) ? message : "") %></p>
		</main>
	</body>
</html>