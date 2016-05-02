<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>




<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml" xmlns:og="http://ogp.me/ns#" xmlns:fb="http://www.facebook.com/2008/fbml">
  <head>
    <meta charset="utf-8">

 <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script>
<script>
/*
function addCity(cityname,cityserial,lat,lng,a,b)
{
	window.parent.addCity(cityname,cityserial,lat,lng,a,b);
}
*/
/*
function addSpot(spotname,spotserial,lat,lng,imgurl,a,b)
{
	window.parent.addSpot(spotname,spotserial,lat,lng,imgurl,a,b);
} */
function addCity(cityname,cityserial,lat,lng,a,b)
{
	window.parent.addLatLng(lat,lng);
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
	<a  href="javascript:parent.openGuideBook('121011001','그라나다')"><img border=0 src="http://farm1.static.flickr.com/37/90146697_cc60f07deb_s.jpg" width="75"></a>
	<div style="background:#353535;width:75px;height:15px;padding-top:5px;"><a  href="javascript:parent.openGuideBook('121011001','그라나다')"><font style="color:#ffffff;font-size:9pt;">가이드북</font></a></div>
</td>

	<td width="10px">&nbsp;</td>


<td width="215px" valign="top">

<table  cellpadding="0">
<tr><td height="20px">
	<a  href="javascript:parent.openGuideBook('121011001','그라나다')"><img border="0" src="http://www.stubbyplanner.com/images/is/flag/12101_s.gif"> <b>그라나다</b></a>
</td></tr>

<tr><td>이슬람문화의 흔적이 뚜렷하게 남아있는곳. 알함브라궁전이 유명하다.</td></tr>

<tr><td align="left" height="25px" valign="bottom"><font style="font-size:8pt" color="#C0C0C0">스페인3위 </font></td></tr>
</table>
</td>

<td width="40px"><a href="javascript:addCity('그라나다','121011001','37.1763210689763','-3.5980224609375','1','7|72|19|4|1');" title="이 도시를 내 루트에 추가"><img src="http://www.stubbyplanner.com/img_v8/Btn_AddCity.png"></a></td>
</tr>
</table>


</body>
</html>