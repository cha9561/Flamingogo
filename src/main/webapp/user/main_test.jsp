<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<center>
		<h3>메인화면</h3>
	</center>
		<li><a href="main.do" class="active">Home</a></li>
		<li><a href="myPage.do" class="active">마이페이지</a></li>
		<li><a href="plannerMain.do" class="active">플래너</a></li>
		<li><a href="recomm.do" class="active">추천</a></li>
		<li><a href="squrePage.do" class="active">광장</a></li>
		<li><a href="tour.do" class="active">투어</a></li>
		
		<div>
		<jsp:include page="${jsp }"></jsp:include>
		</div>
</body>
</html>