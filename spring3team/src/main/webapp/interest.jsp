<%@ page contentType="text/html;charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<link rel="stylesheet" href="css/interest.css">
</head>
<body>
	<header class="header" id="header">
		<div class="header_layout">
			<div class="header_option">
				<div class="header_logo">
					<img class="header_logo_img" src="logo.jpg">
				</div>
				<ul class="header_items">
					<li class="header_item">
						<a class="header_item_page_link" href="login.jsp">로그인</a>
					</li>
					<li class="header_item">
						<a class="header_item_page_link" href="Join.jsp">회원가입</a>
					</li>
					<li class="header_item">
						<a class="header_item_page_link" href="/">관심상품</a>
					</li>
					<li class="header_item">
						<a class="header_item_page_link" href="mypage.jsp">마이페이지</a>
					</li>
				</ul>
			</div>
			<table class="header_notice">
				<tr>
					<td style="width:5%"></td>
					<td class="header_notice_item">
						<a class="header_notice_page_link" href="/">공지사항</a>
					</td>
					<td class="header_notice_item">
						<a class="header_notice_page_link" href="/">상품후기</a>
					</td>
					<td class="header_notice_item">
						<a class="header_notice_page_link" href="/">고객센터</a>
					</td>
					<td style="width:5%"></td>
				</tr>
			</table>
			<%-- <div class="header_notice">
				<ul class="header_notice_items">
					<li class="header_notice_item">
						<a class="header_notice_page_link" href="/">공지사항</a>
					</li>
					<li class="header_notice_item">
						<a class="header_notice_page_link" href="/">상품후기</a>
					</li>
					<li class="header_notice_item">
						<a class="header_notice_page_link" href="/">고객센터</a>
					</li>
				</ul>
			</div> --%>
		</div>
	</header>
	<main>
		<div class="product_item_wrap" style="margin-top:40px;">
			<div class="product_items">
				<div class="title" style="text-align:center;">
					<h2>관심 상품</h2>
				</div>
				<table style="width:100%;">
					<tbody>
						<tr style="align:center;">
							<td style="width:5%"></td>
							<td class="products">
								<img src="G102.png" class="product_img">
							</td>
							<td class="products">
								<span style="font-family: GmarketSansBold; font-size:14pt">제품명 : </span>
								<span style="font-family: GmarketSansMedium; font-size:12pt">G102</span>
							</td>
							<td class="products">
								<span style="font-family: GmarketSansBold; font-size:14pt">제조사 : </span>
								<span style="font-family: GmarketSansMedium; font-size:12pt">Logitech</span>
							</td>
							<td class="products">
								<span style="font-family: GmarketSansBold; font-size:14pt">가격 : </span>
								<span style="font-family: GmarketSansMedium; font-size:12pt">23,900원</span>
							</td>
							<td class="products">
								<a href="/" class="product_link">
								상세 정보
								</a>
							</td>
							<td style="width:5%"></td>
						</tr>
						<tr style="align:center;">
							<td style="width:5%"></td>
							<td class="products">
								<img src="benQ_EC2.png" class="product_img">
							</td>
							<td class="products">
								<span style="font-family: GmarketSansBold; font-size:14pt">제품명 : </span>
								<span style="font-family: GmarketSansMedium; font-size:12pt">EC2</span>
							</td>
							<td class="products">
								<span style="font-family: GmarketSansBold; font-size:14pt">제조사 : </span>
								<span style="font-family: GmarketSansMedium; font-size:12pt">BenQ</span>
							</td>
							<td class="products">
								<span style="font-family: GmarketSansBold; font-size:14pt">가격 : </span>
								<span style="font-family: GmarketSansMedium; font-size:12pt">109,800원</span>
							</td>
							<td class="products">
								<a href="/" class="product_link">
								상세 정보
								</a>
							</td>
							<td style="width:5%"></td>
						</tr>
						<tr style="align:center;">
							<td style="width:5%"></td>
							<td class="products">
								<img src="G_pro_wireless.png" class="product_img">
							</td>
							<td class="products">
								<span style="font-family: GmarketSansBold; font-size:14pt">제품명 : </span>
								<span style="font-family: GmarketSansMedium; font-size:12pt">G Pro Wireless</span>
							</td>
							<td class="products">
								<span style="font-family: GmarketSansBold; font-size:14pt">제조사 : </span>
								<span style="font-family: GmarketSansMedium; font-size:12pt">Logitech</span>
							</td>
							<td class="products">
								<span style="font-family: GmarketSansBold; font-size:14pt">가격 : </span>
								<span style="font-family: GmarketSansMedium; font-size:12pt">139,00원</span>
							</td>
							<td class="products">
								<a href="/" class="product_link">
								상세 정보
								</a>
							</td>
							<td style="width:5%"></td>
						</tr>
					</tbody>
				</table>
			</div>
		</div>
	</main>
</body>
</html>
