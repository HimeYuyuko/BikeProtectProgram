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
	<form method="post" action="report_userPro.jsp">
		신고할 계정: <input type="text" name="id" maxlength="12" required><br/>
		해당 계정 패스워드: <input type="password" name="passwd" maxlength="12" required><br/>
		<div style="display:none"><input type="radio" name="rp" id="T" value="T" checked="checked"><label for="T">도난</label></div>
		<input type="submit" value="신고하기">
		</form>
	<button onclick="history.go(-1)">메인페이지로</button>
</body>
</html>