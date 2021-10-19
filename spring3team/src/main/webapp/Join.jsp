<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>회원가입</title>

  <!-- Bootstrap CSS -->
  <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
    integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">

  <style>
    body {
      min-height: 100vh;

      background: -webkit-gradient(linear, left bottom, right top, from(#fff), to(#1d466c));
      background: -webkit-linear-gradient(bottom left, #fff 0%, #1d466c 100%);
      background: -moz-linear-gradient(bottom left, #fff 0%, #1d466c 100%);
      background: -o-linear-gradient(bottom left, #fff 0%, #1d466c 100%);
      background: linear-gradient(to top right, #87cefa 0%, #87cefa 100%);
    }

    .input-form {
      max-width: 680px;

      margin-top: 80px;
      padding: 32px;

      background: #fff;
      -webkit-border-radius: 10px;
      -moz-border-radius: 10px;
      border-radius: 10px;
      -webkit-box-shadow: 0 8px 20px 0 rgba(0, 0, 0, 0.15);
      -moz-box-shadow: 0 8px 20px 0 rgba(0, 0, 0, 0.15);
      box-shadow: 0 8px 20px 0 rgba(0, 0, 0, 0.15)
    }
  </style>
</head>

<body>
  <div class="container">
  <form name="regForm" methode="get" action="/spring3team/join.do">
    <div class="input-form-backgroud row">
      <div class="input-form col-md-12 mx-auto">
        <h4 class="mb-3">회원가입</h4>
        <form class="validation-form" novalidate>
          <div class="row">
            </div>
            
         <!--   
            <div class="col-md-6 mb-3">
              <label for="nickname">닉네임</label>
              <input type="text" class="form-control" id="nickname" >
              <div class="invalid-feedback">
                닉네임을 입력해주세요.
              </div>
            </div>
          </div> 

          <div class="mb-3">
            <label for="email">이메일</label>
            <input type="email" class="form-control" id="email" >
            <div class="invalid-feedback">
              이메일을 입력해주세요.
            </div>
          </div>
          --> 
          
          <div class="mb-3">
            <label for="id">아이디</label>
            <input type="text" class="form-control" name="id">
            <input type="button" value="ID중복확인" onClick="idCheck(this.form.mem_id.value)">
            <div class="invalid-feedback">
              id를 입력해주세요.
            </div>
          </div>
          
          <div class="mb-3">
            <label for="pw">비밀번호</label>
            <input type="password" class="form-control" name="password">
            <div class="invalid-feedback">
              비밀번호를 입력해주세요.
            </div>
          </div>
          
          <div class="col-md-6 mb-3">
              <label for="name">이름</label>
              <input type="text" class="form-control" name="name">
              <div class="invalid-feedback">
                이름을 입력해주세요.<br>
              </div>
            </div>
          
          <div class="col-md-6 mb-3">
          <td>역할</td><br>
              <select name="role">
              <option value="0">선택하세요.
              <option value="관리자">관리자
              <option value="일반">일반</select>
            </div></form>

          <div class="row">
            <div class="col-md-4 mb-3">
            </div>
          </div>
          <hr class="mb-4">
          <div class="custom-control custom-checkbox">
            <input type="checkbox" class="custom-control-input" id="aggrement" required>
            <label class="custom-control-label" for="aggrement">개인정보 수집 및 이용에 동의합니다.</label>
          </div>
          <div class="mb-4"></div>
          <button class="btn btn-primary btn-lg btn-block" type="submit">가입 완료</button>
        </form>
      </div>
    </div>
    <footer class="my-3 text-center text-small">
      <p class="mb-1">&copy; 2021 MICE</p>
    </footer>
  </div>
  <script>
    window.addEventListener('load', () => {
      const forms = document.getElementsByClassName('validation-form');

      Array.prototype.filter.call(forms, (form) => {
        form.addEventListener('submit', function (event) {
          if (form.checkValidity() === false) {
            event.preventDefault();
            event.stopPropagation();
          }

          form.classList.add('was-validated');
        }, false);
      });
    }, false);
  </script>
</body>

</html>