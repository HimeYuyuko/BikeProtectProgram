<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@page import="java.sql.*" %>

<% request.setCharacterEncoding("euc-kr"); %>


<!DOCTYPE>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>�α���</title>
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
		
		// DB�� ������ ���� Connection ��ü�� ���� �κ�
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
              		response.sendRedirect("account_main.jsp?curr_id="+id);
            		if(str.equals("success")) return;
            	}
            	else{
            		str="��й�ȣ�� Ʋ���ϴ�.";
            		break;
            	}
            }
          
        }
        if (str.equals(""))
        {
        	str="���̵� �������� �ʽ��ϴ�.";        	
        }

        result.close();
    		
        
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
