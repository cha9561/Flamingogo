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
    <style>
   .list-item {
     width: 250px;
   }
   .demo-card-square.mdl-card {
     width: 250px;
     height: 400px;
   }
   .demo-card-square > .mdl-card__title {
     color: #fff;
     background:
       bottom right 15% no-repeat #46B6AC;
   }
   .demo-card-square > .mdl-card__img {
   }
   </style>
</head>
<body>
   <!-- Page Content -->
    <div class="container" style="margin-top:50px">

        <!-- product imformation -->
        <div class="mdl-tabs mdl-js-tabs mdl-js-ripple-effect">
        <div class="mdl-tabs__tab-bar">
          <a href="#about-panel" class="mdl-tabs__tab">나의플래너</a>
          <a href="#members-panel" class="mdl-tabs__tab">구매관리</a>
          <a href="#albums-panel" class="mdl-tabs__tab">위시리스트</a>
          <a href="#board-panel" class="mdl-tabs__tab is-active">나의글</a>
       </div>
       
         <div class="mdl-tabs__panel is-active" id="about-panel" style="margin-top:10px"> 
         
          <!-- Page Content -->
          <div class="content container" style="margin-top:50px;" >
         
         <div class="row">
      
                  <div class="col-md-3">
                  
         <!-- Square card -->
          <div class="demo-card-square mdl-card mdl-shadow--2dp">
            <!-- <div class="mdl-card__title mdl-card--expand">
              <h2 class="mdl-card__title-text">Update</h2>
            </div> -->
            <div class="mdl-card__img mdl-card--expand">
               <img src=user/my/img/profile.jpg width=250 height="220">
            </div>
            <div class="mdl-card__supporting-text">
                 ID : Lorem<br>
                 성별 : MAN<br>
                 나이 : Aenan convallis.<br>
            </div>
            <div class="mdl-card__actions mdl-card--border">
              <a class="mdl-button mdl-button--colored mdl-js-button mdl-js-ripple-effect">
                   내정보 수정하기
              </a>
            </div>
          </div>
           </div>
           
              <div class="col-md-8">
         <div class="row" style="margin-top:50px; margin-bottom:10px">
              <div class="col-xs-6 col-sm-4"><img width="99%"  src="http://placehold.it/350x300" alt=""></div>
              <div class="col-xs-6 col-sm-4" style="margin-bottom:10px"><img width="99%"  src="http://placehold.it/350x300" alt=""></div>
              <div class="col-xs-6 col-sm-4"><img width="99%" src="http://placehold.it/350x300" alt=""></div>
         </div>
         
         <div class="row" style="margin-bottom:10px">
              <div class="col-xs-6 col-sm-4" style="margin-bottom:10px"><img width="99%" src="http://placehold.it/350x300" alt=""></div>
              <div class="col-xs-6 col-sm-4" style="margin-bottom:10px"><img width="99%" src="http://placehold.it/350x300" alt=""></div>
              <div class="col-xs-6 col-sm-4"><img width="99%" src="http://placehold.it/350x300" alt=""></div>
         </div>
           
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
  </div>
  
  <div class="mdl-tabs__panel" id="board-panel" style="margin-top:10px">
    <div class="material-icons">account_box</div>
    id <span class="label label-success">2016년 4월 5일 투어참가</span><br>
         한줄리뷰

  </div>
 
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