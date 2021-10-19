<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%
	String mem_id = (String)session.getAttribute("idKey");
	
	String log="";
	if(mem_id == null) log ="<a href=login.jsp> 로그인 </a>";
	else log = "<a href=logout.do> 로그아웃 </a>";

	String mem="";
	if(mem_id == null) mem ="";
	else mem = "<ul> @@ 님 </ul>";
%>


<link rel="stylesheet" href="css/style.css">

<header class="header" id="header">
		<div class="header_layout">
			<div class="header_option">
				<div class="header_logo">
					<img class="header_logo_img" src="logo.jpg">
				</div>
				<ul class="header_items">
					<li class="header_item">
						<ul class="header_item"><%=mem %></ul>
					</li> 
					<li class="header_item">
						<a class="header_item_page_link" href="login.jsp"><%=log %></a>
					</li>
					<li class="header_item">
						<a class="header_item_page_link" href="Join.jsp">회원가입</a>
					</li>
					<li class="header_item">
						<a class="header_item_page_link" href="/">관심상품</a>
					</li>
					<li class="header_item">
						<a class="header_item_page_link" href="/">마이페이지</a>
					</li>
				</ul>
			</div>
