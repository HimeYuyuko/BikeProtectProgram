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
	<h1>신고 취소</h1>
	<form method="post" action="report_admincPro.jsp">
		신고된 계정: <input type="text" name="id" maxlength="12" required><br/>
		계정 패스워드: <input type="password" name="passwd" maxlength="12" required><br/>
		<div style="display:none"><input type="radio" name="rp" id="F" value="F" checked="checked"><label for="F">도난취소</label></div>
		<input type="submit" value="신고 취소하기">
		</form>
	<button onclick="history.go(-1)">메인페이지로</button>
</body>
</html>