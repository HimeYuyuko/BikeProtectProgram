<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" contentType="text/html; charset=UTF-8">
<title>검색 결과</title>
</head>
<body>
<h1> 검색 결과</h1>
<%
String sc = request.getParameter("search_code");

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
	
	stmt = conn.createStatement();
    ResultSet rs = stmt.executeQuery("select * from member where percode="+sc+"");
    
    if(conn== null)
    	throw new Exception("연결 실패");
    if(!rs.next()){
    	out.println("검색 결과가 없습니다.");
    }else
    {
    	rs.previous();
    }
    while(rs.next()){
    	String percode = rs.getString("percode");
    	String ID = rs.getString("ID");
    	String name = rs.getString("name");
    	
    	out.println("<p>코드: "+percode+"<p>아이디: "+ID +"<p>이름: "+name);
    }
    rs.close();
} finally{
    if(stmt != null) stmt.close();
    if(conn != null) conn.close();
}
 %>
 <p><button type="button" onclick="location.href='Main.jsp'">돌아가기</button></p>
</body>
</html>