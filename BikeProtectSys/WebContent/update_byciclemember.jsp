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
		
		// DB�� ������ ���� Connection ��ü�� ���� �κ�
		Class.forName("com.mysql.jdbc.Driver");
		
		conn = DriverManager.getConnection(jdbcUrl, dbId, dbPass);
		
		stmt = conn.createStatement();
        ResultSet result = stmt.executeQuery("select * from member");
 
        while(result.next()){
            if(result.getString(2).equals(passwd))
            {
            	str="�̹� �����ϴ� ��ȣ�Դϴ�.";
            	break;
            }
            else if(result.getString(5).equals(tel))
            {
            	str="�̹� �����ϴ� ��ȭ��ȣ�Դϴ�.";
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
        	str="������ �����Ǿ����ϴ�.";
        }
        result.close();
    		
        
	}catch(SQLException e){
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