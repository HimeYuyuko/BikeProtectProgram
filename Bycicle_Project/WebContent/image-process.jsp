<%@page import="com.sun.xml.internal.bind.CycleRecoverable.Context"%>
<%@page import="java.io.InputStream"%>
<%@page import="java.io.FileInputStream"%>
<%@page import="java.io.File"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Insert an Image into MySQL Database</title>
    </head>
    <body>
<%
Connection conn=null;
PreparedStatement pstmt = null;
ResultSet rs=null;

FileInputStream fis=null;
String fname=request.getParameter("percode");
String myloc=request.getParameter("myimg");
String myloc2=request.getParameter("myimg2");
String myloc3=request.getParameter("myimg3");
//out.print("First Name :"+fname+"myloc="+myloc);
try{
	String jdbcUrl = "jdbc:mysql://192.168.0.253:3306/Bycicle_Data";
	String dbId="root";
	String dbPass="123456";
	Class.forName("com.mysql.jdbc.Driver");
	conn=DriverManager.getConnection(jdbcUrl, dbId, dbPass);
	System.out.println(myloc);
	File image= new File(myloc);
	File image2= new File(myloc2);
	File image3= new File(myloc3);
	pstmt = conn.prepareStatement("insert into image(percode,image,image2,image3) " + "values(?,?,?,?)");
	pstmt.setString(1, fname);
	fis=new FileInputStream(image);
	pstmt.setBinaryStream(2, (InputStream) fis, (int) (image.length()));
	fis=new FileInputStream(image2);
	pstmt.setBinaryStream(3, (InputStream) fis, (int) (image.length()));
	fis=new FileInputStream(image3);
	pstmt.setBinaryStream(4, (InputStream) fis, (int) (image.length()));
int count = pstmt.executeUpdate();
if(count>0)
{
	out.println("insert successfully");
	
		}
else
{
	out.println("not successfully");
	}
}
catch(Exception ex)
	{
		ex.printStackTrace();
		out.println("not successfully");
	}
finally{
	if(rs!=null){
	rs.close();
	}
	if(pstmt !=null)
	{
	
	pstmt.close();
	}
	if(conn!=null)
	{
		conn.close();
	}
}
%>
<button type="button" onclick="history.go(-2)">돌아가기</button>
    </body>
</html>