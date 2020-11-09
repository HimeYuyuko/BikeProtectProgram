<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<% request.setCharacterEncoding("utf-8"); %>
<%//파라미터 값을 얻어내는 부분
	String id = request.getParameter("id");
	String passwd = request.getParameter("passwd");
	String rp = request.getParameter("rp");
	
	Connection conn = null;
	PreparedStatement pstmt = null;
	String str = "";
	
	try{
		String jdbcUrl = "jdbc:mysql://localhost:3306/bycicle_data";
		String dbId="root";
		String dbPass="Nazi19451210!";
		
		Class.forName("com.mysql.jdbc.Driver");
		conn = DriverManager.getConnection(jdbcUrl, dbId, dbPass);
		
		String sql = "update member set rp = ? where id = ? and passwd = ?";
		pstmt=conn.prepareStatement(sql);
		pstmt.setString(1, rp);
		pstmt.setString(2, id);
		pstmt.setString(3, passwd);
		int result = pstmt.executeUpdate();
		
		if(result > 0){
			str="신고 되었습니다.";
		}
		else {
			str="아이디나 비밀번호가 틀렸습니다.";
		}
	}
	catch(Exception e) {
		e.printStackTrace();
	}
	finally{
		if(pstmt != null) try{pstmt.close();}catch(SQLException sqle){}
		if(conn != null) try{conn.close();}catch(SQLException sqle){}
	}
%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>레코드 수정</title>
</head>
<body>
	<%=str %></br>
	<button type="button" onclick="history.go(-2)">돌아가기</button>
</body>
</html>