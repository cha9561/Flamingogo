<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html> 
<html> 
<head> 
<meta name="viewport" content="initial-scale=1.0, user-scalable=no" /> 
<title>TownStory: Google Map</title>
<style type="text/css"> 
  html { height: 100% } 
  body { height: 100%; margin: 0px; padding: 0px; font-size: 9pt; } 

    div { float:left; }

    #map_canvas { width: 800px; height: 500px }

    #control {  }

    input { font-size: 9pt; }
</style> 
<script type="text/javascript" 
    src="http://maps.google.com/maps/api/js?sensor=false&region=KR"> 
</script> 
<script type="text/javascript"> 
var StreetViewPanorama = new function(){}

var globalMap;
var globalMarker;
var globalGeocoder;

// �� �ʱ�ȭ
function initialize(x, y) { 
     // �Էµ� ��ǥ�� ������ �⺻��ǥ�� ���ﵿ���� ����.
    if(x==0){ x=37.50075507977441; }
    if(y==0){ y=127.03690767288208; }

    globalGeocoder = new google.maps.Geocoder();

    var latlng = new google.maps.LatLng(x, y);

    var myOptions = { 
        zoom: 16, 

        //disableDoubleClickZoom:false,
        center: latlng, 
        
        navigationControl: false,    // ������ ���·� ������ �����ϴ� ��Ʈ�� Ȱ��ȭ ����.
        navigationControlOptions: { 
            position: google.maps.ControlPosition.TOP_RIGHT,
            style: google.maps.NavigationControlStyle.DEFAULT // ANDROID, DEFAULT, SMALL, ZOOM_PAN
        },
        
        streetViewControl: false,

        scaleControl: false,    // ���� ���� ������ ������.
        //scaleControlOptions: { position: google.maps.ControlPosition.TOP_RIGHT },
        
        mapTypeControl: false, // ����,����,���̺긮�� ��� ���� ��Ʈ�� ������ ������
        mapTypeId: google.maps.MapTypeId.ROADMAP  // HYBRID, ROADMAP, SATELLITE, TERRAIN
    }; 

    globalMap = new google.maps.Map(document.getElementById("map_canvas"), myOptions); 

    google.maps.event.addListener(globalMap, 'dragend', function(){    // �巡�׽� �̺�Ʈ �߰�
        showMapPos();
        showMapAddr();
    });
    google.maps.event.addListener(globalMap, 'click', function(event){        // ����Ŭ���� ��Ŀ�̵�
        moveMarker(event.latLng); 
    });
}
 
// �� �巡���� �� �� �߾� ��ǥ �����ֱ�
function showMapPos(){
    var pos=globalMap.getCenter();

    //alert(pos.lat()+"/"+pos.lng());
    //return {x:pos.lat(), y:pos.lng()};

    document.getElementById("centerX").value = pos.lat();
    document.getElementById("centerY").value = pos.lng();
}

// �巡���� �� �� �߾� ��ǥ�� �ּ�
function showMapAddr(){
    globalGeocoder.geocode( { 'location': globalMap.getCenter()}, function(results, status) {
        if (status == google.maps.GeocoderStatus.OK) {
            /*
            var str="";
            for(var i=0; i<results[0].address_components.length; i++){
                str += "/"+results[0].address_components[0].long_name
            }
            document.getElementById("txtAddress").innerHTML=str;

            document.getElementById("txtAddress").innerHTML=results[0].address_components[0].types;
            */

            
            var str="";
            for(var i=3; i>=0; i--){
                str += " "+results[0].address_components[i].short_name;
            }
            document.getElementById("txtAddress").innerHTML=str;
            //document.getElementById("txtAddress").innerHTML=results[0].address_components[0].long_name;
            

        } else {
            alert("Geocode was not successful for the following reason: " + status);
        }
    });
}

// �� �߾ӿ� ��ũ���
function setMark(){
    var myOptions = {
        position: globalMap.getCenter(),
        draggable: true,
        map: globalMap,
        //icon: "http://sstatic.naver.net/search/img2/ico_bal_a.gif", // ������ ������ ��
        visible: true
    };

    globalMarker = new google.maps.Marker(myOptions);
}

// ��ũ �����ϱ�
function removeMark(){
    globalMarker.setOptions({
        map: null,
        visible: false
    });
    globalMarker = null;
}

// ��ũ��ǥ ��������
function getMarkPos(){
    var pos=globalMarker.getPosition();

    //alert(pos.lat()+"/"+pos.lng());
    //return {x:pos.lat(), y:pos.lng()};

    document.getElementById("markerX").value = pos.lat();
    document.getElementById("markerY").value = pos.lng();
}

// Ư����ǥ�� �̵��ϱ�
function setMapByCoord(x, y){
    var loc = new google.maps.LatLng(x, y);

    globalMap.setCenter(loc);
}

// �ּҰ����� ã��
function codeAddress() {
    var address = document.getElementById("address").value;
    if(address=='�˻��� �ּҸ� �Է��Ͻʽÿ�.' || address==''){
        alert('�˻��� �ּҸ� �Է��Ͻʽÿ�.');
        document.getElementById("address").value='';
        document.getElementById("address").focus();
        return;
    }

    globalGeocoder.geocode( { 'address': address}, function(results, status) {
        if (status == google.maps.GeocoderStatus.OK) {
            globalMap.setCenter(results[0].geometry.location);

            //var marker = new google.maps.Marker({
            globalMarker = new google.maps.Marker({
                map: globalMap, 
                position: results[0].geometry.location,
                draggable: true
            });
        } else {
            alert("Geocode was not successful for the following reason: " + status);
        }
    });
}

// ����â ��ũ ���
function setInfoMark(){
    //var html = "<div><a href='http://www.findall.co.kr' target='_blank'>www.findall.co.kr</a></div>";
    //var html = "<div><iframe src='http://www.findall.co.kr' style='width:300px;height:120px;'></iframe></div>";

    var html = "";
    html += "<div>";
    html += "    <a href='http://www.findall.co.kr' target='_blank'>";
    html += "        <img src='http://image.findall.co.kr/FANew/Topmain/summer_logo.gif' border='0'>";
    html += "    </a>";
    html += "</div>";

    var infoWin = new google.maps.InfoWindow({content: html, maxWidth:1000});
    var loc = new google.maps.LatLng(37.500061375296184,127.03099206089973);
    
    var myOptions = {
        position: loc,
        draggable: false,
        map: globalMap,
        //icon: "http://sstatic.naver.net/search/img2/ico_bal_a.gif", // ������ ������ ��
        visible: true
    };

    // ��Ŀ ����
    globalMarker = new google.maps.Marker(myOptions);

    // ��Ŀ�� �̺�Ʈ������ �߰�
    google.maps.event.addListener(globalMarker, 'click', function(){
        infoWin.open(globalMap, globalMarker);
    });

    // ���� �߽���ǥ �̵�
    globalMap.setCenter(loc);
}

// ���� ���� ��ũ ��� ���� - Refresh ���� ��� ������?
function clearMark(){
    var loc = globalMap.getCenter(); // ������ ������ ��ġ�� �����´�.

    globalMap = null;
    globalMarker = null;
    globalGeocoder = null;

    initialize(loc.lat(), loc.lng());
}

// ���� Ŭ���� ��Ŀ �̵�
function moveMarker(loc){
    //alert(loc);
    globalMarker.setPosition(loc);
}
</script> 
</head> 
<body onload="initialize(0,0)"> 
  <div id="map_canvas"></div> 

    <div id="control">
        <dl>
            <dt><strong>[Control]</strong></dt>
            <dd>�⺻��ǥ(x,y) : 37.50075507977441, 127.03690767288208</dd>
            <dd>&nbsp;</dd>
            <dd>�� �ּ� : <span id="txtAddress"></span></dd>
            <dd>��X��ǥ:&nbsp;&nbsp;&nbsp; <input type="text" id="centerX"></dd>
            <dd>��Y��ǥ:&nbsp;&nbsp;&nbsp; <input type="text" id="centerY"></dd>

            <dd><hr/></dd>

            <dd>
                <input type="button" value="�� �߾ӿ� ��ũ���" onClick="setMark();">
                <input type="button" value="��ũ����" onClick="removeMark();">
            </dd>
            <dd>
                <input type="button" value="��ũ��ǥ ����" onClick="getMarkPos();">    <br>
                <span style="margin-left: 80px;">��ũX��ǥ: <input type="text" id="markerX"></span> <br>
                <span style="margin-left: 80px;">��ũY��ǥ: <input type="text" id="markerY"></span>
            </dd>
            <dd>
                <input type="button" value="����â ��ũ ��� - ���ε��" onClick="setInfoMark();">
            </dd>
            <dd>
                <input type="button" value="���� ���� ��ũ ��� ����" onClick="clearMark();">
            </dd>

            <dd><hr/></dd>

            <dd>
                <input type="button" value="���ı�û" onClick="setMapByCoord(37.5145937754918, 127.10662364959717);">
                ��ǥ(x,y): 37.5145937754918, 127.10662364959717
            </dd>

            <dd><hr/></dd>

            <dd>
                <input type="text" id="address" value="�˻��� �ּҸ� �Է��Ͻʽÿ�." style="width:210px;" onClick="this.value='';">
                <input type="button" value="GeoCode" onClick="codeAddress()">
            </dd>
        </td>
    </div>
</body> 
</html>