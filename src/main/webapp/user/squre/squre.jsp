<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
   <meta http-equiv="X-UA-Compatible" content="IE=edge; charset=utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">
    
   <title>플라밍고 - squre</title>

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

        <!-- 댓글 달기 부분 -->
        <div class="row">
        <form action="">
        <table id="table_content" class="reply_table">
         <tr>
	      <td colspan="2">
	      
	         <input type="hidden" name="bno" value="${vo.no }">
	         <input type="hidden" name="page" value="${page}">
	         <textarea rows="10" cols="150" name="reply_data"  id="reply_data"></textarea>
	         <input type=button value="문의하기" id="replyBtn"  class="mdl-button mdl-js-button mdl-button--raised mdl-js-ripple-effect">
	       
	      </td>
	     </tr>
	     </table>
	     </form>
            <div class="col-lg-12">
            <div class="col-md-1">
            </div>
  		</div>
		<!-- 댓글 달기 끝 -->

     </div>
     <hr/>
	</div>
</body>
</html>