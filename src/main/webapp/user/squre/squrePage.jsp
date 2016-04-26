
<!-- low demand season = a slack season = off season  -->
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml" xmlns:og="http://ogp.me/ns#" xmlns:fb="http://www.facebook.com/2008/fbml">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- 위 3개의 메타 태그는 *반드시* head 태그의 처음에 와야합니다; 어떤 다른 콘텐츠들은 반드시 이 태그들 *다음에* 와야 합니다 -->
    <title>부트스트랩 101 템플릿</title>
<link rel="stylesheet" type="text/css" href="table.css">
	<link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
<link rel="stylesheet" href="https://code.getmdl.io/1.1.3/material.indigo-pink.min.css">
<script defer src="https://code.getmdl.io/1.1.3/material.min.js"></script>

    <!-- 부트스트랩 -->
    <link href="css/bootstrap.min.css" rel="stylesheet">

    <!-- IE8 에서 HTML5 요소와 미디어 쿼리를 위한 HTML5 shim 와 Respond.js -->
    <!-- WARNING: Respond.js 는 당신이 file:// 을 통해 페이지를 볼 때는 동작하지 않습니다. -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
    <meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=9" />
<link rel="image_src" href="/img_v6/logo_s.png" />


<meta http-equiv="Content-Language" content="ko">
<title>광장 플라밍go</title>
<meta name="description" content="여행정보를 서로 나누는 곳">


<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script>
<script src="http://code.jquery.com/ui/1.10.3/jquery-ui.js"></script>

<script src="http://www.google.com/jsapi"></script>

 
<link rel="stylesheet" href="css/bootstrap.min.css">
<!-- Latest compiled and minified JavaScript -->
<script src="js/bootstrap.min.js"></script>
<script type="text/javascript" src="//code.jquery.com/jquery-migrate-1.2.1.min.js"></script>
 <!-- Le fav and touch icons -->
    <link rel="shortcut icon" href="images/favicon.ico">
    <link rel="apple-touch-icon" href="images/apple-touch-icon.png">
    <link rel="apple-touch-icon" sizes="72x72" href="images/apple-touch-icon-72x72.png">
    <link rel="apple-touch-icon" sizes="114x114" href="images/apple-touch-icon-114x114.png">
      <link type="text/css" href="css/css_v2.css" rel="Stylesheet" />

<link rel="stylesheet" type="text/css" href="//cdn.jsdelivr.net/jquery.slick/1.4.1/slick.css"/>
<link rel="stylesheet" type="text/css" href="http://kenwheeler.github.io/slick/slick/slick-theme.css"/>

<script type="text/javascript" src="//cdn.jsdelivr.net/jquery.slick/1.4.1/slick.min.js"></script>

<style type="text/css">
.span 
{
	margin-left:10px;
	float:left!important;
}
.label
{
	background-color:rgb(153, 153, 153);
}
#top {
    position: fixed;
    display: block;
    right: 0;
    bottom: 0;
    margin-right: 40px;
    margin-bottom: 40px;
    z-index: 900;
}

</style>
<script src="js/sociallib.js"></script>
</head>
<body>
 <!-- jQuery (부트스트랩의 자바스크립트 플러그인을 위해 필요합니다) -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
    <!-- 모든 컴파일된 플러그인을 포함합니다 (아래), 원하지 않는다면 필요한 각각의 파일을 포함하세요 -->
    <script src="js/bootstrap.min.js"></script>
<!-- 타이틀 탭 -->
   <div class="stubby_container">
      <div class="stubby_content">
	<ul class="nav nav-tabs" role="tablist" style="margin-left:0px;margin-top:0px;">
		<li class="active"><a href="index.asp"><h5>전체</h5></a></li>
		<li ><a href="index.asp?newstype=INF"><h5>정보공유</h5></a></li>
		<li ><a href="index.asp?newstype=FND"><h5>동행찾기</h5></a></li>
		<li><table><tr><td style="width:10px" style="padding-top:0px;padding-bottom:0px">&nbsp;</td></tr></table></li>
		
				<span style="float: left;"></span> <span
								style="float: right;"></td>
			
				
						<!-- 글쓰기 버튼 -->
 <button onclick="myFunction()" id=top class="mdl-button mdl-js-button mdl-button--fab mdl-js-ripple-effect">
  <i class="material-icons">add</i></button>




<!-- 검색엔진 -->
						
						
						<form class="navbar-form navbar-right" role="search">
							<div class="form-group">
							<select name="select">
								<option value="select" selected>전체</option>
								<option value="NAME">이름</option>
								<option value="CONTENT">내용</option>
							</select></span> <input type="text" class="form-control" placeholder="Search">
							</div>
								<button type="submit" class="btn btn-default">검색</button>
						
				</ul>
	

<div class="row">
 <div class="col-md-8" style="border-right:1px solid #efefef">
<div class="alert alert-warning alert-dismissible" role="alert" style="margin-top:10px;">

<!-- 설명  -->
  <button type="button" class="close" data-dismiss="alert"><span aria-hidden="true">&times;</span><span class="sr-only">Close</span></button>
  <strong>
 플라밍Go 광장은 여행의 정보와 이야기를 자유롭게 공유하는 공간이에요. <br/>
여행자들을 도와주시는 멘토분들 덕분에 광장이 활발하게 운영될 수 있답니다.<br/>
광장에 질문을 올리시는 분들은 아래 두 가지만 지켜주세요!<br/>
1. 조금만 시간을 투자하면 찾을 수 있는 정보는 먼저 스스로 찾아주세요.<br/>
 반복되는 기초적인 질문은 지쳐요:( <br/>
2. 답변을 얻은 후엔 감사를 표시해주세요.<br/>
 주고받는 인사속에 훈훈한 광장 :)

   </strong>
</div>


<!----글 작성 모듈 ----> 

			<div class="row" style="margin-left:0px;margin-top:5px">
			 
				<div class="span" style="width:70px;position:relative;height:100px;overflow:hidden;"><img width="70px" style="border:4px solid #ffffff" onerror="this.src='/img_v6/img_pfnull.gif';" src="/img_v6/img_pfnull.gif" border="0" id="img_pf"></div>
				<div class="span" style="width:570px;">
					<input type="hidden" id="att_guidebook" name="optGuidebook" value=""/>
					<input type="hidden" id="att_map" name="optMap" value=""/>
					<input type="hidden" id="att_route" name="optRoute" value=""/>
					<input type="hidden" id="att_plan" name="optPlan" value=""/>
					<input type="hidden" id="att_link" name="optLink" value=""/>

					<textarea id="msg" name="msg" style="width:100%" rows="4" onclick="login();"></textarea>
					<div style="clear:both"></div>
					<div class="row" style="margin-top:7px">
						<div class="span8">
						<span style="float:right;">
						<select name="newsType" id="newsType"  style="width:110px;" onchange="newsTypeChanged()">
							<option value="QNA" >질문</option>
							
							<option value="FND" >동행찾기</option>
							<option value="INF" >정보</option>
							<option value="MSP" >숙소리뷰</option>
							<option value="HOT" >할인정보</option>
							<option value="FRE" >자유</option>
						</select>

						&nbsp;&nbsp;<a href="javascript:login();" class="btn btn-success btn-lg" style="width:150px;margin-right:20px;">글쓰기</a>
						</span>
						<span class="label">첨부</span>
						<select name="attType" id="attachType" class="span3" onchange="PopupOpen(this.value);">
							<option value="">첨부하기</option>
							<option value="user/squre/link.jsp">링크</option>
							<option value="user/squre/map.jsp">지도</option>
							<option value="route.jsp">루트</option>
							<option value="plan.jsp">내 계획</option>
							<option value="guidebook.jsp">가이드북</option>
						</select>		
						</div>
					</div>
 					<div class="row" style="margin-bottom:5px;margin-top:7px">
						<div class="span8">
							<p id="label_for_write_mentors" style="text-align:right;color:#696969;font-size:8pt" >

나의 멘토들(0명)에게 중요한 질문으로 표시되며 메일로 질문이 전송됩니다.</p>
							<p id="label_for_write_mentees" class="hide" style="text-align:right;color:#696969;font-size:8pt" > 나의 멘티들(0명)에게 이 정보가 중요한 정보로 표시됩니다.</p>
						</div>
					</div>
					<div style="margin-bottom:15px;margin-top:7px">
							<div id="att_map_div"></div>
					</div>
				</div>
			</div>

<script>
	newsTypeChanged();
</script>
<div class="modal fade"  id="modal-Att-Route" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">&times;</span><span class="sr-only">닫기</span></button>
        <h5>루트 첨부</h5>
      </div>
      <div class="modal-body">
	<iframe id="if_attach_Route" frameborder="0" src="about:blank" width="560px" height="490px" scrolling="no"></iframe>
      </div>
    </div>
  </div>
 </div>

 <div class="modal fade"  id="modal-Guidebook" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">&times;</span><span class="sr-only">닫기</span></button>
         <h5>가이드북 첨부</h5>
      </div>
      <div class="modal-body">
	<iframe id="if_attach_Guidebook" frameborder="0" src="about:blank" width="560px" height="490px" scrolling="no"></iframe>
      </div>
    </div>
  </div>
 </div>


 <div class="modal fade"  id="modal-Map" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
  <div class="modal-dialog ">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">&times;</span><span class="sr-only">닫기</span></button>
         <h3>지도첨부</h3>
      </div>
      <div class="modal-body">
	<iframe id="if_attach_map" frameborder="0" src="about:blank" width="560px" height="330px" scrolling="no"></iframe>
      </div>
    </div>
  </div>
 </div>
 <div class="modal fade"  id="modal-Plan" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
  <div class="modal-dialog ">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">&times;</span><span class="sr-only">닫기</span></button>
              <h3>계획첨부</h3>
      </div>
      <div class="modal-body">
	  <iframe id="if_attach_plan" frameborder="0" src="about:blank" width="360px" height="230px" scrolling="no"></iframe>
      </div>
    </div>
  </div>
 </div>



  
 <div class="modal fade"  id="modal-Link" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
  <div class="modal-dialog ">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">&times;</span><span class="sr-only">닫기</span></button>
             <h3>링크첨부</h3>
      </div>
      <div class="modal-body">
	   <iframe id="if_attach_link" frameborder="0" src="about:blank" width="560px" height="380px" scrolling="no"></iframe>
      </div>
    </div>
  </div>
 </div>



<!----글 작성 모듈 끝----> 



<!-- 사이드 -->
<div id="resvSquare">

	<div class="row item" style="margin-left:0px;border-top:1px solid #efefef">
<table border=0 width=700>
      <tr>
        <td align=left>
         <a href="board_insert.do">
         <img src="user/board/image/btn_write.gif" border=0></a>
        </td>
      </tr>
    </table>
    <table id="table_content">
      <tr>
        <th width=10%>번호</th>
        <th width=45%>제목</th>
        <th width=15%>이름</th>
        <th width=20%>작성일</th>
        <th width=10%>조회수</th>
      </tr>
      <c:forEach var="vo" items="${list }">
        <tr class="dataTr">
         <td width=10% class="tdcenter">${vo.no }</td>
         <td width=45% class="tdleft">
          <a href="board_content.do?no=${vo.no }&page=${curpage}">${vo.subject }</a>
          &nbsp;
          <c:if test="${today==vo.dbday }">
           <img src="user/board/image/icon_new (2).gif">
          </c:if>
          &nbsp;
          <c:if test="${vo.replyCount>0 }">
           (${vo.replyCount })
          </c:if>
         </td>
         <td width=15% class="tdcenter">${vo.name }</td>
         <td width=20% class="tdcenter">
         <fmt:formatDate value="${vo.regdate }" pattern="yyyy-MM-dd"/>
         </td>
         <td width=10% class="tdcenter">${vo.hit }</td>
        </tr>
      </c:forEach>
    </table>
    <table id="table_content">
      <tr>
        <td align=right>
          <a href="squrePage.do?page=${curpage>1?curpage-1:curpage }">
          <img src="user/board/image/prev.gif" border=0></a>&nbsp;
          <a href="squrePage.do?page=${curpage<totalpage?curpage+1:curpage }">
          <img src="user/board/image/next.gif" border=0></a>&nbsp;&nbsp;
          ${curpage } page / ${totalpage } pages
        </td>
      </tr>
    </table>
	</div>

<!--사이드닫기 -->
</div>

<!-- 더보기  -->
	<hr>
	<div class="row" id="row_btnmore">
		<input name="page" id="page"  type="hidden" value="1">
		<a href="javascript:getLogs(1);" class="btn span10" style="text-align:center">더보기</a>
	</div>
	
<script>

	
	function myFunction() {
		window.open("user/squre/board_insert.jsp",'sample',"width=800,height=400"); 
	}
	
	  function PopupOpen(strUrl) {
		//만약 strUrl 변수에 값이 빈값이 아니라면 즉 벨류값이 존제하지 않는 다면 아래를 실행합니다
		            if (strUrl.length > 0) { 
		                 window.open(strUrl,"_blank", "width=500,height=350"); //새창을 띄웁니다 이때 주소는 select박스에서 선택된 주소값으로 합니다
		            }
		         }
</script>

<br/>


</div>
<div class="col-md-4">




	<h5>최근 등록된 글</h5>

				

			
				

			

				<table width="200px" style="border:0px;padding:0 0 0 0;margin-bottom:10px"><tr>
				<!-- <td valign="top" style="border:0px;padding:0 0 0 0;margin:0 0 0 0"><a href="/plan/profile.asp?id=Useong15"><img  width="36px" onerror="this.src='/img_v6/img_pfnull.gif';" src="/pfimg/3/1/Useong15_sq.jpg" border="0" id="img_pf"></a></td> -->
				<td valign="top" style="border:0px;padding-left:7px;padding-top:0px;padding-bottom:0px;margin:0 0 0 0">
					<a href="/plan/profile.asp?id=Useong15 "><font class="small" style="color:gray"><b>Useong15</b></font></a> <a href="javascript:shownotifydetail('newsfeed','1000000000132597999','')"><font class="small">런던 > 파리 > 암스테르담 > 프랑크푸르트 ..</font></a> <font class="small">15분전</font>
				</td>
				</tr></table>

<hr/>






<script>
$(document).ready(function(){

  $('.single-item').slick({
  dots: true,
  infinite: true,
  speed: 500,
  autoplay: true,
  autoplaySpeed: 2000
});


});

</script>
<h5>최근 추천받는 글</h5>

				<table width="200px" style="border:0px;padding:0 0 0 0;margin-bottom:10px"><tr>
				<!-- <td valign="top" style="border:0px;padding:0 0 0 0;margin:0 0 0 0"><a href="/plan/profile.asp?id=js0687"><img  width="36px" onerror="this.src='/img_v6/img_pfnull.gif';" src="/pfimg/5/1/js0687_sq.jpg" border="0" id="img_pf"></a></td> -->
				<td valign="top" style="border:0px;padding-left:7px;margin:0 0 0 0;padding-top:0px;padding-bottom:0px;">
					<ul class="unstyled" style="margin-top:0px;margin-bottom:0px;">
					<li><a href="/plan/profile.asp?id=js0687 "><font class="small"><b>js0687</b></font></a> <a href="javascript:shownotifydetail('newsfeed','1000000000132445993','')"><font class="small" >원래 레일 유럽은 안 나오는 표가 더 많음. ..</font></a> <font class="small">3일전</font></li>
					 <li style="text-align:right"><span class="label "> 추천 2회</span></li>
					</ul>
				</td>
				</tr></table>



<!--right end--->

</div>
</div>
</div>

</div> <!-- /content -->


<footer>

<!----
	<p align="center">
		<a href="http://stubbytour.blogspot.kr/2013/01/12-25-26-2012-international-youth.html" target="_blank" title="2012 International Youth Innovation Games(Beijing, China) Winner!"><img src="/img_v6/award1.gif"></a>
		<a href="http://stubbytour.blogspot.kr/2013/01/k-tech.html" target="_blank" title="2012 K-tech(Sillycon Valley, USA) Finalist!"><img src="/img_v6/award2.gif"></a>
	</p>
---->

	<p align="center">
	<a href="http://stubbyplanner.com" target="_blank"><font face="Lucida Sans Unicode" style="font-size:9pt"> &copy;  플라밍go 2016</font></a>
	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

 <a href="/m/intro.asp" target="_blank"><font color="gray" style="font-size:9pt" color="#696969">소개</font></a> ·	  <a href="/qa/"><font color="gray" style="font-size:9pt" color="#696969">문의사항</font></a>

	</p>
 </footer>




    </div> <!-- /container -->


 

</body>
</html>