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
	String first = request.getParameter("fis");
	String pass = request.getParameter("pass");
	String name = request.getParameter("name");
	String mail = request.getParameter("mail");
	String tel = request.getParameter("tel");
	String user = request.getParameter("user");
	
	Connection conn = null;
	Statement stmt = null;
	PreparedStatement pstmt = null;
	String str = "";
	
	try{
		String jdbcUrl = "jdbc:mysql://localhost:3306/db_test";
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
            	str="�̹� �����ϴ� ���̵��Դϴ�.";
            	break;
            }
            else if(result.getString(4).equals(mail))
            {
            	str="�̹� �����ϴ� �̸����Դϴ�.";
            	break;
            }
            else if(result.getString(5).equals(tel))
            {
            	str="�̹� �����ϴ� ��ȭ��ȣ�Դϴ�.";
            	break;
            }
            else if(id.equals("admin"))
            {
            	str="������ ���� ���̵��Դϴ�.";
            	break;
            }
          
        }
        if(str.equals(""))
        {
        	String sql = "insert into member values(?,?,?,?,?,?)";
        	pstmt = conn.prepareStatement(sql);
        	pstmt.setString(1, id);
        	pstmt.setString(2, pass);
        	pstmt.setString(3, name);
        	pstmt.setString(4, mail);
        	pstmt.setString(5, tel);
        	pstmt.setString(6, user);
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
