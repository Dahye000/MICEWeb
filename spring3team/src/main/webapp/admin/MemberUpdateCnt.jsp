<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*, com.mice.user.Impl.*, com.mice.user.*"%>

<head>
	<%
	String mem_id = (String)session.getAttribute("Manage_id");
	String password = request.getParameter("password");
	String name = request.getParameter("name");
	String role = request.getParameter("role");
	MemberDao MemberDao = new MemberDao();
	MemberDao.memberupdate(mem_id, password, name, role);
	session.removeAttribute("Manage_id");
	response.sendRedirect("MemberManage.jsp");
	%>
</head>