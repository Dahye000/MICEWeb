<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert Form</title>
</head>
<body>
<%@ include file="AdminTop.jsp"%>
 <br><br>
<h2><center> 게시글 작성 </center></h2>
 
<div class="container">
    <form name="noticeInput" method="post" action="noticeInput.do">
    
    <div class="form-group">
        <label for="number">순번</label>
        <input type="text" class="form-control" id="sno" name="sno">
      </div>
      <div class="form-group">
        <label for="title">제목</label>
        <input type="text" class="form-control" id="title" name="title" placeholder="제목을 입력하세요.">
      </div>
      <div class="form-group">
        <label for="content">내용</label>
        <input type="text" class="form-control" id="content" name="content" placeholder="내용을 입력하세요.">
      </div>
      <div class="form-group">
        <label for=regdate">작성일</label>
        <textarea class="form-control" id="regdate" name="regdate" rows="1"></textarea>
      </div>
      <button type="submit" class="btn btn-primary">작성</button>
    </form>
</div>
</body>
</html>

