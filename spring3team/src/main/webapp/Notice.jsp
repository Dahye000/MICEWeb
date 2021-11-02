<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="java.util.*, com.mice.user.Impl.*, com.mice.user.*"%>
<!DOCTYPE html>
<html>
<head>
<title>Insert title here</title>
</head>
<body>
<%@ include file="Top.jsp" %>
<%Vector vResult = NoticeDao.getNoticeList(); %>

<br><br>
<h2><center>공지사항</center></h2>
<table width="95%" align="center" bgcolor="#FFFF99" border="1">
		<tr bgcolor="#996600"> 
		<td align="center"><font color="#FFFFFF">번호</font></td>
		<td align="center"><font color="#FFFFFF">제목</font></td>
		<td align="center"><font color="#FFFFFF">내용</font></td>
		<td align="center"><font color="#FFFFFF">작성일</font></td> 
		</tr>
		<%
		for(int i=0; i<vResult.size(); i++){
			NoticeDto nDto = (NoticeDto)vResult.get(i);
		%>
		<tr> 
		<td align="center"><%=nDto.getSno()%></td>
		<td align="center"><%=nDto.getTitle()%></td>
		<td align="center"><%=nDto.getContent()%></td>
		<td align="center"><%=nDto.getRegdate()%></td>
		</tr>
		<%}%>
</table>

</body>
</html>