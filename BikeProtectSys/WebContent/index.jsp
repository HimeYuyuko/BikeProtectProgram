<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<% String message = (String) request.getAttribute("message"); %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8" />
		<title>Home page</title>
	</head>
	<body>
		<%@ include file="./includes/header.jsp" %>
		<!-- 메인 페이지, 자전거 주인 검색 -->
		<main>
			<h1>Search bicycle</h1>
			<form method="get" action="login.jsp">
				<p><input type="search" name="bicycle_id" maxlength="12" pattern="\d{2}-\d{2}-\d{6}" placeholder="01-23-456789" /></p>
				<p><input type="file" accept="image/*" capture="environment" /><input type="submit" value="search" /></p>
			</form>
			<p style="color: red;"><%= ((message != null) ? message : "") %></p>
		</main>
	</body>
</html>