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
	font-family:'µ¸¿ò'
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
	<a  href="javascript:parent.openGuideBook('111081001','ºê·ò¼¿')"><img border=0 src="http://static.flickr.com/59/217112080_5dbcb9a8ff_s.jpg" width="75"></a>
	<div style="background:#353535;width:75px;height:15px;padding-top:5px;"><a  href="javascript:parent.openGuideBook('111081001','ºê·ò¼¿')"><font style="color:#ffffff;font-size:9pt;">°¡ÀÌµåºÏ</font></a></div>
</td>

	<td width="10px">&nbsp;</td>


<td width="215px" valign="top">

<table  cellpadding="0">
<tr><td height="20px">
	<a  href="javascript:parent.openGuideBook('111081001','ºê·ò¼¿')"><img border="0" src="http://www.stubbyplanner.com/images/is/flag/11108_s.gif"> <b>ºê·ò¼¿</b></a>
</td></tr>

<tr><td>º§±â¿¡ÀÇ ¼öµµ. ¿ÀÁÜ½Î°Ô ¼Ò³â µ¿»ó°ú ½ÃÃ»»ç ¾ß°æ, È«ÇÕ ¿ä¸®°¡ À¯¸íÇÏ´Ù.</td></tr>

<tr><td align="left" height="25px" valign="bottom"><font style="font-size:8pt" color="#C0C0C0">º§±â¿¡1À§ </font></td></tr>
</table>
</td>

<td width="40px"><a href="javascript:addCity('ºê·ò¼¿','111081001','50.8466245793837','4.3511438369751','1','18|68|14|2|0');" title="ÀÌ µµ½Ã¸¦ ³» ·çÆ®¿¡ Ãß°¡"><img src="http://www.stubbyplanner.com/img_v8/Btn_AddCity.png"></a></td>
</tr>
</table>


</body>
</html>