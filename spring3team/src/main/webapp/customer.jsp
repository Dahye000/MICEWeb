<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko"><head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width,initial-scale=1.0,minimum-scale=1.0,maximum-scale=1.0,user-scalable=no">
  <title>마이스 고객센터</title>
  <link rel="stylesheet" href="css/customer.css">
</head>
<body>
  <div class="container_doc cont_inquiry scroll">
    <header class="doc_header">
      <h1 class="doc_title">
          <img src="logo.jpg" width="86" class="img_g" alt="MICE">
        </a>
      </h1>
      <div class="wrap_head">
        <strong class="tit_head">고객센터</strong>
        <button type="button" class="btn_prev">
          <span class="ico_kakaopay ico_prev">이전</span>
        </button>
<!--         <button type="button" class="btn_close"> -->
<!--           <span class="ico_kakaopay ico_close">닫기</span> -->
<!--         </button> -->
      </div>
      <nav id="gnbContent" class="doc_gnb">
        <h2 class="screen_out">고객센터</h2>
        <ul class="list_menu">
          <li><a href=".jsp" class="link_menu">공지사항</a></li>
          <li><a href=".jsp" class="link_menu">FAQ</a></li>
        </ul>
      </nav>
      <div class="bg_header" style="opacity: 0.0709241;"></div>
    </header>
    <main class="doc_main">
      <div class="content_search">
        <h2 class="screen_out">검색</h2>
        <div class="wrap_comm">
          <strong class="tit_search">MICE 고객센터입니다</strong>
          <div class="search_form">
            <div id="srcOpt" class="opt_comm opt_search vaild">
              <label for="searchFilter" class="screen_out">검색필터</label>
              <input type="text" id="searchFilter" class="tf_g" value="전체" readonly="">
              <button type="button" class="btn_opt src_btn_opt">
                <span style="z-index: -10;" class="ico_mice ico_arrow_b">검색필터 옵션 열기</span>
              </button>
              <div class="layer_opt src_layer_opt">
                <ul class="list_opt src_list_opt">
                  <li class="on">
                    <button type="button" class="btn_select">
                      <span class="txt_btn">전체</span>
                    </button>
                  </li>
                  <li>
                    <button type="button" class="btn_select">
                      <span class="txt_btn">제목</span>
                    </button>
                  </li>
                  <li>
                    <button type="button" class="btn_select">
                      <span class="txt_btn">내용</span>
                    </button>
                  </li>
                </ul>
              </div>
            </div>
            <div id="divTfSeach" class="box_tf box_search" style="width:90%">
              <label for="tfSearch" class="screen_out">검색어 입력</label>
<!--               <form action ="#none"> -->
                <input type="search" id="tfSearch" class="tf_g" placeholder="검색어를 입력해 주세요">
<!--               </form> -->
              <button style="z-index: 20;" id="btn_del" type="button" class="btn_del">
                <span class="ico_mice ico_del">삭제</span>
              </button>
              <button id="btn_search" type="submit" class="btn_search">
                <span class="ico_mice ico_search">검색</span>
              </button>
              <img style="right:-110px;" src=".gif" class="emot_search" alt="">
            </div>
            <div class="dimmed_layer"></div>
          </div>
        </div>
      </div>
      <article id="mainContent" class="content_article">
        <h2 class="screen_out">문의 채널</h2>
        <div class="contents_comm contents_inquiry">
          <div class="wrap_comm">
            <div class="box_wrap inquiry_wrap">
              <div class="box_comm">
                <span class="box_thumb">
                  <span class="ico_mice ico_inquiry1"></span>
                </span>
                <div class="box_contents">
                  <strong class="tit_box">상담하기<span class="ico_mice ico_next2"></span></strong>
                  <p class="txt_box show_pc">평일 오전 9:00 ~ 오후 6:00</p>
                  <p class="desc_g show_pc">※ 챗봇 문의는 365일 24시간 운영</p>
                </div>
                <a style="cursor:pointer" class="link_more" onclick="$('#inquiry_talk').submit()">
                  <span class="screen_out">바로가기</span>
                  <form id="inquiry_talk" action="http://localhost:8080/spring3team/Index.jsp" style="cursor: pointer" method="post" target="_top">
                    <input type="hidden" name="uuid" value="@마이스고객센터">
                    <input type="hidden" name="extra" value="homepage">
                    <input type="hidden" name="bot" value="true">
                    <input type="hidden" name="event" value="chatbot_home">
                  </form>
                </a>
              </div>
              <div class="box_comm">
                <span class="box_thumb">
                  <span class="ico_mice ico_inquiry2"></span>
                </span>
                <div class="box_contents">
                  <strong class="tit_box">1:1 문의<span class="ico_mice ico_next2"></span></strong>
                  <p class="txt_box">문의 남겨주시면 최대한 빠르게 답변드리겠습니다</p>
                </div>
                <a id="txtAccount" style="cursor:pointer" class="link_more">
                  <span class="screen_out">바로가기</span>
                </a>
              </div>
            </div>
          </div> 
        </div>
          <div class="contents_comm contents_support">
          <div class="wrap_comm">
            <strong class="tit_contents"><em class="emph_title">MICE 어플</em></strong>
            <div class="box_wrap support_wrap">
              <div class="box_comm">
                <div class="box_contents">
                  <strong class="tit_box">기능1<span class="ico_mice ico_next2"></span></strong>
                  <p class="desc_g">카메라를 통한 손 인식 및 크기 측정 </p>
                </div>
              </div>
              <div class="box_comm">
                <div class="box_contents">
                  <strong class="tit_box">기능2<span class="ico_mice ico_next2"></span></strong>
                  <p class="desc_g">마우스 추천 기능</p>
                </div>
                <a id="txtRemi" style="cursor:pointer" class="link_more">
                </a>
              </div>
              <div class="box_comm">
                <div class="box_contents">
                  <strong class="tit_box">기능3<span class="ico_mice ico_next2"></span></strong>
                  <p class="desc_g">마우스에 대한 평점</p>
                </div>
                <a id="txtEmbezz" style="cursor:pointer" class="link_more">
                </a>
              </div>
              <div class="box_comm">
                <div class="box_contents">
                  <strong class="tit_box">기능4<span class="ico_mice ico_next2"></span></strong>
                  <p class="desc_g">마우스 필터링</p>
                </div>
                <a id="txtPurc" style="cursor:pointer" class="link_more">
                </a>
              </div>
            </div>
          </div>
        </div>
        <div class="contents_comm contents_center">
          <div class="wrap_comm">
            <div class="box_wrap center_wrap">
              <div class="box_comm">
                <span class="box_thumb">
                  <a href="tel:890-7000"><span class="ico_mice ico_center1"></span></a>
                </span>
                <div class="box_contents">
                  <strong class="tit_box"><span class="txt_center">고객센터</span> 032-890-7000</strong>
                  <p class="txt_box show_pc">운영시간 : 평일 오전 9:00 ~ 오후 6:00</p>
                </div>
              </div>
              <div class="box_comm">
                <span class="box_thumb">
                  <span class="ico_mice ico_center2"></span>
                </span>
                <div class="box_contents">
                  <strong class="tit_box"><span class="txt_center">인천재능대학교</span></strong>
                  <p class="txt_box">365일 24시간 운영</p>
                  <p class="desc_g show_pc">※ 긴급한 문의는 인천재능대학교로 문의</p>
                </div>
              </div>
            </div>
          </div>
        </div>
      </article>
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