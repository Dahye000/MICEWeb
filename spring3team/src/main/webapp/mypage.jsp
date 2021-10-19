<%@ page contentType="text/html;charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="css/mypage.css">
<script src="https://use.fontawesome.com/releases/v5.2.0/js/all.js"></script>
</head>
<body>
	<header class="header">
		<div class="header_layout">
			<div class="container">
				<div class="header_name">
					<a href="Index.jsp" class="link_title">
						Mice
					</a>
				</div>
			</div>
			<div class="header_items_wrap">
				<div class="header_items">
					<table class="interested_n_review">
						<tbody>
							<tr>
								<td style="width:5%"></td>
								<td class="interested" style="width:45%">
									<div class="item">
										<div class="num_text" class="link">
											<a href="interest.jsp" class="link_num">
												0
											</a>
										</div>
										<div class="text">
											<a href="interest.jsp" class="link">
												관심 상품
											</a>
										</div>
									</div>
								</td>
								<td class="review" style="width:45%">
									<div class="item">
										<div class="num_text" class="link">
											<a href="interest.jsp" class="link_num">
												0
											</a>
										</div>
										<div class="text">
											<a href="review.jsp" class="link">
												내 리뷰
											</a>
										</div>
									</div>
								</td>
								<td style="width:5%"></td>
							</tr>
						</tbody>
					</table>
				</div>
			</div>
		</div>
	</header>
	<main>
		<div class="main_wrap">
			<div class="main_items">
				<div class="main_item">
					<a href="#" class="main_a">내 손 크기</a>
				</div>
				<div class="main_item">
					<a href="#"  class="main_a">마우스 추천</a>
				</div>
				<div class="main_item">
					<a href="#"  class="main_a">리뷰 작성</a>
				</div>
				<div class="main_item">
					<a href="customer.jsp"  class="main_a">고객 센터</a>
				</div>
			</div>
		</div>
	</main>
	<footer>
		<div class="footer" style="display:flex;">
			<div class="num_info">
				<div class="number">
					<p>
						<span style="font-family: GmarketSansBold; font-size:20pt;">032-890-7000</span>
					</p>
					<p>
						<span style="font-family: GmarketSansMedium; font-size:11pt;">상담시간:오전9시~오후6시(토요일,공휴일 휴무)</span>
					</p>
					<p>
						<span style="font-family: GmarketSansLight; font-size:9pt;">email:jeiu@ac.kr</span>
					</p>
					<br>
					<br>
					<br>
					<p>
						<span style="font-family: GmarketSansLight; font-size:10pt;">Copyright©2021 JEI UNIVERSITY.All Reserved</span>
					</p>
					<p>
						<span style="font-family: GmarketSansLight; font-size:10pt;">사업자등록번호 : 000 - 00 - 00000</span>
					</p>
					<p>
						<span style="font-family: GmarketSansLight; font-size:10pt;">통신판매업 신고번호 : 제 2021-2021호</span>
					</p>
					<p>
						<span style="font-family: GmarketSansLight; font-size:10pt;">대표이사 : ○○○</span>
					</p>
					<p>
						<span style="font-family: GmarketSansLight; font-size:10pt;">인천광역시 동구 재능로 178(송림동 122-1번지) 인천재능대학교</span>
					</p>
				</div>
			</div>
			<div class="shop_info">
				<p>
					<span style="font-family: GmarketSansMedium; font-size:11pt">SHOPPING INFO</span>
				</p>
				<br>
				<p>
					<span style="font-family: GmarketSansLight; font-size:10pt">홈</span>
				</p>
				<p>
					<span style="font-family: GmarketSansLight; font-size:10pt">회사소개</span>
				</p>
				<p>
					<span style="font-family: GmarketSansLight; font-size:10pt">이용약관</span>
				</p>
				<p>
					<span style="font-family: GmarketSansLight; font-size:10pt">개인정보취급방침</span>
				</p>
			</div>
		</div>
	</footer>
</body>
</html>
