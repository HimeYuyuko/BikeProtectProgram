<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	// 로그아웃 페이지, 세션의 데이터를 제거한 후 홈페이지로 복귀
	if (request.getAttribute("user") != null)
	{
		request.removeAttribute("user");
	}
	response.sendRedirect("./index.jsp");
%>