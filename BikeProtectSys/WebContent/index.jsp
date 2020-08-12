<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="needs.User" %>
<%
	request.setCharacterEncoding("UTF-8"); 
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
				<%
					if (session.getAttribute("user") == null) {
				%>
				<a href="./login.jsp">login</a>
				<%
					} else { 
								String nickname = ((User) session.getAttribute("user")).nickname;
								String hash = ((User) session.getAttribute("user")).hash;
				%>
				<button type="button">어서오세요 <b><%= nickname %></b>님</button>
				<nav id="user_command" hidden="hidden">
					<ul>
						<li>
							<a href="./user.jsp?hash=<%= hash %>"></a>
						</li>
						<li>
							<a href="./logout.jsp"></a>
						</li>
					</ul>
				</nav>
				<%
					} 
				%>
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