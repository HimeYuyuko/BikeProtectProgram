<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %>

<% request.setCharacterEncoding("UTF-8"); %>


<!DOCTYPE>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>이미지 검색</title>
</html>
<body>
	
	<h1>이미지이미지 검색</h1>
	<form method="post" action="view.jsp">
		아이디: <input type="text" name="id" maxlength="16" required><br/>
		<input type="submit" value="찾기">
		</form>
	<button onclick="history.go(-1)">메인페이지로</button>
</body>
</html>