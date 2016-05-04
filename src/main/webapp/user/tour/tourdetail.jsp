<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>     
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
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
    
<script type="text/javascript">
$(function(){
	$('#btn1').click(function(){
		$('#frm1').submit();
	});
});
</script>
</head>
<body>
	<!-- Page Content -->
    <div class="container">

        <!-- Portfolio Item Heading -->
        <div class="row">
            <div class="col-lg-12">
             <table>
              <tr>
               <td width=80%>
                <h3 class="page-header">${vo.pname}</h3>
               </td>
               <td width=20% align=center>
             	<button class="mdl-button mdl-js-button mdl-button--raised mdl-js-ripple-effect" onclick="javascript:history.back()">
             	�ڷΰ���</button>
               </td>
              </tr>
             </table>
            </div>
        </div>
        <!-- /.row -->

        <!-- Portfolio Item Row -->
        <div class="row">

            <div class="col-md-7">
                <img class="img-responsive" src="${vo.pic }" width="90%" alt="">
            </div>

            <div class="col-md-5">
                <h4>"${vo.psubname }"</h4>
                <span class="label label-success">�����ڽ�</span>
                <p>${vo.course }</p>
                <p><span class="glyphicon glyphicon-tag" aria-hidden="true"></span>���۽ð� & �ҿ�ð� : </p>
                <p>${vo.time }</p>
                <p>${vo.info }</p>
				
            <hr/>
            
          	<strike>${vo.pinfo }</strike>
			<p><font color=red>������ �İݰ�</font><br>
			<font color=red>${vo.pinfo }</font><br>
			<font color=#a0a0a0>���ΰ�: 21����+���� 2����(2������) </font><br>
			<font color=#a0a0a0>3~4�� 20����, 5�� 40���� �߱���߻�</font>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <c:if test="${sessionScope.id!=null and sessionScope.admin!=1}">
			<form method="post" action="reserve.do" id="frm1">
				<input type="hidden" name="pno" id="pno" value="${vo.pno}">
				<input type="hidden" name="pname" id="pname" value="${vo.pname}">
				<input type="hidden" name="price" id="price" value="${vo.price}">
				<input type="hidden" name="category" id="category" value="${vo.category}">
				<button class="mdl-button mdl-js-button mdl-button--raised" id="btn1">�����ϱ�</button>
			</form>
			</c:if>

				
			</p>
			</div>
        </div>
        <!-- /.row -->

        <!-- product imformation -->
        <div class="mdl-tabs mdl-js-tabs mdl-js-ripple-effect">
  <div class="mdl-tabs__tab-bar">
    <a href="#about-panel" class="mdl-tabs__tab is-active">�Ұ�</a>
    <a href="#members-panel" class="mdl-tabs__tab">����</a>
    <a href="#albums-panel" class="mdl-tabs__tab">����</a>
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
			�����̼�
			&nbsp;
		</h2>
                        <p>
		��ī�� õ���� ���̶�� ���� ���� �����̼���  ���������� ���� �����μ� ������ �Ϻ��� �긣������ �븣������ ��迡 ��ġ�ϰ� �ִ�. �����̼��� ���ֱ����� �� �������� �ڽ��� �� �ӿ��� ��ī�� õ���� ���ø� �ް� 708�� �������� �����ϱ� �����Ͽ� ������ ����� ���߱���� �� 800���� ������ ���� �ϼ��Ǿ���. �� �� �̰��� �Ŵ��� ���������� �߽��� ���ְ� ���ڱ� �з���� �ٴ幰�� ������ �ǳ� ���� ���� �����ڵ��� ����� �ұ⵵ �ߴ�. ��� ������ �Ͼ 14���⿡�� �����Ҷ��� ����μ��� ������ �Ͽ���, ������ ���� ���� 100�⵿�� �������� ���̱⵵ �Ͽ���. 1874�� �������� 3���� ���Ͽ� �ٽ� ���׵�Ʈ ����ȸ�� ���Ǿ����� 1979�� ���׽��� ���� ��ȭ �������� �����Ǿ���. �Ϸ翡 �ι��� ������ ������ ���ϴ� �ź�ο� ����� �븣������ ���� ǳ���� ������ �� �ִ� �ְ��� ����̴�.
		</p>
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
  
</div>
</div>

    <!-- /.container -->

    <!-- jQuery -->
    <script src="user/main/js/jquery.js"></script>

    <!-- Bootstrap Core JavaScript -->
    <script src="user/main/js/bootstrap.min.js"></script>
</body>
</html>