<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<% String message = (String) request.getAttribute("message"); %>
<!DOCTYPE>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<link rel="stylesheet" type="text/css" href="main.css">
<link href="main.css" type="text/css" rel="stylesheet">
<title>메인화면</title>
</html>
<body>
<!--include file="./includes/header.jsp" %>-->
	<h1>Search Bicycle</h1>
	<form method="get" action="search.jsp">
	<p><input type="search" name="bycyicle_id" maxlength="12" pattern="\d{2}-\d{2}-\d{6}" placeholder="01-23-456789">
	<input type="submit" value="search"></form>
	<form method="post" action="Bycicle_Login.jsp" id="login">
		<pre>아이디혹은 등록 번호 :   <input type="text" name="id" id="id_ipnut" maxlength="12" required><br/></pre>
		<pre>패스워드 : <input type="password" name="pass" id="pass_ipnut" maxlength="12" required><br/></pre>
		<input type="submit" value="로그인">
		<button type="button" onclick="location.href='Create_bicyclemember.jsp'">회원가입</button>
		<input type="submit" formaction="bicycle_maniger.jsp" value="관리자 로그인">
		</form>
		
</body>
</html>