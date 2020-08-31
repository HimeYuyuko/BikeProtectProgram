<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %>

<% request.setCharacterEncoding("UTF-8"); %>


<!DOCTYPE>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>로그인</title>
</html>
<body>

<% 
	String id = request.getParameter("id");
	String pass = request.getParameter("pass");

	Connection conn = null;
	Statement stmt = null;
	PreparedStatement pstmt = null;
	String str = "";
	
	try{
		String jdbcUrl = "jdbc:mysql://localhost:3306/Bycicle_data";
		String dbId = "root";
		String dbPass = "Nazi19451210!";
		
		// DB와 연동을 위한 Connection 객체를 얻어내는 부분
		Class.forName("com.mysql.jdbc.Driver");
		
		conn = DriverManager.getConnection(jdbcUrl, dbId, dbPass);
		
		stmt = conn.createStatement();
        ResultSet result = stmt.executeQuery("select * from member");
        
        while(result.next()){
            if(result.getString(1).equals(id))
            {
            	if(result.getString(2).equals(pass))
            	{
            		str="success";
              		response.sendRedirect("Bycicle_main.jsp?curr_id="+id);
            		if(str.equals("success")) return;
            	}
            	else{
            		str="비밀번호가 틀립니다.";
            		break;
            	}
            }
          
        }
        if (str.equals(""))
        {
        	str="아이디가 존재하지 않습니다.";        	
        }

        result.close();
    		
        
	}catch(SQLException e){
        out.println("연결에 문제가 있습니다.");
        out.println(e.toString());
        e.printStackTrace();
    }
    finally{
        if(stmt != null) stmt.close();
        if(conn != null) conn.close();
    }
%>
	<%=str %>
	<button type="button" onclick="history.go(-1)">돌아가기</button>
</body>
</html>