<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@page import="java.sql.*" %>

<% request.setCharacterEncoding("euc-kr"); %>


<!DOCTYPE>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>회원 추가</title>
</html>
<body>
<% 
	String percode = request.getParameter("percode");
	String passwd = request.getParameter("passwd");
	String name = request.getParameter("name");
	String area = request.getParameter("area");
	String tel = request.getParameter("tel");
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
        ResultSet result = stmt.executeQuery("select * from member");
 
        while(result.next()){
            if(result.getString(2).equals(passwd))
            {
            	str="이미 존재하는 암호입니다.";
            	break;
            }
            else if(result.getString(5).equals(tel))
            {
            	str="이미 존재하는 전화번호입니다.";
            	break;
            }
          
        }
        if(str.equals(""))
        {
        	String sql = "insert into member values(?,?,?,?,?)";
        	pstmt = conn.prepareStatement(sql);
        	pstmt.setString(1, percode);
        	pstmt.setString(2, passwd);
        	pstmt.setString(3, name);
        	pstmt.setString(4, area);
        	pstmt.setString(5, tel);
        	pstmt.executeUpdate();
        	str="계정이 생성되었습니다.";
        }
        result.close();
    		
        
	}catch(SQLException e){
        out.println("조회에 문제가 있습니다.");
        out.println(e.toString());
        e.printStackTrace();
    }
    finally{
        if(stmt != null) stmt.close();
        if(conn != null) conn.close();
    }
%>
	<%=str %>
	<button onclick="history.go(-2)">돌아가기</button>
</body>
</html>