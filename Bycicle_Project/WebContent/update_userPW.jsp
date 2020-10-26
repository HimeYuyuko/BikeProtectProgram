<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<% request.setCharacterEncoding("utf-8"); %>
<%//파라미터 값을 얻어내는 부분
	String id = request.getParameter("id");
	String passwd = request.getParameter("passwd");
	String tel = request.getParameter("tel");
	String str = "";
	
	Connection conn = null;
	PreparedStatement pstmt = null;
	ResultSet rs = null;
	
	try{
		String jdbcUrl = "jdbc:mysql://localhost:3306/bycicle_data";
		String dbId="root";
		String dbPass="Nazi19451210!";
		
		Class.forName("com.mysql.jdbc.Driver");
		conn = DriverManager.getConnection(jdbcUrl, dbId, dbPass);
		
		String sql = "select id, tel from member where id = ?";
		pstmt=conn.prepareStatement(sql);
		pstmt.setString(1,id);
		rs = pstmt.executeQuery();
		
		if(rs.next()){
			String rId = rs.getString("id");
			String rTel = rs.getString("tel");
			if(id.equals(rId)&&tel.equals(rTel)){
				sql = "update member set passwd = ? where id = ?";
				pstmt = conn.prepareStatement(sql);
				pstmt.setString(1, passwd);
				pstmt.setString(2, id);
				pstmt.executeUpdate();
	 
			}else{
				str="전화번호가 틀렸습니다.";
	}
		}else{
			str="아이디가 틀렸습니다.";
			}
		str="패스워드가 변경 되었습니다.";
		}catch(Exception e){
			e.printStackTrace();
		}
		finally{
			if(rs != null) try{rs.close();}catch(SQLException sqle){}
			if(pstmt != null) try{pstmt.close();}catch(SQLException sqle){}
			if(conn != null) try{conn.close();}catch(SQLException sqle){}
		}
	
	%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>레코드 수정</title>
</head>
<body>
	<%=str %></br>
	<button type="button" onclick="history.go(-1)">돌아가기</button>
</body>
</html>