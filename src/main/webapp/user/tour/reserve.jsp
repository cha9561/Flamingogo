<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="X-UA-Compatible" content="IE=edge; charset=utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">
    
	<title>Insert title here</title>
	
	
</head>
<script type="text/javascript" src="http://code.jquery.com/jquery.js"></script>
<script type="text/javascript" src="ajax.js"></script>
<!-- <script type="text/javascript">
$(function(){
	sendMessage("POST","tour_info.do", null, tourCallback);
});
function tourCallback()
{
	if(httpRequest.readyState==4)
	{
		if(httpRequest.status==200)
		{
			//alert(httpRequest.responseText);
			$('#tn').html(httpRequest.responseText);
		}
	}
}
</script> -->
<body>
	<!-- Page Content -->
    <div class="container" style="margin-top:50px">
    	
    	<div class="row" style="margin-top:15px">
    		<div class="col-md-12">
    			<p>예약</p>
    			<hr>
    		</div>
    	</div>
    	
    	<div class="row" style="margin-top:15px">
    		<form method="post" action="tour_date.do" id="frm1">
    		<div class="col-md-3">
    			<p>예약</p>
    			<hr>
    		</div>
    		<div class="col-md-9">
    			<p>예약</p>
    			<hr>
    		</div>
    	</div>
    	
    	<form method="post" action="reserve.do" id="frm1">
				<input type="hidden" name="pno" id="pno" value="${vo.pno}">
				<input type="hidden" name="pname" id="pname" value="${vo.pname}">
				<input type="hidden" name="category" id="category" value="${vo.category}">
				<button class="mdl-button mdl-js-button mdl-button--raised" id="btn1">예약하기</button>
			</form>
    </div>
		<table>
		
		<tr>
		 <th>
			<h3>예약</h3>
		 </th>
		</tr>
		
		<tr>
			<td id="tn">${vo.pname}</td>
 		</tr>
		
		<tr>
			<a href="rinfo.jsp">
			<button>날짜 선택</button></a>
		</tr>
		
		
		</table>
</body>
</html>