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
	<form method="get" action="search_admin.jsp">
	<p><input type="search" name="search_code" maxlength="10" pattern="\d{2}\d{2}\d{6}" placeholder="0123456789" autocomplete = "off">
	<input type="submit" value="search"></form>
	<button onclick="location.href='index.html'">Move to Photo Search Page</button >
	</div>
	<div id="login">
	<pre>현재 로그인계정: <%String id = request.getParameter("curr_id"); %><%=id %><p><button type="button" onclick="location.href='Main.jsp'">로그아웃</button></p></pre>
	<pre><button type="button" onclick="location.href='report_user.jsp'">도난 신고</button>&nbsp<button type="button" onclick="location.href='update_userPW.jsp'">패스워드 변경</button></pre>
	<pre><button type="button" onclick="location.href='report_adminc.jsp'">도난 신고 취소</button></pre>
	</div>
		
</body>

</html>