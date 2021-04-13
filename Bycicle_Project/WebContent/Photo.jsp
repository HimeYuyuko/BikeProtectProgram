<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<% String message = (String) request.getAttribute("message"); %>
<!DOCTYPE>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<link href="Main.css" type="text/css" rel="stylesheet">
  <link href='https://fonts.googleapis.com/css?family=ZCOOL%20KuaiLe' rel='stylesheet'>
    <link href='https://fonts.googleapis.com/css?family=Sedgwick%20Ave%20Display' rel='stylesheet'>
<title>메인화면</title>
</html>
<body>
<!--include file="./includes/header.jsp" %>-->
	<div id="search"><h1>Search Bicycle</h1>
	<form method="get" action="view.jsp">
	<p>아이디: <input type="text" name="id" maxlength="12" required>
	<input type="submit" value="search"></form>
	</div>
	
	<button onclick="history.go(-1)">메인페이지로</button>
		
</body>
</html>