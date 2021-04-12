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
	String percode = request.getParameter("Mcode");
	String ID = request.getParameter("usid");
	String passwd = request.getParameter("pass");
	String name = request.getParameter("name");
	String purpose = request.getParameter("usetype");
	String tel = request.getParameter("tel");
	String rp = request.getParameter("report");;
	Connection conn = null;
	Statement stmt = null;
	PreparedStatement pstmt = null;
	String str = "";
	
	try{
		String jdbcUrl = "jdbc:mysql://localhost:3306/bycicle_data";
		String dbId="root";
		String dbPass="Nazi19451210!";
		
		// DB와 연동을 위한 Connection 객체를 얻어내는 부분
		Class.forName("com.mysql.jdbc.Driver");
		
		conn = DriverManager.getConnection(jdbcUrl, dbId, dbPass);
		
		stmt = conn.createStatement();
        ResultSet result = stmt.executeQuery("select * from member");
 
        while(result.next()){
            if(result.getString(1).equals(percode))
            {
            	str="이미 존재하는 자전거코드입니다.";
            	break;
            }
            else if(result.getString(3).equals(passwd))
            {
            	str="이미 존재하는 패스워드입니다.";
            	break;
            }
          
        }
        if(str.equals(""))
        {
        	String sql = "insert into Bycicle_Data.member values(?,?,?,?,?,?,?)";
        	pstmt = conn.prepareStatement(sql);
        	pstmt.setString(1, percode);
        	pstmt.setString(2, ID);
        	pstmt.setString(3, passwd);
        	pstmt.setString(4, name);
        	pstmt.setString(5, purpose);
        	pstmt.setString(6, tel);
        	pstmt.setString(7, rp);
        	pstmt.executeUpdate();
        	str="계정이 생성되었습니다.";
        }
        result.close();
    		
        
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