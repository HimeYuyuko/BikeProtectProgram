<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<link rel="stylesheet" type="text/css" href="main.css">
<link href="main.css" type="text/css" rel="stylesheet">
<title>����ȭ��</title>
</html>
<body>
	�α���
	<form method="post" action="Bycicle_Login.jsp" id="login">
		<pre>���̵� :   <input type="text" name="id" id="id_ipnut" maxlength="12" required><br/></pre>
		<pre>�н����� : <input type="password" name="pass" id="pass_ipnut" maxlength="12" required><br/></pre>
		<input type="submit" value="�α���">
		<button type="button" onclick="location.href='Create_byciclemember.jsp'">ȸ������</button>
		<input type="submit" formaction="login_admin.jsp" value="������ �α���">
	</form>
		
</body>
</html>>