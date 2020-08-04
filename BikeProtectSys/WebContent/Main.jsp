<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<link rel="stylesheet" type="text/css" href="main.css">
<link href="main.css" type="text/css" rel="stylesheet">
<title>메인화면</title>
</html>
<body>
	로그인
	<form method="post" action="Bycicle_Login.jsp" id="login">
		<pre>아이디 :   <input type="text" name="id" id="id_ipnut" maxlength="12" required><br/></pre>
		<pre>패스워드 : <input type="password" name="pass" id="pass_ipnut" maxlength="12" required><br/></pre>
		<input type="submit" value="로그인">
		<button type="button" onclick="location.href='Create_byciclemember.jsp'">회원가입</button>
		<input type="submit" formaction="login_admin.jsp" value="관리자 로그인">
	</form>
		
</body>
</html>>