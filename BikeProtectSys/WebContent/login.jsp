<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%@ page import="needs.User" %>
<%
	//아이디, 비밀번호와 맞는 계정을 연결해서 맞으면 자신의 페이지로, 아니면 다시 로그인 페이지로
	request.setCharacterEncoding("UTF-8");
	String mode = request.getParameter("mode");
	
	if (mode == null) {
		response.sendRedirect("./login.jsp?mode=input");
	}
	else if (mode.equals("form")) {
		String id = request.getParameter("id");
		String passwd = request.getParameter("passwd");
		
		Connection connection = null;
		PreparedStatement pstmt = null;
		
		try {
			if ((id != null) && (passwd != null)) {
				String jdbcUrl = "<database url>";
				String dbId = "<database id>";
				String dbPass = "<database password>";
				Class.forName("com.mysql.jdbc.Driver");
				connection = DriverManager.getConnection(jdbcUrl, dbId, dbPass);
				
				String input = id + passwd;
				String sql = "select hash, nickname from <database name>.user where hash like sha2(concat(salt, ?));";
				pstmt = connection.prepareStatement(sql);
				pstmt.setString(1, input);
				ResultSet rs = pstmt.executeQuery();
				
				if (rs.next()){
					User user = new User();
					user.nickname = rs.getString(1);
					user.hash = rs.getString(2);
					
					session.setAttribute("user", user);
					response.sendRedirect("./index.jsp");
				}
				else {
					request.setAttribute("message", "account not found");
				}
			}
			else {
				request.setAttribute("message", "please fill your id and password in these input");
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
	}
	else if (mode.equals("logout")) {
		session.invalidate();
		response.sendRedirect("./index.jsp");
	}
	
	String message = (String) request.getAttribute("message");
%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8" />
		<title>Login</title>
	</head>
	<body>
		<h1>Please login</h1>
		<form method="post" action="login.jsp?mode=form">
			<p><label>id: <input type="text" name="id" maxlength="40" required="required" /></label></p>
			<p><label>password: <input type="password" name="passwd" required="required" /></label></p>
			<p><input type="submit" value="login" /></p>
		</form>
		<p style="color: red;"><%= ((message != null) ? message : "") %></p>
	</body>
</html>