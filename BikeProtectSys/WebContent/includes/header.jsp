<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="needs.User" %>
<header>
	<!-- 헤더 부분, 로그인 안 하면 로그인 링크 제공, 했으면 사용자 페이지 링크 및 로그아웃 링크 제공 -->
	<div>
		<%
			request.setCharacterEncoding("UTF-8");
		
			if (session.getAttribute("user") == null) {
		%>
		<a href="./login.jsp?mode=input">login</a>
		<%
			} else { 
				String nickname = ((User) session.getAttribute("user")).nickname;
				String hash = ((User) session.getAttribute("user")).hash;
		%>
		<button type="button">어서오세요 <b><%= nickname %></b>님</button>
		<nav id="user_command" hidden="hidden">
			<ul>
				<li>
					<a href="./user.jsp?hash=<%= hash %>">your page</a>
				</li>
				<li>
					<a href="./logih.jsp?mode=logout">logout</a>
				</li>
			</ul>
		</nav>
		<%
			} 
		%>
	</div>
</header>