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
	<form method="get" action="search.jsp">
	<p><input type="text" name="search_code" maxlength="10" pattern="\d{2}\d{2}\d{6}" placeholder="0123456789" autocomplete = "off">
	<input type="submit" value="search"></form>
	<button onclick="location.href='viewuser.jsp'">Move to Photo Search Page</button>
	</div>
	
	<div id="login"><form method="post" action="Bycicle_Login.jsp" id="login">
		<pre>ID/Code :   <input type="text" name="id" id="id_ipnut" maxlength="12" autocomplete = "off"><br/></pre>
		<pre>PassWord : <input type="password" name="pass" id="pass_ipnut" maxlength="12"><br/></pre>
		<input type="submit" value="login">
		<button type="button" onclick="location.href='Create_bicyclemember.jsp'">Make ID</button>
		<input type="submit" formaction="bicycle_admin.jsp" value="Adim login">
		</form>
		</div>


</script>
</body>
</html>