<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>




<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml" xmlns:og="http://ogp.me/ns#" xmlns:fb="http://www.facebook.com/2008/fbml">
  <head>
    <meta charset="utf-8">

 <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script>
<script>
function addCity(cityname,lat,lng,img)
{
	window.parent.addLatLng(lat,lng);
	window.parent.imageFun(cityname);
	window.parent.image(img);
	//alert("image->"+image);
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
	<a  href="javascript:parent.openGuideBook('131061001','두브로브니크')"><img border=0 src="http://farm1.static.flickr.com/31/65812287_76456e16c7_s.jpg" width="75"></a>
	<div style="background:#353535;width:75px;height:15px;padding-top:5px;"><a  href="javascript:parent.openGuideBook('131061001','두브로브니크')"><font style="color:#ffffff;font-size:9pt;">가이드북</font></a></div>
</td>

	<td width="10px">&nbsp;</td>


<td width="215px" valign="top">

<table  cellpadding="0">
<tr><td height="20px">
	<a  href="javascript:parent.openGuideBook('131061001','두브로브니크')"><img border="0" src="http://www.stubbyplanner.com/images/is/flag/13106_s.gif"> <b>두브로브니크</b></a>
</td></tr>

<tr><td>아드리아해의 진주, 동유럽 최고의 휴양지 중 하나</td></tr>

<tr><td align="left" height="25px" valign="bottom"><font style="font-size:8pt" color="#C0C0C0">크로아티아1위 </font></td></tr>
</table>
</td>

<td width="40px"><a href="javascript:addCity('두브로브니크','42.64330352171567','18.105597496032715','http://farm1.static.flickr.com/31/65812287_76456e16c7_s.jpg');" title="이 도시를 내 루트에 추가"><img src="http://www.stubbyplanner.com/img_v8/Btn_AddCity.png"></a></td>
</tr>
</table>


</body>
</html>