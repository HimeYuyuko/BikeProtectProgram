<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %>
<!DOCTYPE>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>로그인</title>
</html>
<body>
<%
	request.setCharacterEncoding("UTF-8");
	String id = request.getParameter("id");
	String pass = request.getParameter("pass");

	Connection conn = null;
	PreparedStatement pstmt = null;
	String str = "";
	
	try{
		String jdbcUrl = "jdbc:mysql://localhost:3306/Bycicle_data";
		String dbId = "root";
		String dbPass = "Nazi19451210!";
		
		// DB와 연동을 위한 Connection 객체를 얻어내는 부분
		Class.forName("com.mysql.jdbc.Driver");
		
		conn = DriverManager.getConnection(jdbcUrl, dbId, dbPass);
		
		String sql = "select id from Bycicle_data.member where (id like ? and pass like ?) or (Mcode like ? and pass like ?);";
		pstmt = connection.prepareStatement(sql);
		pstmt.setString(1, id);
		pstmt.setString(2, pass);
		pstmt.setString(3, id);
		pstmt.setString(4, pass);
		ResultSet rs = pstmt.executeQuery();
        
        if(result.next()){
      		response.sendRedirect("Bycicle_main.jsp?curr_id="+id);
        }
        else {
        	out.println("인식할 수 없는 계정입니다.");
        }

        result.close();
    		
        
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
	<%= str %>
	<button type="button" onclick="history.go(-1)">돌아가기</button>
</body>
</html>
