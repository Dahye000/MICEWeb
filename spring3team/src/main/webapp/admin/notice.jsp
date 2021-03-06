<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page
	import="java.util.*, com.mice.user.Impl.NoticeDao, com.mice.user.NoticeDto"%>

<html>

<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>BBS List</title>
<!-- Bootstrap -->
<link href="bootstrap-3.3.7/css/bootstrap.min.css" rel="stylesheet">
<style>
#container {
	width: 70%;
	margin: 0 auto; /* 가로로 중앙에 배치 */
	padding-top: 10%; /* 테두리와 내용 사이의 패딩 여백 */
}

#list {
	text-align: center;
}

#write {
	text-align: right;
} /* Bootstrap 수정 */
.table>thead {
	background-color: #b3c6ff;
}

.table>thead>tr>th {
	text-align: center;
}

.table-hover>tbody>tr:hover {
	background-color: #e6ecff;
}

.table>tbody>tr>td {
	text-align: center;
}

.table>tbody>tr>#title {
	text-align: left;
}

div>#paging {
	text-align: center;
}

.hit {
	animation-name: blink;
	animation-duration: 1.5s;
	animation-timing-function: ease;
	animation-iteration-count: infinite; /* 위 속성들을 한 줄로 표기하기 */
	/* -webkit-animation: blink 1.5s ease infinite; */
} /* 애니메이션 지점 설정하기 */ /* 익스플로러 10 이상, 최신 모던 브라우저에서 지원 */
@
keyframes blink {
	from {color: white;
}

30




%
{
color




:




yellow


;
}
to {
	color: red;
	font-weight: bold;
}
/* 0% {color:white;} 30% {color: yellow;} 100% {color:red; font-weight: bold;} */
}
</style>
</head>
<body>
	<%@ include file="AdminTop.jsp"%>
	<%Vector vResult = NoticeDao.getNoticeList(); %>
	<form name="notice" methode="get" action="/spring3team/notice.do">
		<div id="list">
			<b>게시판</b>
		</div>
		<div id="write">
			<a href="noticeInput.jsp">글쓰기</a>
		</div>
		<div>
			<table class="table table-striped table-bordered table-hover">
				<thead>
					<tr>
						<th align="center">번호</th>
						<th align="center">제목</th>
						<th align="center">작성자</th>
						<th align="center">작성일</th>
					</tr>
				</thead>
				<%
				for(int i=0; i<vResult.size(); i++){
					NoticeDto nDto = (NoticeDto)vResult.get(i);
				%>
				<tr>
					<td align="center"><%=nDto.getSno()%></a></td>
					<td align="center"><%=nDto.getTitle()%></td>
					<td align="center"><%=nDto.getContent()%></td>
					<td align="center"><%=nDto.getRegdate()%></td>
				</tr>
				<%}%>
			</table>
		</div>
	</form>
</body>
</html>
