<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="EUC-KR"%>
<%@page import="java.sql.*" %>

<% request.setCharacterEncoding("utf-8"); %>


<!DOCTYPE>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>�α���</title>
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
		
		// DB�� ������ ���� Connection ��ü�� ���� �κ�
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
        	str = "���̵� ��й�ȣ�� �߸��Ǿ����ϴ�.";
        }
	}catch(SQLException e){
        out.println("���ῡ ������ �ֽ��ϴ�.");
        out.println(e.toString());
        e.printStackTrace();
    }
    finally{
        if(stmt != null) stmt.close();
        if(conn != null) conn.close();
    }
%>
	<%=str %>
	<button type="button" onclick="history.go(-1)">���ư���</button>
</body>
</html>
