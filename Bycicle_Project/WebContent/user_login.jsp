<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<link href="login.css" type="text/css" rel="stylesheet">
<link href='https://fonts.googleapis.com/css?family=ZCOOL%20KuaiLe' rel='stylesheet'>
<link href='https://fonts.googleapis.com/css?family=Sedgwick%20Ave%20Display' rel='stylesheet'>

<title>사용자 계정</title>
</html>
<body>
	<div id="search"><h1>Search Bicycle</h1>
	<form method="get" action="search_login.jsp">
	<p><input type="search" name="search_code" maxlength="10" pattern="\d{2}\d{2}\d{6}" placeholder="0123456789">
	<input type="submit" value="search"></form>
	</div>
	<div id="login">
	<pre>현재 로그인계정: <%String id = request.getParameter("curr_id"); %><%=id %><p><button type="button" onclick="location.href='Main.jsp'">로그아웃</button></p></pre>
	</div>
		
</body>

</html>