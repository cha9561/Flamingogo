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
    
	<title></title>

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
<script type="text/javascript" src="http://code.jquery.com/jquery.js"></script>
<script type="text/javascript" src="ajax.js"></script>
<script type="text/javascript">
$(function(){
	$('#btn2').click(function(){
			$('#add_frm').submit();
	});
});
/* function addCallback()
{
	if(httpRequest.readyState==4)
	{
		if(httpRequest.status==200)
		{
			//alert(httpRequest.responseText);
			$('#add').html(httpRequest.responseText);
		}
	}
} */
</script>
<style>
img:HOVER {
 cursor: pointer;
}
</style>
<style>
a{
  text-decoration: none;
}
a:HOVER {
	text-decoration: none;
}
</style>	
</head>
<body>
	<c:if test="${count==0 }">
		<button class="mdl-button mdl-js-button mdl-button--accent" id="btn2">ÂòÇÏ±â</button>
		</c:if>
		<c:if test="${count>0 }">
		<a href="#" class="mdl-badge" data-badge="¢½" id="jjim2">ÂòÇÏ±â</a>
	</c:if>
	
	<%-- <c:if test="${count==0 }">
		<a href="#" class="mdl-badge mdl-badge--no-background" data-badge="¢½" id="jjim1">ÂòÇÏ±â</a>
		</c:if>
		<c:if test="${count>0 }">
		<a href="#" class="mdl-badge" data-badge="¢½" id="jjim2">ÂòÇÏ±â</a>
	</c:if> --%>
	
	<%-- <c:if test="${count==0 }">
	<img src="user/tour/img/add.png" id="jjim1">
	</c:if>
	<c:if test="${count==2 }">
	<img src="user/tour/img/add_ok.png" id="jjim2">
	</c:if>  --%>
	
	
</body>
</html>