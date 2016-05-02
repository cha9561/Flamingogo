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
	<a  href="javascript:parent.openGuideBook('121011002','바르셀로나')"><img border=0 src="http://static.flickr.com/1237/1463345985_68900baa93_s.jpg" width="75"></a>
	<div style="background:#353535;width:75px;height:15px;padding-top:5px;"><a  href="javascript:parent.openGuideBook('121011002','바르셀로나')"><font style="color:#ffffff;font-size:9pt;">가이드북</font></a></div>
</td>

	<td width="10px">&nbsp;</td>


<td width="215px" valign="top">

<table  cellpadding="0">
<tr><td height="20px">
	<a  href="javascript:parent.openGuideBook('121011002','바르셀로나')"><img border="0" src="http://www.stubbyplanner.com/images/is/flag/12101_s.gif"> <b>바르셀로나</b></a>
</td></tr>

<tr><td>스페인 북부 까딸루냐 지방의 문화, 경제적 중심지.구엘공원,
사그라다파밀리아 교회 등이 유명하다.</td></tr>

<tr><td align="left" height="25px" valign="bottom"><font style="font-size:8pt" color="#C0C0C0">스페인1위 </font></td></tr>
</table>
</td>

<td width="40px"><a href="javascript:addCity('바르셀로나','121011002','41.3878531743444','2.17001438140869','3','1|5|58|24|12');" title="이 도시를 내 루트에 추가"><img src="http://www.stubbyplanner.com/img_v8/Btn_AddCity.png"></a></td>
</tr>
</table>


<table>
	<tr><td></td></tr>

</table>
</body>
</html>