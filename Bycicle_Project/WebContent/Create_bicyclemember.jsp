<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	String bicycle_code = request.getParameter("bicycle_code");
%>
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
	<form method="post" action="update_bicyclemember.jsp" id="login">
		<pre>등록번호 : <% if (bicycle_code == null) { %><a href="./create_bicycle_code.jsp">등록번호 만들기</a><% } else { %><%= bicycle_code %><input type="hidden" name="Mcode" id ="Mcode" value="<%= bicycle_code %>" /><% } %><br/></pre>
		<pre>아이디: <input type= "text" name="usid" maxlength="12" required autocomplete = "off"></pre>
		<pre>패스워드 : <input type="password" name="pass" id="pass_ipnut" maxlength="12" required autocomplete = "off"><br/></pre>
		<pre>이름 :    <input type="text" name="name" id="name_ipnut" maxlength="12" required autocomplete = "off"><br/></pre>
		<!-- placeholder="00*-000*-0000" pattern="[0-9]{2,3}-[0-9]{3,4}-[0-9]{3,4}"  -->
		<!-- <pre>이메일 주소 : <input type="text" name="mail" id="mail_ipnut" maxlength="20" placeholder="###@####.com" pattern="[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,3}$" required title="###@####.com"><br/></pre>-->
		<pre>종류 : <input type="radio" name="usetype" id="MTB" value="MTB"> <label for="MTB">MTB</label> <input type="radio" name="usetype" id = "road" value="로드"><label for="road">로드</label> <input type="radio" name="usetype" id = "hybri" value="하이브리드"> <label for="bybri">하이브리드</label></pre>
		<pre>전화번호 :<input type="tel" autocomplete = "off" name="tel" id="tel" maxlength="13" placeholder="000-0000-0000" pattern="[0-9]{2,3}-\d{3,4}-\d{4}" required title="000-0000-0000"><br/></pre>
		<div style="display:none"><input type="radio" name="report" id="N" value="N" checked="checked"><label for="N">미도난</label></div>
		<input type="submit" value="회원가입">
		<button type="button" onclick="history.go(-1)">돌아가기</button>
	</form>
		
</body>
</html>