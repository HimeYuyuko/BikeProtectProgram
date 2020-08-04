<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<link rel="stylesheet" type="text/css" href=create_A.css>
<link href="create_A.css" type="text/css" rel="stylesheet">
<title>회원가입</title>
</html>
<body>
	회원가입
	<form method="post" action = "create_precode.jsp" id="create_code">
	<pre>등록번호 : <input type = "submit" value="등록번호 만들기" onclick="create_precod.jsp"><br/></pre>
	</form>
	<form method="post" action="update_byciclemember.jsp" id="login">
		
		<pre>패스워드 : <input type="password" name="pass" id="pass_ipnut" maxlength="12" required><br/></pre>
		<pre>이름 :    <input type="text" name="name" id="name_ipnut" maxlength="12" required><br/></pre>
		<!-- placeholder="00*-000*-0000" pattern="[0-9]{2,3}-[0-9]{3,4}-[0-9]{3,4}"  -->
		<pre>이메일 주소 : <input type="text" name="mail" id="mail_ipnut" maxlength="20" placeholder="###@####.com" pattern="[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,3}$" required title="###@####.com"><br/></pre>
		<pre>전화번호 :   <input type="tel" name="tel" id="tel" maxlength="13" placeholder="000-0000-0000" pattern="[0-9]{2,3}-[0-9]{3,4}-[0-9]{3,4}" required title="000-0000-0000"><br/></pre>
		<pre>구분 : <input type="radio" name="user" value="0" checked> 학생 <input type="radio" name="user" value="1"> 대학원 <input type="radio" name="user" value="2"> 교직원</pre>
		<input type="submit" value="회원가입">
		<button type="button" onclick="history.go(-1)">돌아가기</button>
	</form>
		
</body>
</html>