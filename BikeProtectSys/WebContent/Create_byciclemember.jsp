<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<link rel="stylesheet" type="text/css" href=create_A.css>
<link href="create_A.css" type="text/css" rel="stylesheet">
<title>ȸ������</title>
</html>
<body>
	ȸ������
	<form method="post" action = "create_precode.jsp" id="create_code">
	<pre>��Ϲ�ȣ : <input type = "submit" value="��Ϲ�ȣ �����" onclick="create_precod.jsp"><br/></pre>
	</form>
	<form method="post" action="update_byciclemember.jsp" id="login">
		
		<pre>�н����� : <input type="password" name="pass" id="pass_ipnut" maxlength="12" required><br/></pre>
		<pre>�̸� :    <input type="text" name="name" id="name_ipnut" maxlength="12" required><br/></pre>
		<!-- placeholder="00*-000*-0000" pattern="[0-9]{2,3}-[0-9]{3,4}-[0-9]{3,4}"  -->
		<pre>�̸��� �ּ� : <input type="text" name="mail" id="mail_ipnut" maxlength="20" placeholder="###@####.com" pattern="[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,3}$" required title="###@####.com"><br/></pre>
		<pre>��ȭ��ȣ :   <input type="tel" name="tel" id="tel" maxlength="13" placeholder="000-0000-0000" pattern="[0-9]{2,3}-[0-9]{3,4}-[0-9]{3,4}" required title="000-0000-0000"><br/></pre>
		<pre>���� : <input type="radio" name="user" value="0" checked> �л� <input type="radio" name="user" value="1"> ���п� <input type="radio" name="user" value="2"> ������</pre>
		<input type="submit" value="ȸ������">
		<button type="button" onclick="history.go(-1)">���ư���</button>
	</form>
		
</body>
</html>