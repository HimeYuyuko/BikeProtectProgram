<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@page import="java.sql.*" %>

<% request.setCharacterEncoding("euc-kr"); %>


<!DOCTYPE>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>ȸ�� �߰�</title>
</html>
<body>
<% 
	String first = request.getParameter("firstcode");
	String second = request.getParameter("secondcode");
	String code = request.getParameter("code");
	
	Connection conn = null;
	Statement stmt = null;
	PreparedStatement pstmt = null;
	String str = "";
	
	try{
		String jdbcUrl = "jdbc:mysql://localhost:3306/bycicle_data";
		String dbId = "root";
		String dbPass = "Nazi19451210!";
		
		// DB�� ������ ���� Connection ��ü�� ���� �κ�
	Class.forName("com.mysql.jdbc.Driver");
		
		conn = DriverManager.getConnection(jdbcUrl, dbId, dbPass);
		
		stmt = conn.createStatement();
        ResultSet result = stmt.executeQuery("select * from member");
 
        while(result.next()){
            if(result.getString(3).equals(code))
            {
            	str="�̹� �����ϴ� �ڵ��Դϴ�.";
            	break;
        }
        }
        if(str.equals(""))
        {
        	String sql = "insert into member values(?,?,?)";
        	pstmt = conn.prepareStatement(sql);
        	pstmt.setString(1, first);
        	pstmt.setString(2, second);
        	pstmt.setString(3, code);
        	pstmt.executeUpdate();
        	
        	str="�ڵ尡 �����Ǿ����ϴ�.";
            		
	}
	}
        
        catch(SQLException e){
        out.println("��ȸ�� ������ �ֽ��ϴ�.");
        out.println(e.toString());
        e.printStackTrace();
    }
    finally{
        if(stmt != null) stmt.close();
        if(conn != null) conn.close();
    }
%>
	<%=str %>
	<button onclick="history.go(-2)">���ư���</button>
</body>
</html>
