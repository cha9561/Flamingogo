<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<link rel="stylesheet" type="text/css" href="table.css">
<link href="user/main/css/bootstrap.min.css" rel="stylesheet">
<link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
<link rel="stylesheet" href="https://code.getmdl.io/1.1.3/material.indigo-pink.min.css">
<script type="text/javascript" src="http://code.jquery.com/jquery.js"></script>
<style>
#wrt
{
	border: 3px solid black;
}
</style>
<script type="text/javascript">
$(function(){
	var myId = "<%=(String) session.getAttribute("id")%>"
	var ssex= "<%=(String) session.getAttribute("sex")%>"
	var sex
	if(ssex == "����")
		sex=1;
	else
		sex=2;
	$('#myId').val(myId);
	$('#sex').val(sex);
	
	$('#writeBtn').click(function(){
		var content=$('#content').val();
		if (content.trim() == "") 
		{
			$('#content').focus();
			alert("���� �Է��ϼ���!");
			return;
		}
		$('#squreIns').submit();
	});
	$('.reBtn').click(function(){
		var id=$(this).attr('id');
		var no=id.substring(5);
		$('#reId'+no).val(myId);
		$('#reSex'+no).val(sex);
		$('#rootNo'+no).val(no);
		var data=$('#re'+no).val();
		if(data.trim()=="")
		{
			$('#re'+no).focus();
			alert("����� �Է��ϼ���!");
			return;
		}
		$('#reIns'+no).submit();
	});
	/* $('.ruBtn').click(function(){
		var id=$(this).attr('id');
		var no=id.substring(3);
		
		var data=$('#rd'+no).val();
		if(data.trim()=="")
		{
			$('#rd'+no).focus();
			return;
		}
		$('#frm'+no).submit();
	});
	
	$('.reBtn').click(function(){
		var id=$(this).attr('id');
		var no=id.substring(3);
		alert("no : "+no)
		$('#rootNo'+no).val(no);
		alert("zzz")
		var data=$('#re'+no).val();
		if (data.trim() == "") {
			$('.reContent').focus();
			alert("����� �Է��ϼ���!");
			return;
		}
		$('#reIns').submit();
	});  */
});
</script>
</head>
<body>
<ul class="nav nav-tabs">
  <li role="presentation" class="active"><a href="#">��ü</a></li>
  <li role="presentation"><a href="#">����</a></li>
  <li role="presentation"><a href="#">��������</a></li>
  <li role="presentation"><a href="#">����ã��</a></li>
  <li role="presentation"><a href="#">����</a></li>
</ul>
<div class="row">
  <div class="col-md-6">
  	<form method="post" action="squreInsert.do" id="squreIns">
  	<table class="table">
      	<tr>
      		<td width=100%>�۾���
      		<input id="myId" name=myId type="hidden">
      		<input id="sex" name=sex type="hidden">
      		<textarea class="form-control" rows="4" name=content id="content"></textarea>
      		</td>
      	</tr>
	</table>
		<span style="float:right;">
			<select name="subject" id="subject"  style="width:110px;">
				<option value="QNA">����</option>
				<option value="INF">��������</option>
				<option value="FND">����ã��</option>
				<option value="FRE">����</option>
			</select>
			&nbsp;<input type=button id="writeBtn" value=�۾���>
			</span>
	</form>
	<c:forEach var="vo" items="${list}">
		<form method="post" action="reInsert.do" id="reIns${vo.no }">
	  	<table class="table">
	  		<tr>
				<td width=10% class="tdcenter">
					<input id="rootNo${vo.no }" name=rootNo type="hidden">
					<c:if test="${vo.sex == 1}">
						<img src="user/squre/img/man.PNG" width="80" height="80">
					</c:if>
					<c:if test="${vo.sex == 2}">
						<img src="user/squre/img/wom.PNG" width="80" height="80">
					</c:if>
				</td>
				<td width=10% class="tdleft">${vo.userId }</td>
				<td width=80% class="tdleft">
					<img src="user/squre/img/${vo.subject }.PNG">
				</td>
			</tr>
			<tr>
	        	<td colspan=4 class="tdleft" valign="top" height=100>
	          		<pre>${vo.content }</pre>
	          		<c:if test="${vo.userId == sessionScope.id}">
	          			<a href="squreDel.do?no=${vo.no }">
	          				<input class="btn btn-default reBtn" id="sDelBtn" type=button value=�����ϱ�>
	          			</a>
	        			<!-- <button class="btn btn-default" type="submit" id="sDelBtn" style="font-color:red">�����ϱ�</button> -->
	        		</c:if>
	        		<c:if test="${vo.userId != sessionScope.id}">
	          			<button class="btn btn-default" type="submit" style="font-color:red">��õ�ϱ�</button>
	          		</c:if>
	          		��õ�� : ${vo.hit } �ۼ��� : ${vo.regdate }
	          		<br>
	          		<input id="reId${vo.no }" name=reId type="hidden">
	     			<input id="reSex${vo.no }" name=reSex type="hidden">
	     			<c:forEach var="rvo" items="${rlist}">
	     				<c:if test="${rvo.rootNo == vo.no}">
	     					<c:if test="${rvo.sex == 1}">
	     						<c:if test="${rvo.id != sessionScope.id}">
	          						<img src="user/squre/img/man.PNG" width="35" height="35">${rvo.id }&nbsp;��õ�� :${rvo.hit }&nbsp;�ۼ��� :${rvo.regdate }&nbsp;<input type=button id="reRecoBtn" value=��õ>
	          					</c:if>
	          					<c:if test="${rvo.id == sessionScope.id}">
	          						<img src="user/squre/img/man.PNG" width="35" height="35">${rvo.id }&nbsp;��õ�� :${rvo.hit }&nbsp;�ۼ��� :${rvo.regdate }&nbsp;<a href="reviewDel.do?no=${rvo.no }"><input type=button id="reDelBtn" value=����></a>
	          					</c:if>
	          				</c:if>
	          				<c:if test="${rvo.sex == 2}">
	          					<c:if test="${rvo.id != sessionScope.id}">
	          						<img src="user/squre/img/wom.PNG" width="35" height="35">${rvo.id }&nbsp;��õ�� :${rvo.hit }&nbsp;�ۼ��� :${rvo.regdate }&nbsp;<input type=button id="reRecoBtn" value=��õ>
	          					</c:if>
	          					<c:if test="${rvo.id == sessionScope.id}">
	          						<img src="user/squre/img/wom.PNG" width="35" height="35">${rvo.id }&nbsp;��õ�� :${rvo.hit }&nbsp;�ۼ��� :${rvo.regdate }&nbsp;<input type=button id="reDelBtn" value=����>
	          					</c:if>
	          				</c:if>
	          				<pre>${rvo.content }</pre>
	          			</c:if>
	          		</c:forEach>
	          		&nbsp;&nbsp;<textarea class="form-control reContent" rows="1" id="re${vo.no }" name="reContent"></textarea><br>
	     			<input class="btn btn-default reBtn" id="reBtn${vo.no }" type=button value=��۴ޱ�>
	        	</td>
	      	</tr>
	     </table>
	     </form>
	     <br><br>
     </c:forEach>
  </div>
  <div class="col-md-4">.col-md-4</div>
</div>
<div class="row">
  <div class="col-md-6">.col-md-6</div>
  <div class="col-md-4">.col-md-4</div>
</div>
</body>
</html>