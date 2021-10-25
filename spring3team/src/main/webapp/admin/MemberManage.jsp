<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*, com.mice.user.Impl.*, com.mice.user.*"%>

<html>
<head>

</head>
<body>
<%@ include file="AdminTop.jsp" %>
<%Vector vResult = MemberDao.getMemberList(); %>
<form name="memberList" methode="get" action="/spring3team/getMemberList.do">

<h2>회원정보</h2>
<table width="95%" align="center" bgcolor="#FFFF99" border="1">
		<tr bgcolor="#996600"> 
		<td align="center"><font color="#FFFFFF">아이디</font></td>
		<td align="center"><font color="#FFFFFF">비밀번호</font></td>
		<td align="center"><font color="#FFFFFF">이름</font></td>
		<td align="center"><font color="#FFFFFF">역할</font></td> 
		</tr>
		<%
		for(int i=0; i<vResult.size(); i++){
			MemberDto mDto = (MemberDto)vResult.get(i);
		%>
		<tr> 
		<td align="center"><%=mDto.getId()%></a></td>
		<td align="center"><%=mDto.getPassword()%></td>
		<td align="center"><%=mDto.getName()%></td>
		<td align="center"><%=mDto.getRole()%></td>
		</tr>
		<%}%>
</table>

</body>
</html>