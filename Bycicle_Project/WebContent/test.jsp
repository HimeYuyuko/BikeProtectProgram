<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%
try{
Class c = Class.forName("com.mysql.jdbc.Driver");
if(c!=null) {
out.println("mysql JDBC 로딩 완료");
}
}catch(ClassNotFoundException e) {
out.println(e);
}
%>
