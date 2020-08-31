<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%@ page import="needs.User" %>
<%
	//아이디, 비밀번호와 맞는 계정을 연결해서 맞으면 자신의 페이지로, 아니면 다시 로그인 페이지로
	request.setCharacterEncoding("UTF-8");
	String bicycle_id = request.getParameter("percode");
	Connection connection = null;
	PreparedStatement pstmt = null;
	try {
		if (bicycle_id != null) {
			String jdbcUrl = "jdbc:mysql://localhost:3306/bycicle_data";
			String dbId = "root";
			String dbPass = "Nazi19451210!";
			
			// DB와 연동을 위한 Connection 객체를 얻어내는 부분
			Class.forName("com.mysql.jdbc.Driver");
			
			conn = DriverManager.getConnection(jdbcUrl, dbId, dbPass);
			
			stmt = conn.createStatement();
	        ResultSet result = stmt.executeQuery("select * from member");
			
			if (rs.next()){
				String hash = rs.getString(1);
				response.sendRedirect(String.format("./Bycicle_Login.jsp?hash=%s&redirect=%s", hash, bicycle_id));
			}
			else {
				request.setAttribute("message", "account not found");
				response.sendRedirect("./Main.jsp");
			}
		}
		else {
			request.setAttribute("message", "please fill your bicycle id in this input");
			response.sendRedirect("./Main.jsp");
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