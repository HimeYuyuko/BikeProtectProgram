<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<link href="login.css" type="text/css" rel="stylesheet">
<link href='https://fonts.googleapis.com/css?family=ZCOOL%20KuaiLe' rel='stylesheet'>
<link href='https://fonts.googleapis.com/css?family=Sedgwick%20Ave%20Display' rel='stylesheet'>

<title>����� ����</title>
</html>
<body>
	<div id="search"><h1>Search Bicycle</h1>
	<form method="get" action="search.jsp">
	<p><input type="search" name="bycyicle_id" maxlength="12" pattern="\d{2}-\d{2}-\d{6}" placeholder="01-23-456789">
	<input type="submit" value="search"></form>
	</div>
	<div id="login">
	<pre>���� �α��ΰ���: <%String id = request.getParameter("curr_id"); %><%=id %><p><button type="button" onclick="location.href='Main.jsp'">�α׾ƿ�</button></p></pre>
	</div>
		
</body>

</html>