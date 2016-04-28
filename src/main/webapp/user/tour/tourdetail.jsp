<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="X-UA-Compatible" content="IE=edge; charset=utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">
    
	<title>투어상품 상세보기</title>

	<!-- Bootstrap Core CSS -->
    <link href="user/main/css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom CSS -->
    <link href="user/main/css/thumbnail-gallery.css" rel="stylesheet">

    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
        <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
    <script src="https://code.getmdl.io/1.1.3/material.min.js"></script>
    <link rel="stylesheet" href="https://code.getmdl.io/1.1.3/material.indigo-pink.min.css">
    <!-- Material Design icon font -->
    <link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
    
</head>
<body>
	<!-- Page Content -->
    <div class="container">

        <!-- Portfolio Item Heading -->
        <div class="row">
            <div class="col-lg-12">
                <h3 class="page-header">몽생미셸 스페셜 야경 투어! (소규모/스냅) ${vo.pname}                 
                <!--<small>Item Subheading</small>  -->
                </h3>
            </div>
        </div>
        <!-- /.row -->

        <!-- Portfolio Item Row -->
        <div class="row">

            <div class="col-md-7">
                <img class="img-responsive" src="user/tour/img/p1.jpg" width="90%" alt="">
            </div>

            <div class="col-md-5">
                <h4>"프랑스 북부의 노르망디 지방의 아름다운 바닷가 마을로 떠나는 하루 여행!!"</h4>
                <span class="label label-success">투어코스</span>
                <p>파리출발 -> 에트르타 -> 옹플레흐 -> 몽생미셀(낮/야경) -> 파리도착(숙소까지안전하게 무료픽업)</p>
                <p><span class="glyphicon glyphicon-tag" aria-hidden="true"></span>시작시간 & 소요시간 : </p>
               
                <ul>
                    <li>
                    1월2일~4월30일
					07:50 ~ 00:30
					</li>
                    <li>
                    5월2일~7월30일
					08:50 ~ 01:30
					</li>
                    <li>
                    7월11일~8월30일(야간개장참여)
					10:00 ~ 02:00
                    </li>
                    <li>
                    9월1일~12월30일
					07:50 ~ 23:50
                    </li>
                </ul>
                * 월~토요일 3명이상 무조건 출발! 
				* 스냅사진 70여장 무료 촬영!
				* 프랑스인이 진행하는 수도원설명
				* 몽생미셀 수도원입장료@로컬가이드비용 일반총10유로/ 18세미만 무료 
				(*여름야간개장: 9유로)
				
            <hr/>
            
          	<strike>정가 23.5만원</strike>
			<p><font color=red>선착순 파격가</font><br>
			<font color=red>슈퍼특가: 16.9만원 + 샌딩 2만원(2존까지)</font><br>
			<font color=#a0a0a0>할인가: 21만원+샌딩 2만원(2존까지) </font><br>
			<font color=#a0a0a0>3~4존 20유로, 5존 40유로 추기비용발생</font>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <a href="reserve.jsp">
			<button class="mdl-button mdl-js-button mdl-button--raised mdl-js-ripple-effect">예약하기</button></a>
			

				
			</p>
			</div>
        </div>
        <!-- /.row -->

        <!-- product imformation -->
        <div class="mdl-tabs mdl-js-tabs mdl-js-ripple-effect">
  <div class="mdl-tabs__tab-bar">
    <a href="#about-panel" class="mdl-tabs__tab is-active">소개</a>
    <a href="#members-panel" class="mdl-tabs__tab">리뷰</a>
    <a href="#albums-panel" class="mdl-tabs__tab">문의</a>
  </div>
  <div class="mdl-tabs__panel is-active" id="about-panel" style="margin-top:10px"> 
    
                <div class="timeline-badge primary"><i class="glyphicon glyphicon-record invert"></i></div>
                <div class="timeline-panel">

                    <div class="timeline-heading">
	
		                        <img  class="img-responsive lazy"  src="user/tour/img/p1-1.png" alt=""/>
	
		                        <img  class="img-responsive lazy"  src="user/tour/img/p1-2.png" alt=""/>
	
		                        <img  class="img-responsive lazy"  src="user/tour/img/p1-3.png" alt=""/>
	

                    </div>

                    <div class="timeline-body text-justify">
                        <h2>
			몽생미셀
			&nbsp;
		</h2>
                        <p>
		미카엘 천사의 산이라는 뜻을 지닌 몽생미셸은  조수간만에 의한 섬으로서 프랑스 북부의 브르따뉴와 노르망디의 경계에 위치하고 있다. 몽생미셸은 대주교였던 성 오베르가 자신의 꿈 속에서 미카엘 천사의 지시를 받고 708년 수도원을 건축하기 시작하여 현재의 모습을 갖추기까지 약 800년의 세월에 걸쳐 완성되었다. 그 후 이곳은 거대한 성지순례의 중심이 되있고 갑자기 밀려드는 바닷물에 섬으로 건너 오는 많은 순례자들이 목숨을 잃기도 했다. 백년 전쟁이 일어난 14세기에는 난공불락의 요새로서의 구실을 하였고, 프랑스 혁명 이후 100년동안 감옥으로 쓰이기도 하였다. 1874년 나폴레옹 3세에 의하여 다시 베네딕트 수도회로 사용되었으며 1979년 유네스코 세계 문화 유산으로 지정되었다. 하루에 두번씩 섬에서 산으로 변하는 신비로운 모습과 노르망디의 전원 풍경을 감상할 수 있는 최고의 장소이다.
		</p>
                    </div>
                </div>

  </div>
  
  <div class="mdl-tabs__panel" id="members-panel" style="margin-top:10px">
    <div class="material-icons">account_box</div>
    id <span class="label label-success">2016년 4월 5일 투어참가</span><br>
         한줄리뷰

  </div>
  
  <div class="mdl-tabs__panel" id="albums-panel" style="margin-top:10px">
	
	<table id="table_content" class="reply_table">
     <tr>
      <td colspan="2">
        <form method="post" action="reply_insert.do" id="rifrm">
         <input type="hidden" name="bno" value="${vo.no }">
         <input type="hidden" name="page" value="${page}">
         <textarea rows="10" cols="150" name="reply_data"  id="reply_data"></textarea>
         <input type=button value="문의하기" id="replyBtn"  class="mdl-button mdl-js-button mdl-button--raised mdl-js-ripple-effect">
        </form>
      </td>
     </tr>
     </table>
     <hr/>
     <%-- <c:forEach var="rvo" items="${list }">
       <tr>
         <td width="75%" height="30">
          <c:if test="${rvo.group_tab>0 }">
           <c:forEach var="i" begin="1" end="${rvo.group_tab }">
            &nbsp;&nbsp;
           </c:forEach>
           <img src="user/board/image/icon_reply.gif">
          </c:if>
          ${rvo.msg }<br>
          <c:if test="${rvo.group_tab>0 }">
           <c:forEach var="i" begin="1" end="${rvo.group_tab }">
            &nbsp;&nbsp;
           </c:forEach>
          </c:if>
          <font color=blue>${rvo.name }</font>
          (${rvo.dbday })
         </td>
         <td width="25%" class="tdcenter">
           <img src="user/board/image/btn_reply.gif" id="w${rvo.no }" class="reply_write">
           <c:if test="${sessionScope.id==rvo.id }">
             <img src="user/board/image/btn_modify.gif" id="m${rvo.no }" class="reply_modify">
             <a href="reply_delete.do?no=${rvo.no }&bno=${vo.no}&page=${page}">
             <img src="user/board/image/btn_delete.gif"></a>
           </c:if>
         </td>
       </tr>
     <tr id="ww${rvo.no }" style="display:none">
      <td colspan="2">
        <form method="post" action="reply_re_insert.do" id="rfrm${rvo.no }">
         <input type="hidden" name="bno" value="${vo.no }">
         <input type="hidden" name="page" value="${page}">
         <input type="hidden" name="no" value="${rvo.no }">
         <textarea rows="2" cols="70" name="reply_data" style="float: left" id="d${rvo.no }"></textarea>
         <input type=button value="댓글달기" style="height:60px" id="rBtn${rvo.no }" class="riBtn">
        </form>
      </td>
     </tr>
     <tr id="mm${rvo.no }" style="display:none">
      <td colspan="2">
       <form method="post" action="reply_update.do" id="frm${rvo.no }">
         <input type="hidden" name="bno" value="${vo.no }">
         <input type="hidden" name="page" value="${page}">
         <input type="hidden" name="no" value="${rvo.no }">
        <textarea rows="2" cols="70" name="reply_data" style="float: left" id="rd${rvo.no }">${rvo.msg }</textarea>
        <input type=button value="댓글수정" style="height:60px" id="btn${rvo.no }" class="ruBtn">
       </form>
      </td>
     </tr>
     </c:forEach> --%>
    
	
  </div>
  
</div>
</div>

    <!-- /.container -->

    <!-- jQuery -->
    <script src="user/main/js/jquery.js"></script>

    <!-- Bootstrap Core JavaScript -->
    <script src="user/main/js/bootstrap.min.js"></script>
</body>
</html>