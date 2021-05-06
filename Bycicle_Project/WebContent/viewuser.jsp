<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %>

<% request.setCharacterEncoding("UTF-8"); %>


<!DOCTYPE>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>신고하기</title>
</html>
<body>
	
	<h1>신고 하기</h1>
	<form method="post" action="view.jsp">
		아이디: <input type="number" name="id" maxlength="16" required><br/>
		<input type="submit" value="신고하기">
		</form>
	<button onclick="history.go(-1)">메인페이지로</button>
</body>
</html>