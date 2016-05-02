<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>




<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml" xmlns:og="http://ogp.me/ns#" xmlns:fb="http://www.facebook.com/2008/fbml">
  <head>
    <meta charset="utf-8">

 <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script>
<script>
function addCity(cityname,cityserial,lat,lng,a,b)
{
	window.parent.addLatLng(lat,lng);
}
function addSpot(spotname,spotserial,lat,lng,imgurl,a,b)
{
	window.parent.addSpot(spotname,spotserial,lat,lng,imgurl,a,b);
}
</script>
<style>
a,b,div,td,p
{
	font-family:'돋움'
}
td, b
{
	font-size:9pt;
	color:gray;
}
a{
	text-decoration:none;
	color:gray;
}
a img{
	border:0px;
}
</style>
<body topmargin="0" leftmargin="0" style="overflow:hidden;" scroll="no">

<table cellpadding="0">
<tr>

<td valign="top" width="75" align="center">
	<a  href="javascript:parent.openGuideBook('111011014','마르세유')"><img border=0 src="http://static.flickr.com/140/335115545_e89614c2c5_s.jpg" width="75"></a>
	<div style="background:#353535;width:75px;height:15px;padding-top:5px;"><a  href="javascript:parent.openGuideBook('111011014','마르세유')"><font style="color:#ffffff;font-size:9pt;">가이드북</font></a></div>
</td>

	<td width="10px">&nbsp;</td>


<td width="215px" valign="top">

<table  cellpadding="0">
<tr><td height="20px">
	<a  href="javascript:parent.openGuideBook('111011014','마르세유')"><img border="0" src="http://www.stubbyplanner.com/images/is/flag/11101_s.gif"> <b>마르세유</b></a>
</td></tr>

<tr><td>오랜 역사의 항구 도시, 마르세유.부이야베스(생선 스프)' 요리로도 유명.</td></tr>

<tr><td align="left" height="25px" valign="bottom"><font style="font-size:8pt" color="#C0C0C0">프랑스9위 </font></td></tr>
</table>
</td>

<td width="40px"><a href="javascript:addCity('마르세유','111011014','43.2982603533291','5.38312911987305','0','60|24|9|3|0');" title="이 도시를 내 루트에 추가"><img src="http://www.stubbyplanner.com/img_v8/Btn_AddCity.png"></a></td>
</tr>
</table>


</body>
</html>