<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="EUC-KR"%>
<%@page import="java.sql.*" %>
<%@ page import="needs.User" %>
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
	Statement stmt = null;
	String str = "";
	
	try{
		String jdbcUrl = "jdbc:mysql://192.168.0.253:3306/Bycicle_Data";
		String dbId="root";
		String dbPass="123456";
		// DB�� ������ ���� Connection ��ü�� ���� �κ�
		Class.forName("com.mysql.jdbc.Driver");
		conn = DriverManager.getConnection(jdbcUrl, dbId, dbPass);
		
		String sql = "select id from member where (id like ? and passwd like ?) or (percode like ? and passwd like ?);";
		pstmt = conn.prepareStatement(sql);
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
