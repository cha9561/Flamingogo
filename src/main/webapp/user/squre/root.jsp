<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta name="viewport" content="initial-scale=1.0, user-scalable=no"/>

<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title><script type="text/javascript" src="http://www.stubbytour.com/js/jquery-1.6.2.min.js"></script>
<script type="text/javascript" src="http://www.stubbytour.com/js/jquery-ui-1.8.16.custom.min.js"></script>
 <!-- Le styles -->
        <link href="../../bootstrap_notable.css" rel="stylesheet">
<style>
	body
	{overflow:hidden;}
</style>



<script>
	function inicallback()
	{
		
			document.getElementById("if_map").src="/plan/step2_multiple_map.asp";
		
	}
	function ini()
	{
		var t=setTimeout("inicallback()",100);
	}

</script>
</head>
<body onload="ini();">
<table cellpadding="0" cellspacing="0">
<tr><td><textarea name="cities" id="textbox_map" onkeyup="drawmap()" onblur="onblur_drawmap()" style="width:538px;height:54px;background-color:#ffffff;border:1px solid #b5b5b5;font-size:20px;font-family:굴림;color:#000000;text-align:center;vertical-align:middle"></textarea></td></tr>
<tr><td>
	<table width="540px" cellpadding="0" width="100%"><tr>
		<td width="320px"><font style="font-size:8pt" color="#8a8a8a">도시이름 사이는 쉼표로 구분해 주세요.&nbsp;&nbsp;예)파리,로마,런던</font></td>
		<td align="right">
			<table cellpadding="0"><tr>					
			<td><a href="javascript:showCities('best')" class="btn small">주요도시</a></td>
			<td><a href="javascript:showCities('all');" class="btn small">모든도시</a></td>
			</tr></table>
		</td>
	</tr></table>
</td></tr>
<!---Start Map---->
<tr><td>
	<div id="smap"  style="border:1px solid #b5b5b5;height:315px;width:542px;text-align:center">
		<iframe id="if_map" src="/plan/step2_multiple_map.asp?forattach=1" scrolling="no" frameborder="0" height="315px" width="540px"></iframe>
	</div>
</td></tr>
<!----End Map---->
</table>

<div style="text-align:center;margin-top:15px">
	    	<a href="javascript:attachedRoute();" class="btn primary">첨부하기</a>
	    	<a href="javascript:parent.closeModal();" class="btn">취소</a>
</div>
<script>
var srcserials="";
var mapurl="";

var mobile = (/iphone|ipad|ipod|android|blackberry|mini|windows\sce|palm/i.test(navigator.userAgent.toLowerCase()));

$(function() {
	$( "input:submit, a, button", ".btn" ).button({ icons: {primary:'ui-icon-carat-1-s'} }); 
});
 

function next()
{
	if($("#textbox_map").val()=="")
	{
		alert("하나 이상의 도시이름을 입력하세요.");
		$("#textbox_map").focus();
		return;
	}
	document.form.submit();
}
function showCities(t)
{
	if(t=="best")
		document.getElementById('if_map').src='/plan/step2_multiple_map.asp?opt=BEST&cities='+escape(document.getElementById("textbox_map").value);
	else if(t=="all")
		document.getElementById('if_map').src='/plan/step2_multiple_map.asp?opt=ALL&cities='+escape(document.getElementById("textbox_map").value);

}
function setcities(k)
{
	if($("#textbox_map").val()==''||confirm("입력된 도시이름들이 삭제되고 선택하신 루트의 도시들이 입력됩니다. 계속하시겠습니까?"))
	{
		$("#textbox_map").text(unescape(k));
		force_drawmap();
	}
}
function addcity(k)
{
	var nk=$("#textbox_map").val();
	if(nk!='')
		nk+=',';
	nk+=unescape(k);

	$("#textbox_map").text(nk);
	force_drawmap();
}
function drawmap()
{
	if(!mobile)
		force_drawmap();
}
function onblur_drawmap()
{
	if(mobile)
		force_drawmap();
}
function force_drawmap()
{
	document.getElementById("if_map").src='/plan/step2_multiple_map.asp?forattach=1&cities='+escape($("#textbox_map").val());
}
function attachedRoute()
{

	parent.attachedRoute(srcserials,mapurl);
}
function closeMap()
{
	parent.closeMap();
}
</script>
</body>
</html>
