<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>


<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml" xmlns:og="http://ogp.me/ns#" xmlns:fb="http://www.facebook.com/2008/fbml">
  <head>
    <meta charset="EUC-KR">

 <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script>
<script>
function addCity(cityname,lat,lng,img)
{
	window.parent.addLatLng(lat,lng);
	window.parent.imageFun(cityname);
	window.parent.image(img);
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
<body topmargin='0' leftmargin='0' style='overflow:hidden;' scroll='no'>

<table cellpadding='0'>
<tr>

<td valign='top' width='75' align='center'>
	<a  href='javascript:parent.openGuideBook('111021005','취리히')'><img border=0 src='http://static.flickr.com/62/184685094_043aa87a21_s.jpg' width='75'></a>
	<div style='background:#353535;width:75px;height:15px;padding-top:5px;'><a  href='javascript:parent.openGuideBook('111021005','취리히')'><font style='color:#ffffff;font-size:9pt;'>가이드북</font></a></div>
</td>

	<td width='10px'>&nbsp;</td>


<td width='215px' valign='top'>

<table  cellpadding='0'>
<tr><td height='20px'>
	<a  href='javascript:parent.openGuideBook('111021005','취리히')'><img border='0' src='http://www.stubbyplanner.com/images/is/flag/11102_s.gif'> <b>취리히</b></a>
</td></tr>

<tr><td>아름다운 자연경관을 가진 국제 금융의 중심지.</td></tr>

<tr><td align='left' height='25px' valign='bottom'><font style='font-size:8pt' color='#C0C0C0'>스위스3위 </font></td></tr>
</table>
</td>

<td width='40px'><a href="javascript:addCity('취리히','47.3691175247919','8.53817939758301','http://static.flickr.com/62/184685094_043aa87a21_s.jpg');" title='이 도시를 내 루트에 추가'><img src='http://www.stubbyplanner.com/img_v8/Btn_AddCity.png'></a></td>
</tr>
</table>


<table>
	<tr><td></td></tr>

</table>

</body>
</html>