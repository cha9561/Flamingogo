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
<!-- <link rel="stylesheet" type="text/css" href="user/squre/css/screen.css" media="screen"> -->

<!-- jQuery library (served from Google) -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.8.2/jquery.min.js"></script>
<!-- bxSlider Javascript file -->
<script src="/js/jquery.bxslider.min.js"></script>
<!-- bxSlider CSS file -->
<link href="/lib/jquery.bxslider.css" rel="stylesheet"/>
<style>
#wrt
{
	border: 3px solid black;
}
</style>
<script type="text/javascript">
$(function(){
	/* $(document).ready(function(){
		$('bxslider').bxSlider({
			mode:'horizontal', //default : 'horizontal', options: 'horizontal', 'vertical', 'fade'
			speed:1000, //default:500 이미지변환 속도
			auto: true, //default:false 자동 시작
			captions: true, // 이미지의 title 속성이 노출된다.
			autoControls: true, //default:false 정지,시작 콘트롤 노출, css 수정이 필요
		});
	});	 */
	var myId = "<%=(String) session.getAttribute("id")%>"
	var ssex= "<%=(String) session.getAttribute("sex")%>"
	var sex
	if(ssex == "남자")
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
			alert("글을 입력하세요!");
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
			alert("댓글을 입력하세요!");
			return;
		}
		$('#reIns'+no).submit();
	});
});
</script>
</head>
<body>
<ul class="nav nav-tabs">
	<c:choose>
		<c:when test="${subject == 'QNA'}">
		
			  <li role="presentation"><a href="squrePage.do">전체</a></li>
			  <li role="presentation" class="active"><a href="squrePage.do?subject=QNA">질문</a></li>
			  <li role="presentation"><a href="squrePage.do?subject=INF">정보공유</a></li>
			  <li role="presentation"><a href="squrePage.do?subject=FND">동행찾기</a></li>
			  <li role="presentation"><a href="squrePage.do?subject=FRE">자유</a></li>
		</c:when>
		<c:when test="${subject == 'INF'}">
			  <li role="presentation"><a href="squrePage.do">전체</a></li>
			  <li role="presentation"><a href="squrePage.do?subject=QNA">질문</a></li>
			  <li role="presentation" class="active"><a href="squrePage.do?subject=INF">정보공유</a></li>
			  <li role="presentation"><a href="squrePage.do?subject=FND">동행찾기</a></li>
			  <li role="presentation"><a href="squrePage.do?subject=FRE">자유</a></li>
		</c:when>
		<c:when test="${subject == 'FND'}">
			  <li role="presentation"><a href="squrePage.do">전체</a></li>
			  <li role="presentation"><a href="squrePage.do?subject=QNA">질문</a></li>
			  <li role="presentation"><a href="squrePage.do?subject=INF">정보공유</a></li>
			  <li role="presentation" class="active"><a href="squrePage.do?subject=FND">동행찾기</a></li>
			  <li role="presentation"><a href="squrePage.do?subject=FRE">자유</a></li>
		</c:when>
		<c:when test="${subject == 'FRE'}">
			  <li role="presentation"><a href="squrePage.do">전체</a></li>
			  <li role="presentation"><a href="squrePage.do?subject=QNA">질문</a></li>
			  <li role="presentation"><a href="squrePage.do?subject=INF">정보공유</a></li>
			  <li role="presentation"><a href="squrePage.do?subject=FND">동행찾기</a></li>
			  <li role="presentation" class="active"><a href="squrePage.do?subject=FRE">자유</a></li>
		</c:when>
		<c:otherwise>
			  <li role="presentation" class="active"><a href="squrePage.do">전체</a></li>
			  <li role="presentation"><a href="squrePage.do?subject=QNA">질문</a></li>
			  <li role="presentation"><a href="squrePage.do?subject=INF">정보공유</a></li>
			  <li role="presentation"><a href="squrePage.do?subject=FND">동행찾기</a></li>
			  <li role="presentation"><a href="squrePage.do?subject=FRE">자유</a></li>	
		</c:otherwise>
	</c:choose>
</ul>
<div class="row">
  <div class="col-md-10">
  	<form method="post" action="squreInsert.do" id="squreIns">
  	<table class="table">
      	<tr>
      		<td width=100%>
      		<input id="myId" name=myId type="hidden">
      		<input id="sex" name=sex type="hidden">
      		<textarea class="form-control" rows="4" name=content id="content"></textarea>
      		</td>
      	</tr>
	</table>
		<span style="float:right;">
			<select name="subject" id="subject"  style="width:110px;">
				<option value="QNA">질문</option>
				<option value="INF">정보공유</option>
				<option value="FND">동행찾기</option>
				<option value="FRE">자유</option>
			</select>
			&nbsp;<input type=button id="writeBtn" value=글쓰기>
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
	          				<input class="btn btn-default reBtn" id="sDelBtn" type=button value=삭제하기>
	          			</a>
	        			<!-- <button class="btn btn-default" type="submit" id="sDelBtn" style="font-color:red">삭제하기</button> -->
	        		</c:if>
	        		<c:if test="${vo.userId != sessionScope.id}">
	        			<a href="squreRecomm.do?no=${vo.no }">
	        				<input class="btn btn-default recomBtn" id="recomBtn" type=button value=추천하기>
	        			</a>
	          		</c:if>
	          		추천수 : ${vo.hit } 작성일 : <fmt:formatDate value="${vo.regdate }" pattern="yyyy-MM-dd"/>
	          		<br>
	          		<input id="reId${vo.no }" name=reId type="hidden">
	     			<input id="reSex${vo.no }" name=reSex type="hidden">
	     			<c:forEach var="rvo" items="${rlist}">
	     				<c:if test="${rvo.rootNo == vo.no}">
	     					<c:if test="${rvo.sex == 1}">
	     						<c:if test="${rvo.id != sessionScope.id}">
	          						<img src="user/squre/img/man.PNG" width="35" height="35">${rvo.id }&nbsp;추천수 :${rvo.hit }&nbsp;작성일 :<fmt:formatDate value="${rvo.regdate }" pattern="yyyy-MM-dd"/>&nbsp;<a href="squreReRecomm.do?no=${rvo.no }"><input type=button id="reRecoBtn" value=추천></a>
	          					</c:if>
	          					<c:if test="${rvo.id == sessionScope.id}">
	          						<img src="user/squre/img/man.PNG" width="35" height="35">${rvo.id }&nbsp;추천수 :${rvo.hit }&nbsp;작성일 :<fmt:formatDate value="${rvo.regdate }" pattern="yyyy-MM-dd"/>&nbsp;<a href="reviewDel.do?no=${rvo.no }"><input type=button id="reDelBtn" value=삭제></a>
	          					</c:if>
	          				</c:if>
	          				<c:if test="${rvo.sex == 2}">
	          					<c:if test="${rvo.id != sessionScope.id}">
	          						<img src="user/squre/img/wom.PNG" width="35" height="35">${rvo.id }&nbsp;추천수 :${rvo.hit }&nbsp;작성일 :<fmt:formatDate value="${rvo.regdate }" pattern="yyyy-MM-dd"/>&nbsp;<a href="squreReRecomm.do?no=${rvo.no }"><input type=button id="reRecoBtn" value=추천></a>
	          					</c:if>
	          					<c:if test="${rvo.id == sessionScope.id}">
	          						<img src="user/squre/img/wom.PNG" width="35" height="35">${rvo.id }&nbsp;추천수 :${rvo.hit }&nbsp;작성일 :<fmt:formatDate value="${rvo.regdate }" pattern="yyyy-MM-dd"/>&nbsp;<input type=button id="reDelBtn" value=삭제>
	          					</c:if>
	          				</c:if>
	          				<pre>${rvo.content }</pre>
	          			</c:if>
	          		</c:forEach>
	          		&nbsp;&nbsp;<textarea class="form-control reContent" rows="1" id="re${vo.no }" name="reContent"></textarea><br>
	     			<input class="btn btn-default reBtn" id="reBtn${vo.no }" type=button value=댓글달기>
	        	</td>
	      	</tr>
	     </table>
	     </form>
	     <br><br>
     </c:forEach>
  </div>
  <!-- <div class="col-md-4" id="slider">
	  <ul class="bxslider">              
	    <li><img alt="" src="user/squre/img/cha.jpg"></li>
	    <li><img alt="" src="user/squre/img/test.jpg"></li>
	  </ul>
  </div> -->
 </div>
<!-- <div class="row">
  <div class="col-md-6">.col-md-6</div>
  <div class="col-md-4">.col-md-4</div>
</div> -->
</body>
</html>