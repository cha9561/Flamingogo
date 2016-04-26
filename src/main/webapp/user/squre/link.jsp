<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
<link rel="stylesheet" href="http://www.tripgene.com/attachlink/css.css" type="text/css">

<script type="text/javascript" src="/js/jquery-1.7.2.min.js"></script>
<script type="text/javascript" src="http://www.tripgene.com/attachlink/jquery.livequery.js"></script>
<script type="text/javascript" src="http://www.tripgene.com/attachlink/jquery.watermarkinput.js"></script>

<style>
.btn {
  cursor: pointer;
  display: inline-block;
  background-color: #e6e6e6;
  background-repeat: no-repeat;
  background-image: -webkit-gradient(linear, 0 0, 0 100%, from(#ffffff), color-stop(25%, #ffffff), to(#e6e6e6));
  background-image: -webkit-linear-gradient(#ffffff, #ffffff 25%, #e6e6e6);
  background-image: -moz-linear-gradient(top, #ffffff, #ffffff 25%, #e6e6e6);
  background-image: -ms-linear-gradient(#ffffff, #ffffff 25%, #e6e6e6);
  background-image: -o-linear-gradient(#ffffff, #ffffff 25%, #e6e6e6);
  background-image: linear-gradient(#ffffff, #ffffff 25%, #e6e6e6);
  filter: progid:DXImageTransform.Microsoft.gradient(startColorstr='#ffffff', endColorstr='#e6e6e6', GradientType=0);
  padding: 5px 14px 6px;
  text-shadow: 0 1px 1px rgba(255, 255, 255, 0.75);
  color: #333;
  font-size: 13px;
  line-height: normal;
  border: 1px solid #ccc;
  border-bottom-color: #bbb;
  -webkit-border-radius: 4px;
  -moz-border-radius: 4px;
  border-radius: 4px;
  -webkit-box-shadow: inset 0 1px 0 rgba(255, 255, 255, 0.2), 0 1px 2px rgba(0, 0, 0, 0.05);
  -moz-box-shadow: inset 0 1px 0 rgba(255, 255, 255, 0.2), 0 1px 2px rgba(0, 0, 0, 0.05);
  box-shadow: inset 0 1px 0 rgba(255, 255, 255, 0.2), 0 1px 2px rgba(0, 0, 0, 0.05);
  -webkit-transition: 0.1s linear all;
  -moz-transition: 0.1s linear all;
  -ms-transition: 0.1s linear all;
  -o-transition: 0.1s linear all;
  transition: 0.1s linear all;
}
.btn:hover {
  background-position: 0 -15px;
  color: #333;
  text-decoration: none;
}
.btn:focus {
  outline: 1px dotted #666;
}
.btn.primary {
  color: #ffffff;
  background-color: #0064cd;
  background-repeat: repeat-x;
  background-image: -khtml-gradient(linear, left top, left bottom, from(#049cdb), to(#0064cd));
  background-image: -moz-linear-gradient(top, #049cdb, #0064cd);
  background-image: -ms-linear-gradient(top, #049cdb, #0064cd);
  background-image: -webkit-gradient(linear, left top, left bottom, color-stop(0%, #049cdb), color-stop(100%, #0064cd));
  background-image: -webkit-linear-gradient(top, #049cdb, #0064cd);
  background-image: -o-linear-gradient(top, #049cdb, #0064cd);
  background-image: linear-gradient(top, #049cdb, #0064cd);
  filter: progid:DXImageTransform.Microsoft.gradient(startColorstr='#049cdb', endColorstr='#0064cd', GradientType=0);
  text-shadow: 0 -1px 0 rgba(0, 0, 0, 0.25);
  border-color: #0064cd #0064cd #003f81;
  border-color: rgba(0, 0, 0, 0.1) rgba(0, 0, 0, 0.1) rgba(0, 0, 0, 0.25);
}
.btn:active {
  -webkit-box-shadow: inset 0 2px 4px rgba(0, 0, 0, 0.25), 0 1px 2px rgba(0, 0, 0, 0.05);
  -moz-box-shadow: inset 0 2px 4px rgba(0, 0, 0, 0.25), 0 1px 2px rgba(0, 0, 0, 0.05);
  box-shadow: inset 0 2px 4px rgba(0, 0, 0, 0.25), 0 1px 2px rgba(0, 0, 0, 0.05);
}
.btn.disabled {
  cursor: default;
  background-image: none;
  filter: progid:DXImageTransform.Microsoft.gradient(enabled = false);
  filter: alpha(opacity=65);
  -khtml-opacity: 0.65;
  -moz-opacity: 0.65;
  opacity: 0.65;
  -webkit-box-shadow: none;
  -moz-box-shadow: none;
  box-shadow: none;
}
.btn[disabled] {
  cursor: default;
  background-image: none;
  filter: progid:DXImageTransform.Microsoft.gradient(enabled = false);
  filter: alpha(opacity=65);
  -khtml-opacity: 0.65;
  -moz-opacity: 0.65;
  opacity: 0.65;
  -webkit-box-shadow: none;
  -moz-box-shadow: none;
  box-shadow: none;
}
.btn.large {
  font-size: 15px;
  line-height: normal;
  padding: 9px 14px 9px;
  -webkit-border-radius: 6px;
  -moz-border-radius: 6px;
  border-radius: 6px;
}
</style>
<link rel="stylesheet" href="http://www.tripgene.com/attachlink/css.css" type="text/css">

<script type="text/javascript" src="/js/jquery.js"></script>
<script type="text/javascript" src="http://www.tripgene.com/attachlink/jquery.livequery.js"></script>
<script type="text/javascript" src="http://www.tripgene.com/attachlink/jquery.watermarkinput.js"></script>





</head>
<script type="text/javascript">
	// <![CDATA[	
	
function getInternetExplorerVersion()
// Returns the version of Internet Explorer or a -1
// (indicating the use of another browser).
{
  var rv = -1; // Return value assumes failure.
  if (navigator.appName == 'Microsoft Internet Explorer')
  {
    var ua = navigator.userAgent;
    var re  = new RegExp("MSIE ([0-9]{1,}[\.0-9]{0,})");
    if (re.exec(ua) != null)
      rv = parseFloat( RegExp.$1 );
  }
  return rv;
}
	$(document).ready(function(){	

		var ver = getInternetExplorerVersion();
		if ( ver >= 8.0 ) 
		{$("#attach").hide();}
		// delete event
		$('#attach').livequery("click", function(){
		
			if(!isValidURL($('#url').val()))
			{
				alert('Please enter a valid url.');
				return false;
			}
			else
			{
				$('#load').show();




		  var ver = getInternetExplorerVersion();

		if ( ver >= 8.0 ) 
		{

			alert("익스플로어 9.0버젼에서는 기술적인 이유로 링크첨부가 불가능합니다. 크롬등 다른 브라우져를 이용해주시기 바랍니다.");

		  }
 		else
		{
			$.get("http://www.tripgene.com/attachlink/fetch.php?url="+$('#url').val(), {
			}, function(response){
		
				$('#loader').val(response);
				$('#loader').html($(response).fadeIn('slow'));
				$('.images img').hide();
				$('#load').hide();
				$('img#1').fadeIn();
				$('#cur_image').val(1);
			});
		}
         
			}
		});	
		// next image
		$('#next').livequery("click", function(){
		
			var firstimage = $('#cur_image').val();
			$('#cur_image').val(1);
			$('img#'+firstimage).hide();
			if(firstimage <= $('#total_images').val())
			{
				firstimage = parseInt(firstimage)+parseInt(1);
				$('#cur_image').val(firstimage);
				$('img#'+firstimage).show();
			}
		});	
		// prev image
		$('#prev').livequery("click", function(){
		
			var firstimage = $('#cur_image').val();
			
			$('img#'+firstimage).hide();
			if(firstimage>0)
			{
				firstimage = parseInt(firstimage)-parseInt(1);
				$('#cur_image').val(firstimage);
				$('img#'+firstimage).show();
			}
			
		});	
		// watermark input fields
		jQuery(function($){
		   
		   $("#url").Watermark("http://");
		});
		jQuery(function($){

		    $("#url").Watermark("watermark","#369");
			
		});	
		function UseData(){
		   $.Watermark.HideAll();
		   $.Watermark.ShowAll();
		}

	});	
	
	function isValidURL(url){
		var RegExp = /(ftp|http|https):\/\/(\w+:{0,1}\w*@)?(\S+)(:[0-9]+)?(\/|\/([\w#!:.?+=&%@!\-\/]))?/;
	
		if(RegExp.test(url)){
			return true;
		}else{
			return false;
		}
	}

	// ]]>
</script>

<body>
<div align="center">

<input type="hidden" name="cur_image" id="cur_image" />

<div class="wrap" align="center">

	<div class="box" align="left">
	
		<div class="head">Link</div>
		<div class="close" align="right">
			
		</div>
		<br clear="all" />
	<form name="form" action="http://www.stubbytour.com/plan/getadvice_link.asp" method="post">	
		<input type="text" name="url" size="64" id="url" />
		<input type="button" name="attach" value="Attach" id="attach" />
		<br clear="all" />
		
		<div id="loader">
			
			<div align="center" id="load" style="display:none"><img src="http://www.tripgene.com/attachlink/load.gif" /></div>
			
		</div>
		<input type="hidden" name="vattlink" id="vattlink"/>
		<p style="text-align:center"><a href="javascript:fsubmit();" class="btn primary large">첨부완료</a></p>
	</form>
<script>
function fsubmit()
{
	
	var txval=$('#loader').val();
	if(txval=='')
	{
		//alert('Attach 버튼을 누르고\
		//realUrl=$("#url").val();

		//return;
	}

	if(txval)
	{
		realUrl=$("#url").val();
		startofTitle=txval.indexOf("<label class=\"title\">")+21;
		endofTitle=txval.indexOf("</label>",startofTitle);

		startofUrl=txval.indexOf("<label class=\"url\">")+19;
		endofUrl=txval.indexOf("</label>",startofUrl);
	
		startofUrl=txval.indexOf("<label class=\"url\">")+19;
		endofUrl=txval.indexOf("</label>",startofUrl);

		startofDesc=txval.indexOf("<label class=\"desc\">")+20;
		endofDesc=txval.indexOf("</label>",startofDesc);

		theTitle=txval.substring(startofTitle,endofTitle);
		theUrl=txval.substring(startofUrl,endofUrl);
		theDesc=txval.substring(startofDesc,endofDesc);

		timgidx=$('#cur_image').val();
		theImg=$('img#'+timgidx).attr('src');

		xhtml="<table><tr>"
		if(theImg)
			xhtml=xhtml+"<td><div style=\"position:relative;overflow-y:hidden;height:100px\"><a href=\""+realUrl+"\" target=\"_blank\"><img src=\""+theImg+"\" width=\"100px\"></a></div></td>"
		xhtml=xhtml+"<td><ul class=\"unstyled\"><li><a href=\""+realUrl+"\" target=\"_blank\"><h6 style=\"line-height:150%\">"+theTitle+"</h6></a></li><li><font class=\"small\"><a href=\""+realUrl+"\" target=\"_blank\">"+theUrl+"</a></font></li><li><font class=\"small\">"+theDesc+"</font></li></ul></td></tr></table>"
		
	}
	else
	{
		xhtml="";
		realUrl=$("#url").val();
		if(realUrl)
		{
			if(realUrl.substring(0,4)!="http")
				realUrl="http:\/\/"+realUrl;
			if(realUrl.length>8)
			{
				theUrl=realUrl;
				if(theUrl.length>35)
					theUrl=theUrl.substring(0,35)+"..";
				xhtml="<span class=\"label\">LINK</span> <a href=\""+realUrl+"\" target=\"_blank\">"+theUrl+"</a>";
			}
		}
	}

	parent.attachedLink(xhtml);
}
</script>
	</div>

</div>
</div>


</body>
</html>