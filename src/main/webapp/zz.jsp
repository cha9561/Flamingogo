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
	window.parent.addCity(cityname,cityserial,lat,lng,a,b);
}
function addSpot(spotname,spotserial,lat,lng,imgurl,a,b)
{
	window.parent.addSpot(spotname,spotserial,lat,lng,imgurl,a,b);
}
</script>
<style>
a,b,div,td,p
{
	font-family:'����'
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

<div style="position:absolute;top:0px;left:50px;z-index:99">
	<img src="/img_v8/RecommendedStamp.png">
</div>
<div style="height:20px;font-size:9pt;color:#26276f;padding-left:115px;padding-top:5px;">3037&nbsp;���� ���� �������� �����߽��ϴ�.</div>

<table cellpadding="0">
<tr>

<td valign="top" width="75" align="center">
	<a  href="javascript:parent.openGuideBook('111061003','Ƕ��')"><img border=0 src="http://static.flickr.com/92/250765319_9b3c4c096e_s.jpg" width="75"></a>
	<div style="background:#353535;width:75px;height:15px;padding-top:5px;"><a  href="javascript:parent.openGuideBook('111061003','Ƕ��')"><font style="color:#ffffff;font-size:9pt;">���̵��</font></a></div>
</td>

	<td width="60px">&nbsp;</td>


<td width="265px" valign="top">

<table  cellpadding="0">
<tr><td height="20px">
	<a  href="javascript:parent.openGuideBook('111061003','Ƕ��')"><img border="0" src="http://www.stubbyplanner.com/images/is/flag/11106_s.gif"> <b>Ƕ��</b></a>
</td></tr>

<tr><td>���ÿ��� 4km ������ ���� ����Ϸ��强�� ���̵Ǵ� ���̽��ݽ�Ÿ�μ��� �ִ�</td></tr>

<tr><td align="left" height="25px" valign="bottom"><font style="font-size:8pt" color="#C0C0C0">����6�� </font></td></tr>
</table>
</td>

<td width="40px"><a href="javascript:addCity('Ƕ��','111061003','47.5696494233996','10.7004046440124','0','83|13|2|0|0');" title="�� ���ø� �� ��Ʈ�� �߰�"><img src="/img_v8/Btn_AddCity.png"></a></td>
</tr>
</table>


</body>
</html>