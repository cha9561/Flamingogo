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
		<h3>����ȭ��</h3>
	</center>
		<li><a href="main.do" class="active">Home</a></li>
		<li><a href="myPage.do" class="active">����������</a></li>
		<li><a href="plannerMain.do" class="active">�÷���</a></li>
		<li><a href="recomm.do" class="active">��õ</a></li>
		<li><a href="squrePage.do" class="active">����</a></li>
		<li><a href="tour.do" class="active">����</a></li>
		
		<div>
		<jsp:include page="${jsp }"></jsp:include>
		</div>
</body>
</html>