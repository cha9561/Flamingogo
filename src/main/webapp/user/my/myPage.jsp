<%@ page language="java" contentType="text/html; charset=EUC-KR"
   pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<%-- <<<<<<< HEAD
<head>
	<meta http-equiv="X-UA-Compatible" content="IE=edge; charset=utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">
    
	<title>�����ǰ �󼼺���</title>

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
=======
<head>	
	 <meta charset="EUC-KR" />
	<meta name="viewport" content="width=device-width, initial-scale=1.0" />
	<title>플라밍고</title>
	<link href="//maxcdn.bootstrapcdn.com/font-awesome/4.1.0/css/font-awesome.min.css" rel="stylesheet">
	<link rel="stylesheet" href="css/basicstyle.css" />
	<script type="text/javascript" src="js/prefixfree.min.js"></script>
	<!--mdlfont -->
	<link rel="stylesheet"
		  href="https://fonts.googleapis.com/icon?family=Material+Icons">
	<!-- mdl js-->
	<script defer src="https://code.getmdl.io/1.1.3/material.min.js"></script>
	<script type="text/javascript" src="js/prefixfree.min.js"></script>
	<script type="text/javascript" src="http://code.jquery.com/jquery.js"></script>
	<!--mdl css-->
	<link rel="stylesheet"
		  href="https://code.getmdl.io/1.1.3/material.indigo-pink.min.css">


>>>>>>> refs/heads/heera
</head>
<body>
<<<<<<< HEAD
	<!-- Page Content -->
    <div class="container" style="margin-top:50px">

        <!-- product imformation -->
        <div class="mdl-tabs mdl-js-tabs mdl-js-ripple-effect">
		  <div class="mdl-tabs__tab-bar">
		    <a href="#about-panel" class="mdl-tabs__tab is-active">����������</a>
		    <a href="#members-panel" class="mdl-tabs__tab">�÷���</a>
		    <a href="#albums-panel" class="mdl-tabs__tab">���ø���Ʈ</a>
		    <a href="#board-panel" class="mdl-tabs__tab">���Ǳ�</a>
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
		        	���� : MAN<br>
		        	���� : Aenan convallis.<br>
		      </div>
		      <div class="mdl-card__actions mdl-card--border">
		        <a class="mdl-button mdl-button--colored mdl-js-button mdl-js-ripple-effect">
		          	������ �����ϱ�
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
    id <span class="label label-success">2016�� 4�� 5�� ��������</span><br>
         ���ٸ���

  </div>
  
  <div class="mdl-tabs__panel" id="albums-panel" style="margin-top:10px">
	
	<table id="table_content" class="reply_table">
     <tr>
      <td colspan="2">
        <form method="post" action="reply_insert.do" id="rifrm">
         <input type="hidden" name="bno" value="${vo.no }">
         <input type="hidden" name="page" value="${page}">
         <textarea rows="10" cols="150" name="reply_data"  id="reply_data"></textarea>
         <input type=button value="�����ϱ�" id="replyBtn"  class="mdl-button mdl-js-button mdl-button--raised mdl-js-ripple-effect">
        </form>
      </td>
     </tr>
     </table>
     <hr/>
  </div>
  
  <div class="mdl-tabs__panel" id="board-panel" style="margin-top:10px">
    <div class="material-icons">account_box</div>
    id <span class="label label-success">2016�� 4�� 5�� ��������</span><br>
         ���ٸ���

  </div>
 
 </div>
</div>
	</div>
    <!-- /.container -->

    <!-- jQuery -->
    <script src="user/main/js/jquery.js"></script>

    <!-- Bootstrap Core JavaScript -->
    <script src="user/main/js/bootstrap.min.js"></script>
=======
<h3>야</h3>
<!-- <div id="wrap">

	<section>
		<article>			
			<div class="bg bg1">		
				<span>Maldives</span>
			</div>			
		</article>
		
		<article>		
			<div class="txt">
				<i class="fa fa-arrow-right"></i>
				<p>
					<strong>A Whole New World</strong><br />
					<em>왜안돼</em>
				</p>
			</div>	
		</article>
		
		<article>			
			<div class="txt">	
				<i class="fa fa-spin fa-refresh"></i>
				<p><strong>Reservation</strong></p>
			</div>	
		</article>
		
		<article>
			<div class="bg bg2">
				<span>Suite</span>
			</div>	
		</article>
		
		<article>
			<div class="bg bg3">
				<span>Surf</span>
			</div>	
		</article>
		
		<article>	
			<div class="txt">	
				<i class="fa fa-arrow-right"></i>
				<p>
					<strong>A Dazzling Place</strong><br />
					<em>I can show you the world. Shining Shimmering Splended.<br />
					Tell me when you decide .</em>
				</p>
			</div>	
		</article>
		
		<article>
			<div class="bg bg4">
				<span>Sauna</span>
			</div>
		</article>
		
		<article>	
			<div class="txt">	
				<i class="fa fa-arrow-right"></i>
				<strong>Hot spot</strong><br />
				<em>a best place to have a vacation <br />
				Tell me when you</em>
			</div>	
		</article>
		
		<article>		
			<div class="bg bg5">
				<span>Diner</span>
			</div>
		</article>
		
		<article>	
			<div class="bg bg6">
				<span>Spa</span>
			</div>	
		</article>
		
		<article>
			<div class="txt">	
				<i class="fa fa-arrow-right"></i>
				<p>
					<strong>Open Space</strong><br />
					<em>I Can show you the world</em>
				</p>
			</div>	
		</article>
		
		<article>	
			<div class="bg bg7">
				<span>Tour</span>
			</div>		
		</article>
		
	</section>
	</div> -->
>>>>>>> refs/heads/heera
</body>
</html> --%>