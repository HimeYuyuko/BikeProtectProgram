<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="EUC-KR"%>
<%@page import="java.sql.*" %>

<% request.setCharacterEncoding("utf-8"); %>


<!DOCTYPE>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>로그인</title>
</html>
<body>

<% 
	String id = request.getParameter("id");
	String pass = request.getParameter("pass");

	Connection conn = null;
	PreparedStatement pstmt = null;
	String str = "";
	
	try{
		String jdbcUrl = "jdbc:mysql://localhost:3306/bycicle_data";
		String dbId = "root";
		String dbPass = "Nazi19451210!";
		
		// DB와 연동을 위한 Connection 객체를 얻어내는 부분
		Class.forName("com.mysql.jdbc.Driver");
		conn = DriverManager.getConnection(jdbcUrl, dbId, dbPass);
		
		String sql = "select id from member where (id like ? and pass like ?) or (percode like ? and pass like ?);";
		pstmt = connection.prepareStatement(sql);
		pstmt.setString(1, id);
		pstmt.setString(2, pass);
		pstmt.setString(3, id);
		pstmt.setString(4, pass);
		ResultSet rs = pstmt.executeQuery();
        
        if(rs.next()) {
    		str = "success";
        	User user = new User();
        	user.id = rs.getString(1);
        	session.setAttribute("user", user);
    		response.sendRedirect("user_login.jsp?curr_id="+id);
        }
        else {
        	str = "아이디나 비밀번호가 잘못되었습니다.";
        }
	}catch(SQLException e){
        out.println("연결에 문제가 있습니다.");
        out.println(e.toString());
        e.printStackTrace();
    }
    finally{
        if(stmt != null) stmt.close();
        if(conn != null) conn.close();
    }
%>
	<%=str %>
	<button type="button" onclick="history.go(-1)">돌아가기</button>
</body>
</html>
