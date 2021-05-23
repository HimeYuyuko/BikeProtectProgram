<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %>

<% request.setCharacterEncoding("UTF-8"); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>



</head>
<body>
<h3>아이디 중복확인 결과</h3>

<% 
	String ID = request.getParameter("id");
	Connection conn = null;
	Statement stmt = null;
	PreparedStatement pstmt = null;
	String str = "";
	
	try{
		String jdbcUrl = "jdbc:mysql://192.168.0.253:3306/Bycicle_Data";
		String dbId="root";
		String dbPass="123456";
		/*String jdbcUrl = "jdbc:mysql://localhost:3306/bycicle_data";
		String dbId = "root";
		String dbPass = "Nazi19451210!";*/
		
		// DB와 연동을 위한 Connection 객체를 얻어내는 부분
		Class.forName("com.mysql.jdbc.Driver");
		
		conn = DriverManager.getConnection(jdbcUrl, dbId, dbPass);
		
		stmt = conn.createStatement();
        ResultSet result = stmt.executeQuery("select id from member");
        
        while(result.next()){
        	if(result.getString(1).equals(ID)){
        		str = "<p style ='color:red'>이미 존재하는 아이디입니다</p>";
        		out.println("입력아이디" + ID +"은/는"+ str);
        	break;
        	}
        }
        if(str.equals(""))
        {
        	str = "사용가능한 아이디 입니다";
        	out.println("입력아이디" + ID +"은/는"+ str);
        	out.println("<a href='javascript:apply(\""+ID +"\")'>[적용]</a>");
        }
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
 <script> function apply(id){
	//중복확인 id를 부모창에 적용
	//부모창 opener
	opener.document.getElementById("id").value =id;
	window.close();
}
	</script>
 <hr>
 <a href="javascript:history.back()">[다시검색]</a>
 <a href="javascript:window.close()">[창닫기]</a>
</body>
</html>