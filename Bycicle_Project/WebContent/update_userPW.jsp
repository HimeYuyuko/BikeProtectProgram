<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" contentType="text/html; charset=UTF-8">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<link rel="stylesheet" type="text/css" href=create_A.css>
<link href="create_A.css	" type="text/css" rel="stylesheet">
<title>정보 수정</title>
<body>

<h1> 정보 변경</h1>
	<form method="post" action="update_userPwPro.jsp">
		아이디: <input type="text" name="id" maxlength="12" required><br/>
		이전 패스워드: <input type="password" name="passwd" maxlength="12" required><br/>
		변경할 패스워드 :<input type="text" name="rpasswd" id="rpasswd" maxlength="12" required></br>
		<input type="submit" value="패스워드 변경">
		</form><p><button type="button" onclick="history.go(-1)">돌아가기</button>

</body>
</html>