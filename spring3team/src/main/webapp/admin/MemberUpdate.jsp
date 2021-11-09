<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.*, com.mice.user.Impl.*, com.mice.user.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>member Update</title>
<%
String mem_id = request.getParameter("memid");
session.setAttribute("Manage_id",mem_id);
%>
</head>
<body>
	<h3>Update</h3>
	<form name="memberList" methode="get" action="MemberModify.do">
		<table>
			<tr>
				<td>기존 아이디</td>
				<td><%=mem_id %></td>
			</tr>
			<tr>
				<td>비밀번호</td>
				<td><input type="text" name="password"></td>
			</tr>
			<tr>
				<td>이름</td>
				<td><input type="text" name="name"></td>
			</tr>
			<tr>
				<td>역할변경</td>
				<td><input type="text" name="role" placeholder="관리자/일반"></td>
			</tr>
			<tr>
				<td><input type="submit" value="OK"></td>
			</tr>
		</table>
	</form>
</body>
</html>