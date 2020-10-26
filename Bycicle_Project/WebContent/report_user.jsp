<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %>

<% request.setCharacterEncoding("UTF-8"); %>


<!DOCTYPE>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>회원 추가</title>
</html>
<body>
<% 
	//커밋 시험
	
	Connection conn = null;
	Statement stmt = null;
	PreparedStatement pstmt = null;
	String str = "";
	
	try{
		String jdbcUrl = "jdbc:mysql://localhost:3306/bycicle_data";
		String dbId = "root";
		String dbPass = "Nazi19451210!";
		
		// DB와 연동을 위한 Connection 객체를 얻어내는 부분
		Class.forName("com.mysql.jdbc.Driver");
		
		conn = DriverManager.getConnection(jdbcUrl, dbId, dbPass);
		String rp = rs.getString("rp");
		stmt = conn.createStatement();
        ResultSet rs = stmt.executeQuery("select * from member where rp ='"+rp+"'");
        
        while(rs.next()){
      		System.out.println(rp);
      		
      		str= rp;
        }
        rs.close();
    		
        
	}catch(SQLException e){
        out.println("문제가 있습니다.");
        out.println(e.toString());
        e.printStackTrace();
    }
    finally{
        if(stmt != null) stmt.close();
        if(conn != null) conn.close();
    }
%>
	<%=str %>
	<button onclick="location='Main.jsp'">돌아가기</button>
</body>
</html>