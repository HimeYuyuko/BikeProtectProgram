<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%@ page import="needs.Bicycle" %>
<%@ page import="java.util.ArrayList" %>
<% 
	//사용자 페이지, 사용자의 해시에 맞게 닉네임과 자전거 리스트를 보여준다.
	
	Connection connection = null;
	Statement stmt = null;
	ArrayList<Bicycle> bicycles = new ArrayList<Bicycle>();
	String userNickname = null;

	try {
		request.setCharacterEncoding("UTF-8");
		String hash = request.getParameter("hash");
		
		if (hash != null) {
			String jdbcUrl = "<schema url>";
			String dbId = "<schema id>";
			String dbPass = "<schema password>";
			Class.forName("com.mysql.jdbc.Driver");
			connection = DriverManager.getConnection(jdbcUrl, dbId, dbPass);
			
			stmt = connection.createStatement();
			String sql = String.format("select nickname from <database name>.user where hash = %s;", hash);
			ResultSet rs = stmt.executeQuery(sql);
			
			if (rs.next()){
				userNickname = rs.getString(1);
			}

			sql = String.format("select code, register_date from <database name>.bicycle where hash = %s;", hash);
			rs = stmt.executeQuery(sql);
			
			while (rs.next()){
				Bicycle bicycle = new Bicycle();
				bicycle.code = rs.getString(1);
				bicycle.register_date = rs.getString(2);
				bicycles.add(bicycle);
			}
		}
	}
	catch (Exception e){
		e.printStackTrace();
	}
	finally {
		if (stmt != null)
			try{stmt.close();}catch(SQLException sqle){}
		if (connection != null)
			try{connection.close();}catch(SQLException sqle){}
	}
%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>User page</title>
	</head>
	<body>
		<%@ include file="./includes/header.jsp" %>
		<main>
			<h1><%= userNickname %> 님의 페이지입니다.</h1>
			<ul>
				<li>채팅</li>
			</ul>
			<ol>
				<% for (Bicycle b : bicycles) { %>
				<li><div><%= b.code %></div><div><%= b.register_date %></div></li>
				<% } %>
			</ol>
		</main>
	</body>
</html>