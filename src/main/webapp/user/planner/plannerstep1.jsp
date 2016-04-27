<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>


<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml" xmlns:og="http://ogp.me/ns#" xmlns:fb="http://www.facebook.com/2008/fbml">
  <head>
    <meta charset="EUC-KR">

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
	<a  href="javascript:parent.openGuideBook('111021005','취리히')"><img border=0 src="http://static.flickr.com/62/184685094_043aa87a21_s.jpg" width="75"></a>
	<div style="background:#353535;width:75px;height:15px;padding-top:5px;"><a  href="javascript:parent.openGuideBook('111021005','취리히')"><font style="color:#ffffff;font-size:9pt;">가이드북</font></a></div>
</td>

	<td width="10px">&nbsp;</td>


<td width="215px" valign="top">

<table  cellpadding="0">
<tr><td height="20px">
	<a  href="javascript:parent.openGuideBook('111021005','취리히')"><img border="0" src="http://www.stubbyplanner.com/images/is/flag/11102_s.gif"> <b>취리히</b></a>
</td></tr>

<tr><td>아름다운 자연경관을 가진 국제 금융의 중심지.</td></tr>

<tr><td align="left" height="25px" valign="bottom"><font style="font-size:8pt" color="#C0C0C0">스위스3위 </font></td></tr>
</table>
</td>

<td width="40px"><a href="javascript:addCity('취리히','111021005','47.3691175247919','8.53817939758301','1','30|64|7|2|0');" title="이 도시를 내 루트에 추가"><img src="http://www.stubbyplanner.com/img_v8/Btn_AddCity.png"></a></td>
</tr>
</table>


<table>
	<tr><td></td></tr>

</table>
<script>
function compareAirTicket(tt,thedate,term)
{
	FirstCity='111021005';
	LastCity='111021005';

	var indate=thedate;
	var xx = new Date(indate);
	var thedate_out=new Date();
	if(term=="")
	         term=7;

	if(term>0)
		term=term;
	else
		term=4;
	thedate_out.setDate(xx.getDate()+term);
	var outdate = getFormattedDate(thedate_out);
	indate_nobar=indate.replace(/-/g,'');
	outdate_nobar=outdate.replace(/-/g,'');


	if(tt=="F")
		window.open("/plan/trs_deeplink.asp?lang=ko&date_all="+indate_nobar+"&TRSType=3&depserial=161031001&desserial="+FirstCity);
	else if(tt=="R")
		window.open("/plan/trs_deeplink.asp?lang=ko&date_all="+outdate_nobar+"&TRSType=3&depserial="+LastCity+"&desserial=161031001");
	else
		window.open("/plan/trs_deeplink.asp?lang=ko&date_all="+indate_nobar+"&rt_date_all="+outdate_nobar+"&TRSType=5&depserial=161031001&desserial="+FirstCity);


}
function getFormattedDate(date) {
  var year = date.getFullYear();
  var month = (2 + date.getMonth()).toString();
if (month>12)
{
	year++;
	month=month-12;
}
  month = month.length > 1 ? month : '0' + month;
  var day = date.getDate().toString();
  day = day.length > 1 ? day : '0' + day;
  return year + '-' + month + '-' + day;
}
function trslink(trstype,dep,des)
{
	var thedate=$("#thedate").val();
	thedate_nobar=thedate.replace("-","").replace("-","");
	window.open('/plan/trs_deeplink.asp?lang=ko&date_all='+thedate_nobar+'&TRSType='+trstype+'&depserial='+dep+'&desserial='+des);
}

function getAirPrice(id,des,isroundtrip,indate,term)
{
	var air_price_sum=0;
	
	var xx = new Date(indate);
	//var thedate_out=new Date();

	if(term>0)
		term=term;
	else
		term=4;

	//thedate_out.setDate(xx.getDate()+term);
	var thedate_out=new Date(xx.getTime() + term * 24 * 60 * 60 * 1000 - 30* 24 * 60 * 60 * 1000);
	var outdate = getFormattedDate(thedate_out);


	var txt_cur="만원";
	if(isroundtrip)
	{
	                $.ajax({
	               	     url: 'http://www.tripgene.com/api/getairprice.php?indate='+indate+'&outdate='+outdate+'&lang=ko&i='+des+'&o='+des,
	               	     dataType: 'jsonp',
	               	     success: function(data){
			$("#"+id).html('<a href="javascript:compareAirTicket(\'X\',\''+indate+'\','+term+')" style="color:#ffffff;font-family:돋움;font-size:8pt;">가격비교</a>');
			if(data!="")
			{
				if(data>0)
				{
					$("#"+id).html('<a href="javascript:compareAirTicket(\'X\',\''+indate+'\','+term+')" style="color:#fff">'+data+txt_cur+'</a>');
				}
			}
		      }
		 });
	}
	else
	{
                	$.ajax({
               		     url: 'http://www.tripgene.com/api/getbestprice.php?thedate='+indate+'&lang=ko&trstype=air&dep=161031001&des='+des,
               		     dataType: 'jsonp',
               		     success: function(data){

			$("#"+id).html('<a href="javascript:compareAirTicket(\'F\',\''+indate+'\',\'\')" style="color:#ffffff;font-family:돋움;font-size:8pt;">가격비교</a>');
			if(data!="")
				if(data>0)
				{
					$("#"+id).html('<a href="javascript:compareAirTicket(\'F\',\''+indate+'\',\'\')" style="color:#fff">'+data+txt_cur+' </a>');
				}
		      }
		 });
	}

	
}

getAirPrice('v1','111021005',true,'2016-05-22','7')
getAirPrice('v2','111021005',true,'2016-05-23','7')
getAirPrice('v3','111021005',true,'2016-05-24','7')
getAirPrice('v4','111021005',true,'2016-05-25','7')
getAirPrice('v5','111021005',true,'2016-05-26','7')
getAirPrice('v6','111021005',true,'2016-05-27','7')
getAirPrice('v7','111021005',true,'2016-05-28','7')
</script>
<table  cellpadding="1"  width="100%">
<tr><td align="center">
	<input type="button" onclick="window.location='planner_step1_infowindow2.asp?lang=ko&s=111021005&d=2016-05-18&t='" value="<">
	<font style="font-size:9pt;">취리히 최저가 항공권</font>
	<input type="button" onclick="window.location='planner_step1_infowindow2.asp?lang=ko&s=111021005&d=2016-06-01&t='" value=">">
<!--	<input type="button" onclick="alert('다른 날짜의 항공권 최저가를 확인하시려면 상단의 출발일을 수정하고 다시 지도위의 도시를 클릭해주세요.')" value="변경">-->
</td></tr>
</table>
<table  cellpadding="1" style="background:#353535" width="100%">
<tr>
	<td height="23px" align="center">5월22일</td>
	<td align="center">5월23일</td>
	<td align="center">5월24일</td>
	<td align="center"><b>5월25일</b></td>
	<td align="center">5월26일</td>
	<td align="center">5월27일</td>
	<td align="center">5월28일</td>
</tr>
<tr>
	<td align="center"><span id="v1"></span></td>
	<td align="center"><span id="v2"></span></td>
	<td align="center"><span id="v3"></span></td>
	<td align="center"><span id="v4"></span></td>
	<td align="center"><span id="v5"></span></td>
	<td align="center"><span id="v6"></span></td>
	<td align="center"><span id="v7"></span></td>
</tr>
</table>

</body>
</html>