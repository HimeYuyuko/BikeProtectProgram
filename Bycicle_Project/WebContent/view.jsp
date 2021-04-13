<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<% request.setCharacterEncoding("utf-8"); %>
<%@ page import="java.io.*"%>
<%
	Blob image = null;
	PreparedStatement pstmt = null;
	Connection con = null;
	byte[ ] imgData, imgData2, imgData3 = null ;
	Statement stmt = null;
	String id = request.getParameter("id");
	try {
			String jdbcUrl = "jdbc:mysql://localhost:3306/db_test?serverTimezone=UTC&useSSL=false";
			String dbId="root";
			String dbPass="Nazi19451210!";
			con = DriverManager.getConnection(jdbcUrl, dbId, dbPass);
			String sql ="select image from image where firstname like ?";
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1,id);
			ResultSet rs = pstmt.executeQuery();
	if (rs.next()) {
		image = rs.getBlob(1);
		imgData = image.getBytes(1,(int)image.length());
}
		else {
	out.println("Display Blob Example");
	out.println("image not found for given id>");
		return;
}
// display the image
	response.setContentType("image/jpg");
	OutputStream o = response.getOutputStream();
	o.write(imgData);
	o.flush();
	o.close();
	
} 
		catch (Exception e) {
	out.println("Unable To Display image");
	out.println("Image Display Error=" + e.getMessage());
	return;
} 
		finally {
	if(stmt != null) try{stmt.close();}catch(SQLException sqle){}
	if(con != null) try{con.close();}catch(SQLException sqle){}

}
%>