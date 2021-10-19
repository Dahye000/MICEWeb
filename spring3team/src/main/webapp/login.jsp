<%@ page contentType="text/html;charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>로그인</title>
    <link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@400;500;700&display=swap" rel="stylesheet">
    <script src="https://kit.fontawesome.com/53a8c415f1.js" crossorigin="anonymous"></script>
    <link rel="stylesheet" href="css/login.css">
</head>
<hr>
<form action="login.do" method="post">
<body>
    <div class="wrap">
        <div class="login">
            <h2>Log-in</h2>
            <div class="login_sns">
            <li><a href=""><i class="fab fa-google"></i></a></li>
            </div>
            <div class="login_id">
                <h4>ID</h4>
                <input type="id" name="id" id="" placeholder="id">
            </div>
            <div class="login_pw">
                <h4>Password</h4>
                <input type="password" name="password" placeholder="Password">
            </div>
            <div class="login_etc">
                <div class="checkbox">
                <input type="checkbox" name="" id=""> 다음에도 기억하기
                </div>
                <div class="forgot_pw">
                <a href="">비밀번호를 잊으셨나요?</a>
            </div>
            </div>
            <div class="submit">
                <input type="submit" value="login">
            </div>
        </div>
    </div></form>
</body>
</html>
