<%@ page language="java" contentType="text/html; charset=EUC-KR"
   pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta name="viewport"
   content="width=device-width,initial-scale=1.0,minimum-scale=1.0,maximum-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title>추천 숙소 , 플라밍GO</title>
<meta http-equiv="Content-Language" content="ko">
<meta charset="UTF-8">

<!-- Web Fonts -->
<link rel='stylesheet' type='text/css'
   href='//fonts.googleapis.com/css?family=Open+Sans:400,300,600&amp;subset=cyrillic,latin'>

<!-- CSS Global Compulsory -->
<link rel="stylesheet" href="css/bootstrap.min.css">
<link rel="stylesheet" href="css/shop.style.css">
<link rel="stylesheet" type="text/css"
   href="http://code.jquery.com/ui/1.9.2/themes/base/jquery-ui.css">

</head>
<body>
      
   <div
      style="padding-top: 100px; width: 100%; height: 500px; background: url('http://www.mrwallpaper.com/wallpapers/Waterfall-Landscape-1920x1080.jpg'); no-repeat center center fixed; -webkit-background-size: cover; -moz-background-size: cover; -o-background-size: cover; background-size: cover;">
      <h2 style="text-align: center;" class="light_heavy_30_shadowed">
         꼼꼼한 플라밍GO 회원들이 선택한 가성비 높은 숙소들을 살펴보세요!
      </h2>
      <div style="padding-left: 500px;">
         <input type="text" id="autoc" name="slpcityname"
            placeholder="어느 도시의 숙소를 찾고 계신가요?"
            style="width: 650px; height: 40px; font-size: 17pt">
         
         <button class="mdl-button mdl-js-button mdl-js-ripple-effect">Accommodation</button>
            <button class="mdl-button mdl-js-button mdl-js-ripple-effect">Restaurant</button>

      </div>
   </div>
   
   <br>

   <div class="col-md-2 col-sm-6">
      <h3 class="mega-menu-heading">프랑스/영국</h3>
      <ul class="list-unstyled style-list">
         <li><a href="/slp/index.asp?srcserial=111011004"><img
               src="http://www.stubbyplanner.com/images/is/flag/11101_s.gif">
               파리</a></li>
         <li><a href="/slp/index.asp?srcserial=111011003"><img
               src="http://www.stubbyplanner.com/images/is/flag/11101_s.gif">
               니스</a></li>
         <li><a href="/slp/index.asp?srcserial=111011050"><img
               src="http://www.stubbyplanner.com/images/is/flag/11101_s.gif">
               안시</a></li>
         <li><a href="/slp/index.asp?srcserial=111011005"><img
               src="http://www.stubbyplanner.com/images/is/flag/11101_s.gif">
               아비뇽</a></li>
         <li><a href="/slp/index.asp?srcserial=111011010"><img
               src="http://www.stubbyplanner.com/images/is/flag/11101_s.gif">
               리옹</a></li>
         <li><a href="/slp/index.asp?srcserial=111011014"><img
               src="http://www.stubbyplanner.com/images/is/flag/11101_s.gif">
               마르세유</a></li>
         <li><a href="/slp/index.asp?srcserial=111011012"><img
               src="http://www.stubbyplanner.com/images/is/flag/11101_s.gif">
               스트라스부르</a></li>
         <li><a href="/slp/index.asp?srcserial=111011110"><img
               src="http://www.stubbyplanner.com/images/is/flag/11101_s.gif">
               아를</a></li>

         <li><a href="/slp/index.asp?srcserial=111031001"><img
               src="http://www.stubbyplanner.com/images/is/flag/11103_s.gif">
               런던</a></li>
         <li><a href="/slp/index.asp?srcserial=111031009"><img
               src="http://www.stubbyplanner.com/images/is/flag/11103_s.gif">
               글래스고</a></li>
         <li><a href="/slp/index.asp?srcserial=111031008"><img
               src="http://www.stubbyplanner.com/images/is/flag/11103_s.gif">
               에든버러</a></li>
         <li><a href="/slp/index.asp?srcserial=111031004"><img
               src="http://www.stubbyplanner.com/images/is/flag/11103_s.gif">
               옥스퍼드</a></li>

         <!-- <li><a href="/slp/index.asp?srcserial=111081001"><img
               src="http://www.stubbyplanner.com/images/is/flag/11108_s.gif">
               브뤼셀</a></li>
         <li><a href="/slp/index.asp?srcserial=111081002"><img
               src="http://www.stubbyplanner.com/images/is/flag/11108_s.gif">
               브뤼헤</a></li>
         <li><a href="/slp/index.asp?srcserial=111071001"><img
               src="http://www.stubbyplanner.com/images/is/flag/11107_s.gif">
               암스테르담</a></li>
         <li><a href="/slp/index.asp?srcserial=111101001"><img
               src="http://www.stubbyplanner.com/images/is/flag/11110_s.gif">
               더블린</a></li> -->
      </ul>
   </div>

   <div class="col-md-2 col-sm-6">
      <h3 class="mega-menu-heading">이태리/스위스</h3>
      <ul class="list-unstyled style-list">
         <li><a href="/slp/index.asp?srcserial=111041004"><img
               src="http://www.stubbyplanner.com/images/is/flag/11104_s.gif">
               로마</a></li>
         <li><a href="/slp/index.asp?srcserial=111041006"><img
               src="http://www.stubbyplanner.com/images/is/flag/11104_s.gif">
               베니스</a></li>
         <li><a href="/slp/index.asp?srcserial=111041003"><img
               src="http://www.stubbyplanner.com/images/is/flag/11104_s.gif">
               피렌체</a></li>
         <li><a href="/slp/index.asp?srcserial=111041001"><img
               src="http://www.stubbyplanner.com/images/is/flag/11104_s.gif">
               밀라노</a></li>
         <li><a href="/slp/index.asp?srcserial=111041036"><img
               src="http://www.stubbyplanner.com/images/is/flag/11104_s.gif">
               베로나</a></li>
         <li><a href="/slp/index.asp?srcserial=111041009"><img
               src="http://www.stubbyplanner.com/images/is/flag/11104_s.gif">
               아시시</a></li>
         <li><a href="/slp/index.asp?srcserial=111041011"><img
               src="http://www.stubbyplanner.com/images/is/flag/11104_s.gif">
               나폴리</a></li>
         <li><a href="/slp/index.asp?srcserial=111041010"><img
               src="http://www.stubbyplanner.com/images/is/flag/11104_s.gif">
               카프리섬</a></li>
         <li><a href="/slp/index.asp?srcserial=111041123"><img
               src="http://www.stubbyplanner.com/images/is/flag/11104_s.gif">
               친꿰떼레</a></li>

         <li><a href="/slp/index.asp?srcserial=111021002"><img
               src="http://www.stubbyplanner.com/images/is/flag/11102_s.gif">
               인터라켄</a></li>
         <li><a href="/slp/index.asp?srcserial=111021001"><img
               src="http://www.stubbyplanner.com/images/is/flag/11102_s.gif">
               루체른</a></li>
         <li><a href="/slp/index.asp?srcserial=111021005"><img
               src="http://www.stubbyplanner.com/images/is/flag/11102_s.gif">
               취리히</a></li>
         <!-- <li><a href="/slp/index.asp?srcserial=111021015"><img
               src="http://www.stubbyplanner.com/images/is/flag/11102_s.gif">
               베른</a></li>
         <li><a href="/slp/index.asp?srcserial=111021007"><img
               src="http://www.stubbyplanner.com/images/is/flag/11102_s.gif">
               그린델발트</a></li>
         <li><a href="/slp/index.asp?srcserial=111021008"><img
               src="http://www.stubbyplanner.com/images/is/flag/11102_s.gif">
               제네바</a></li> -->
      </ul>
   </div>
   <div class="col-md-2 col-sm-6">
      <h3 class="mega-menu-heading">독일</h3>
      <ul class="list-unstyled style-list">
         <li><a href="/slp/index.asp?srcserial=111061006"><img
               src="http://www.stubbyplanner.com/images/is/flag/11106_s.gif">
               프랑크푸르트</a></li>
         <li><a href="/slp/index.asp?srcserial=111061005"><img
               src="http://www.stubbyplanner.com/images/is/flag/11106_s.gif">
               뮌헨</a></li>
         <li><a href="/slp/index.asp?srcserial=111061008"><img
               src="http://www.stubbyplanner.com/images/is/flag/11106_s.gif">
               베를린</a></li>
         <li><a href="/slp/index.asp?srcserial=111061001"><img
               src="http://www.stubbyplanner.com/images/is/flag/11106_s.gif">
               하이델베르크</a></li>
         <li><a href="/slp/index.asp?srcserial=111061002"><img
               src="http://www.stubbyplanner.com/images/is/flag/11106_s.gif">
               로텐부르크</a></li>
         <li><a href="/slp/index.asp?srcserial=111061007"><img
               src="http://www.stubbyplanner.com/images/is/flag/11106_s.gif">
               뷔르츠부르크</a></li>
         <li><a href="/slp/index.asp?srcserial=111061011"><img
               src="http://www.stubbyplanner.com/images/is/flag/11106_s.gif">
               쾰른</a></li>
         <li><a href="/slp/index.asp?srcserial=111061004"><img
               src="http://www.stubbyplanner.com/images/is/flag/11106_s.gif">
               드레스덴</a></li>
         <li><a href="/slp/index.asp?srcserial=111061020"><img
               src="http://www.stubbyplanner.com/images/is/flag/11106_s.gif">
               뉘른베르크</a></li>
         <li><a href="/slp/index.asp?srcserial=111061012"><img
               src="http://www.stubbyplanner.com/images/is/flag/11106_s.gif">
               뒤셀도르프</a></li>
         <li><a href="/slp/index.asp?srcserial=111061024"><img
               src="http://www.stubbyplanner.com/images/is/flag/11106_s.gif">
               슈투트가르트</a></li>
         <li><a href="/slp/index.asp?srcserial=111061016"><img
               src="http://www.stubbyplanner.com/images/is/flag/11106_s.gif">
               함부르크</a></li>
         <!-- <li><a href="/slp/index.asp?srcserial=111061030"><img
               src="http://www.stubbyplanner.com/images/is/flag/11106_s.gif">
               밤베르크</a></li> -->
      </ul>
   </div>

   <div class="col-md-2 col-sm-6">
      <h3 class="mega-menu-heading">지중해</h3>
      <ul class="list-unstyled style-list">
         <li><a href="/slp/index.asp?srcserial=121011002"><img
               src="http://www.stubbyplanner.com/images/is/flag/12101_s.gif">
               바르셀로나</a></li>
         <li><a href="/slp/index.asp?srcserial=121011003"><img
               src="http://www.stubbyplanner.com/images/is/flag/12101_s.gif">
               마드리드</a></li>
         <li><a href="/slp/index.asp?srcserial=121011001"><img
               src="http://www.stubbyplanner.com/images/is/flag/12101_s.gif">
               그라나다</a></li>
         <li><a href="/slp/index.asp?srcserial=121011007"><img
               src="http://www.stubbyplanner.com/images/is/flag/12101_s.gif">
               세비야</a></li>
         <li><a href="/slp/index.asp?srcserial=121011004"><img
               src="http://www.stubbyplanner.com/images/is/flag/12101_s.gif">
               톨레도</a></li>
         <li><a href="/slp/index.asp?srcserial=121011057"><img
               src="http://www.stubbyplanner.com/images/is/flag/12101_s.gif">
               론다</a></li>
         <li><a href="/slp/index.asp?srcserial=121011009"><img
               src="http://www.stubbyplanner.com/images/is/flag/12101_s.gif">
               발렌시아</a></li>
         <li><a href="/slp/index.asp?srcserial=121011005"><img
               src="http://www.stubbyplanner.com/images/is/flag/12101_s.gif">
               말라가</a></li>
         <li><a href="/slp/index.asp?srcserial=121011048"><img
               src="http://www.stubbyplanner.com/images/is/flag/12101_s.gif">
               네르하</a></li>
         <li><a href="/slp/index.asp?srcserial=121011017"><img
               src="http://www.stubbyplanner.com/images/is/flag/12101_s.gif">
               이비사섬</a></li>

         <li><a href="/slp/index.asp?srcserial=121031001"><img
               src="http://www.stubbyplanner.com/images/is/flag/12103_s.gif">
               아테네</a></li>
         <li><a href="/slp/index.asp?srcserial=121031002"><img
               src="http://www.stubbyplanner.com/images/is/flag/12103_s.gif">
               산토리니</a></li>
         <!-- <li><a href="/slp/index.asp?srcserial=121021001"><img
               src="http://www.stubbyplanner.com/images/is/flag/12102_s.gif">
               리스본</a></li>
         <li><a href="/slp/index.asp?srcserial=121021008"><img
               src="http://www.stubbyplanner.com/images/is/flag/12102_s.gif">
               오포르토</a></li>


         <li><a href="/slp/index.asp?srcserial=121041001"><img
               src="http://www.stubbyplanner.com/images/is/flag/12104_s.gif">
               이스탄불</a></li>
         <li><a href="/slp/index.asp?srcserial=121041003"><img
               src="http://www.stubbyplanner.com/images/is/flag/12104_s.gif">
               카파도키아</a></li>
         <li><a href="/slp/index.asp?srcserial=121041028"><img
               src="http://www.stubbyplanner.com/images/is/flag/12104_s.gif">
               페티예</a></li>
         <li><a href="/slp/index.asp?srcserial=121041035"><img
               src="http://www.stubbyplanner.com/images/is/flag/12104_s.gif">
               샤프란볼루</a></li>
 -->
      </ul>
   </div>


   <div class="col-md-2 col-sm-6">
      <h3 class="mega-menu-heading">동유럽</h3>
      <ul class="list-unstyled style-list">
         <li><a href="/slp/index.asp?srcserial=131011001"><img
               src="http://www.stubbyplanner.com/images/is/flag/13101_s.gif">
               프라하</a></li>
         <li><a href="/slp/index.asp?srcserial=131011003"><img
               src="http://www.stubbyplanner.com/images/is/flag/13101_s.gif">
               체스키 크루믈로프</a></li>

         <li><a href="/slp/index.asp?srcserial=131041001"><img
               src="http://www.stubbyplanner.com/images/is/flag/13104_s.gif">
               빈(비엔나)</a></li>
         <li><a href="/slp/index.asp?srcserial=131041002"><img
               src="http://www.stubbyplanner.com/images/is/flag/13104_s.gif">
               잘츠부르크</a></li>
         <li><a href="/slp/index.asp?srcserial=131041032"><img
               src="http://www.stubbyplanner.com/images/is/flag/13104_s.gif">
               할슈타트</a></li>
         <li><a href="/slp/index.asp?srcserial=131041005"><img
               src="http://www.stubbyplanner.com/images/is/flag/13104_s.gif">
               인스부르크</a></li>
         <li><a href="/slp/index.asp?srcserial=131041006"><img
               src="http://www.stubbyplanner.com/images/is/flag/13104_s.gif">
               잘츠캄머구트</a></li>
         <li><a href="/slp/index.asp?srcserial=131041025"><img
               src="http://www.stubbyplanner.com/images/is/flag/13104_s.gif">
               바트이슐</a></li>

         <li><a href="/slp/index.asp?srcserial=131021001"><img
               src="http://www.stubbyplanner.com/images/is/flag/13102_s.gif">
               부다페스트</a></li>
         <li><a href="/slp/index.asp?srcserial=131021002"><img
               src="http://www.stubbyplanner.com/images/is/flag/13102_s.gif">
               발라톤퓌레드</a></li>
         <li><a href="/slp/index.asp?srcserial=131071003"><img
               src="http://www.stubbyplanner.com/images/is/flag/13107_s.gif">
               류블랴나</a></li>
         <li><a href="/slp/index.asp?srcserial=131071001"><img
               src="http://www.stubbyplanner.com/images/is/flag/13107_s.gif">
               블레드</a></li>

         <!-- <li><a href="/slp/index.asp?srcserial=131061001"><img
               src="http://www.stubbyplanner.com/images/is/flag/13106_s.gif">
               두브로브니크</a></li>
         <li><a href="/slp/index.asp?srcserial=131061002"><img
               src="http://www.stubbyplanner.com/images/is/flag/13106_s.gif">
               스플리트</a></li>
         <li><a href="/slp/index.asp?srcserial=131061008"><img
               src="http://www.stubbyplanner.com/images/is/flag/13106_s.gif">
               자그레브</a></li>
         <li><a href="/slp/index.asp?srcserial=131061009"><img
               src="http://www.stubbyplanner.com/images/is/flag/13106_s.gif">
               플리트비체</a></li>
         <li><a href="/slp/index.asp?srcserial=131061007"><img
               src="http://www.stubbyplanner.com/images/is/flag/13106_s.gif">
               자다르</a></li>
         <li><a href="/slp/index.asp?srcserial=131061011"><img
               src="http://www.stubbyplanner.com/images/is/flag/13106_s.gif">
               흐바르</a></li> -->

      </ul>

   </div>

   <div class="col-md-2 col-sm-6">
      <h3 class="mega-menu-heading">북유럽</h3>
      <ul class="list-unstyled style-list">
         <li><a href="/slp/index.asp?srcserial=141041002"><img
               src="http://www.stubbyplanner.com/images/is/flag/14104_s.gif">
               오슬로</a></li>
         <li><a href="/slp/index.asp?srcserial=141041001"><img
               src="http://www.stubbyplanner.com/images/is/flag/14104_s.gif">
               베르겐</a></li>
         <li><a href="/slp/index.asp?srcserial=141041011"><img
               src="http://www.stubbyplanner.com/images/is/flag/14104_s.gif">
               스타방게르</a></li>
         <li><a href="/slp/index.asp?srcserial=141041012"><img
               src="http://www.stubbyplanner.com/images/is/flag/14104_s.gif">
               트롬소</a></li>
         <li><a href="/slp/index.asp?srcserial=141041028"><img
               src="http://www.stubbyplanner.com/images/is/flag/14104_s.gif">
               플롬</a></li>



         <li><a href="/slp/index.asp?srcserial=141021001"><img
               src="http://www.stubbyplanner.com/images/is/flag/14102_s.gif">
               헬싱키</a></li>

         <li><a href="/slp/index.asp?srcserial=141031001"><img
               src="http://www.stubbyplanner.com/images/is/flag/14103_s.gif">
               코펜하겐</a></li>

         <li><a href="/slp/index.asp?srcserial=141051001"><img
               src="http://www.stubbyplanner.com/images/is/flag/14105_s.gif">
               스톡홀름</a></li>

         <li><a href="/slp/index.asp?srcserial=141011002"><img
               src="http://www.stubbyplanner.com/images/is/flag/14101_s.gif">
               상트페테르부르크</a></li>
         <li><a href="/slp/index.asp?srcserial=141011001"><img
               src="http://www.stubbyplanner.com/images/is/flag/14101_s.gif">
               모스크바</a></li>
         <li><a href="/slp/index.asp?srcserial=141071003"><img
               src="http://www.stubbyplanner.com/images/is/flag/14107_s.gif">
               레이캬비크</a></li>
         <li><a href="/slp/index.asp?srcserial=141061001"><img
               src="http://www.stubbyplanner.com/images/is/flag/14106_s.gif">
               탈린</a></li>



      </ul>

   </div>

</body>
</html>