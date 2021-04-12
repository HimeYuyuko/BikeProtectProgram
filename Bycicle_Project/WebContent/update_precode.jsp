<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %>

<% request.setCharacterEncoding("utf-8"); %>


<!DOCTYPE>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>회원 추가</title>
</html>
<body>
<% 
	String rlg = request.getParameter("rlg");
	String blg = request.getParameter("blg");
	String code = request.getParameter("random_number");
	
	
	Connection conn = null;
	Statement stmt = null;
	PreparedStatement pstmt = null;
	ResultSet rs = null;
	String str = "";
	String Acode = null;
	
	try{
		String jdbcUrl = "jdbc:mysql://localhost:3306/bycicle_data";
		String dbId="root";
		String dbPass="Nazi19451210!";
		
		// DB와 연동을 위한 Connection 객체를 얻어내는 부분
		Class.forName("com.mysql.jdbc.Driver");
		
		conn = DriverManager.getConnection(jdbcUrl, dbId, dbPass);
		
		stmt = conn.createStatement();
        ResultSet result = stmt.executeQuery("select * from code");
 
        while(result.next()){
            if(result.getString(3).equals(code))
            {
            	str="이미 존재하는 코드입니다.";
            	break;
            }
          
        }
        if(str.equals(""))
        {
        	String sql = "insert into code values(?,?,?)";
        	pstmt = conn.prepareStatement(sql);
        	pstmt.setString(1, rlg);
        	pstmt.setString(2, blg);
        	pstmt.setString(3, code);
        	pstmt.executeUpdate();
        	str="등록된 코드 번호";
        }
        result.close();
    	Acode =rlg+blg+code;
        
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
	회원코드: <%=Acode %>
	<form action="./Create_bicyclemember.jsp" method="post"><input type="hidden" name="bicycle_code" value=<%= Acode %>>
	<p><input type="submit" value="번호 생성"></p>
	</form>
</body>
</html>
