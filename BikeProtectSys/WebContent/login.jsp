<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%@ page import="java.util.ArrayList" %>
<%-- <%@ page import="needs.User" %> --%>

<% request.setCharacterEncoding("UTF-8"); %>

<!-- 아이디, 비밀번호와 맞는 계정을 연결해서 맞으면 자신의 페이지로, 아니면 다시 로그인 페이지로 -->

<% 
	String id = request.getParameter("id");
	String passwd = request.getParameter("passwd");
	
	Connection connection = null;
	PreparedStatement pstmt = null;
%>

<%
	try {
		String jdbcUrl = "jdbc:mysql://localhost:3306/term_project?serverTimezone=UTC&allowPublicKeyRetrieval=true&useSSL=false";
		String dbId = "root";
		String dbPass = "godqhrgksqkdWk3036*";
		
		Class.forName("com.mysql.jdbc.Driver");
		connection = DriverManager.getConnection(jdbcUrl, dbId, dbPass);
		
		String sql = "select id, position, email, phone from term_project.member where id like ? and password like ?;";
		pstmt = connection.prepareStatement(sql);
		pstmt.setString(1, id);
		pstmt.setString(2, passwd);
		
		ResultSet rs = pstmt.executeQuery();
		if (rs.next()){
			/* User user = new User();
			user.id = rs.getString(1);
			user.position = rs.getString(2);
			user.email = rs.getString(3);
			user.phone = rs.getString(4); */
			
			RequestDispatcher rd =request.getRequestDispatcher("./mypage.jsp");
			/* session.setAttribute("user", user); */
			rd.forward(request, response);
		}
		else {
			RequestDispatcher rd =request.getRequestDispatcher("./index.jsp");
			request.setAttribute("message", "account not found");
			rd.forward(request, response);
		}
	}
	catch (Exception e){
		e.printStackTrace();
	}
	finally {
		if (pstmt != null)
			try{pstmt.close();}catch(SQLException sqle){}
		if (connection != null)
			try{connection.close();}catch(SQLException sqle){}
	}
%>

<% 
	String message = (String) request.getAttribute("message");
%>

<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8" />
		<title>Insert title here</title>
	</head>
	<body>
		<h1>Please login</h1>
		<form method="post" action="login.jsp">
			<p><label>id: <input type="text" name="id" maxlength="40" required="required" /></label></p>
			<p><label>password: <input type="password" name="passwd" required="required" /></label></p>
			<p><input type="submit" value="login" /></p>
		</form>
		<p style="color: red;"><%= ((message != null) ? message : "") %></p>
	</body>
</html>