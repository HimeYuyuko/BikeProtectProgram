<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	//logout
	if (request.getAttribute("user") != null)
	{
		request.removeAttribute("user");
	}
	response.sendRedirect("./index.jsp");
%>