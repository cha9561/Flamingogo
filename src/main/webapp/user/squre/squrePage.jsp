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
<script type="text/javascript">
$(function(){
	var myId = "<%=(String) session.getAttribute("id")%>"
	$('#myId').val(myId);
	alert(myId);
	$('#writeBtn').click(function(){
		var content=$('#content').val();
		if (content.trim() == "") {
			$('#content').focus();
			alert("글을 입력하세요!");
			return;
		}
		$('#squreIns').submit();
	});
});
</script>
</head>
<body>
<ul class="nav nav-tabs">
  <li role="presentation" class="active"><a href="#">전체</a></li>
  <li role="presentation"><a href="#">질문</a></li>
  <li role="presentation"><a href="#">정보공유</a></li>
  <li role="presentation"><a href="#">동행찾기</a></li>
  <li role="presentation"><a href="#">자유</a></li>
</ul>
<div class="row">
  <div class="col-md-6">
  	<form method="post" action="squreInsert.do" id="squreIns">
  	<table class="table">
      	<tr>
      		<td width=100%>글쓰기
      		<input id="myId" name=myId type="hidden">
      		<textarea class="form-control" rows="4" name=content id="content"></textarea>
      		</td>
      	</tr>
	</table>
		<span style="float:right;">
			<select name="newsType" id="newsType"  style="width:110px;">
				<option value="QNA">질문</option>
				<option value="FND">정보공유</option>
				<option value="INF">동행찾기</option>
				<option value="FRE">자유</option>
			</select>
			&nbsp;<button class="btn btn-default" type="writeBtn">글쓰기</button>
			</span>
	</form>
	<c:forEach var="vo" items="${list}">
	  	<table class="table">
	  		<tr>
				<td width=20% class="tdcenter">사진</td>
				<td width=80% class="tdleft">${vo.name }</td>
			</tr>
			<tr>
	        	<td colspan=4 class="tdleft" valign="top" height=100>
	          		<pre>${vo.subject }</pre>
	          		<button class="btn btn-default" type="submit">추천하기</button>
	        	</td>
	      	</tr>
	     </table>
	     &nbsp;&nbsp;<textarea class="form-control" rows="3"></textarea><br>
	     &nbsp;&nbsp;<button class="btn btn-default" type="submit">댓글달기</button>
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