<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String ad_id = (String)session.getAttribute("idKey");
	
	String adLog="";
	if(ad_id == null) adLog ="<a href=adminLogin.jsp> 로그인 </a>";
	else adLog = "<a href=adminLogin.jsp> 로그아웃 </a>";

	String ad="";
	if(ad_id == null) ad ="<a href=Join.jsp> 회원 등록 </a>";
	else ad = "<a href=/> 회원 수정 </a>";
	
	String adMember="";
	if(ad_id == null) adMember = "<a href=adminLogin.jsp> 로그인 </a>";
	else adMember = "<a href=MemberManage.jsp>회원 관리</a>";
%>
<h1><center>관리자 페이지</center>  </h1>

<link href="//maxcdn.bootstrapcdn.com/bootstrap/latest/css/bootstrap.min.css" rel="stylesheet">
<script src="//ajax.googleapis.com/ajax/libs/jquery/1/jquery.min.js"></script>
<style type="text/css">
* { font-family: NanumGothic, 'Malgun Gothic'; }
body { padding-top: 50px; }
.starter-template {
  padding: 40px 15px;
  text-align: center;
}
</style>

<!-- 
	<ul class="nav justify-content-center">
	<li class="nav-item">
    <a class="nav-link active" href="#"><%=adLog%></a>
  </li>
  <li class="nav-item">
    <a class="nav-link" href="#">회원관리</a>
  </li>
  <li class="nav-item">
    <a class="nav-link" href="#"><%=ad%></a>
  </li>
  <li class="nav-item">
    <a class="nav-link" href="#"></a>
  </li>
  <li class="nav-item">
    <a class="nav-link" href="#">기타</a>
  </li>
</ul>
</body>
</html> -->

 
<table width="75%" align="center" >
  <tr "nav-item"> 
    <td align="center" class="nav-link"><%=adLog%></td>
    <td align="center" class="nav-link"><%=ad%></td>
    <td align="center" class="nav-link"><%=adMember%></td>
    <td align="center" class="nav-link"><a href="#"> 공지사항 </a></td>
  </tr>
</table>
