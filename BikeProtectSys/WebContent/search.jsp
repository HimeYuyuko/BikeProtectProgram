<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%@ page import="needs.User" %>
<%
	//아이디, 비밀번호와 맞는 계정을 연결해서 맞으면 자신의 페이지로, 아니면 다시 로그인 페이지로
	request.setCharacterEncoding("UTF-8");
	String bicycle_id = request.getParameter("bicycle_id");

	Connection connection = null;
	PreparedStatement pstmt = null;

	try {
		if (bicycle_id != null) {
			String jdbcUrl = "<database url>";
			String dbId = "<database id>";
			String dbPass = "<database password>";
			Class.forName("com.mysql.jdbc.Driver");
			connection = DriverManager.getConnection(jdbcUrl, dbId, dbPass);
			
			String sql = "select hash from <database name>.bicycle where code like ?;";
			pstmt = connection.prepareStatement(sql);
			pstmt.setString(1, bicycle_id);
			ResultSet rs = pstmt.executeQuery();
			
			if (rs.next()){
				String hash = rs.getString(1);
				response.sendRedirect(String.format("./user.jsp?hash=%s&redirect=%s", hash, bicycle_id));
			}
			else {
				request.setAttribute("message", "account not found");
				response.sendRedirect("./index.jsp");
			}
		}
		else {
			request.setAttribute("message", "please fill your bicycle id in this input");
			response.sendRedirect("./index.jsp");
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