<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta name="viewport" content="initial-scale=1.0, user-scalable=no"/>

<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
<link href="http://code.google.com/apis/maps/documentation/javascript/examples/default.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="//maps.googleapis.com/maps/api/js?sensor=false"></script>
<link type="text/css" href="http://www.stubbytour.com/css/ui-lightness/jquery-ui-1.8.16.custom.css" rel="Stylesheet" />	
<script type="text/javascript" src="http://www.stubbytour.com/js/jquery-1.6.2.min.js"></script>
<script type="text/javascript" src="http://www.stubbytour.com/js/jquery-ui-1.8.16.custom.min.js"></script>
<script type="text/javascript" src="../../js/sociallib.js"></script>
<script type="text/javascript" src="../../js/scrollspy.js"></script>
<link href="../../css/bootstrap.css" rel="stylesheet">
<style>
	body
	{overflow:hidden;}
</style>
<script type="text/javascript"> 
  var geocoder;
  var map;
 var marker;
  function initialize() {
    geocoder = new google.maps.Geocoder();
    var latlng = new google.maps.LatLng(0, 0);
    var myOptions = {
      streetViewControl:false,
      zoom: 3,
      center: latlng,
      mapTypeId: google.maps.MapTypeId.ROADMAP
    }
    map = new google.maps.Map(document.getElementById("map_canvas"), myOptions);
 
    marker = new google.maps.Marker({
      map:map,
      draggable:true,
      animation: google.maps.Animation.DROP,
      position: latlng
    });
    google.maps.event.addListener(marker, 'click', toggleBounce);

 }
 
  function toggleBounce() {
 
    if (marker.getAnimation() != null) {
      marker.setAnimation(null);
    } else {
      marker.setAnimation(google.maps.Animation.BOUNCE);
    }
  }

  function codeAddress() {
    var address = document.getElementById("address").value;
    geocoder.geocode( { 'address': address}, function(results, status) {
      if (status == google.maps.GeocoderStatus.OK) {
        map.setCenter(results[0].geometry.location);
        marker.setPosition(results[0].geometry.location);
      } else {
        alert("Geocode was not successful for the following reason: " + status);
      }
    });
  }

function mapload()
{
	tval=$("#shortcut").val();
	tlat=tval.split(",")[0];
	tlng=tval.split(",")[1];
	tzm=tval.split(",")[2];
	var latlng = new google.maps.LatLng(tlat, tlng);
	map.setCenter(latlng);
	marker.setPosition(latlng);
	map.setZoom(tzm);
}
</script>


</head>
<body onload="initialize()">
<div class="row">
 <div class="col-md-12" style="border-right:1px solid #efefef">
<div>
	<h6>원하는 위치로 마커(marker)를 드래그해 옮긴 뒤 첨부버튼을 눌러주세요.</h6>
</div>

<div  >
	 <div id="map_canvas" style="height:180px"></div>
</div>

<div style="text-align:right;padding:5px">
	    	<input id="address" type="textbox" value="" class="span5">
  		<a class="btn small"  href="javascript:codeAddress()">도시명,주소로 이동</a>
</div>


<div style="text-align:center">
	    	<a href="javascript:attachedMap();" class="btn primary">첨부하기</a>
	    	<a href="javascript:closeMap();" class="btn">취소</a>
</div>
<script>
function attachedMap()
{
	var lat=marker.getPosition().lat();
	var lng=marker.getPosition().lng();
	var zl=map.getZoom();
	var mt="";
	var mt_raw=map.getMapTypeId();
	
	if(mt_raw==google.maps.MapTypeId.ROADMAP)
		mt="ROADMAP";
	else if(mt_raw==google.maps.MapTypeId.HYBRID)
		mt="HYBRID";
	else if(mt_raw==google.maps.MapTypeId.SATELLITE)
		mt="SATELLITE";
	else if(mt_raw==google.maps.MapTypeId.TERRAIN)
		mt="TERRAIN";

	parent.attachedMap('',lat,lng,zl,mt);
}
function closeMap()
{
	parent.closeMap();
}
</script>
</div>
</body>
</html>
