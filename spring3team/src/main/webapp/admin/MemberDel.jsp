<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*, com.mice.user.Impl.*, com.mice.user.*"%>
<head>
	<%
	String check = request.getParameter("memid");
	MemberDao MemberDao = new MemberDao();
	MemberDao.memberdelete(check);
	response.sendRedirect("MemberManage.jsp");
	%>
</head>