<%-- <%@ page language="java" contentType="text/html; charset=EUC-KR"
   pageEncoding="UTF-8"%> --%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
   pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<!-- <meta charset="UTF-8"> -->
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
  <meta http-equiv="X-UA-Compatible" content="IE=edge; charset=utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">
   <link href="user/planner/style.css" rel="stylesheet" type="text/css">
    <!--mdl css-->
    <link rel="stylesheet" href="https://code.getmdl.io/1.1.3/material.indigo-pink.min.css">
<link href="user/main/css/bootstrap.min.css" rel="stylesheet">
<link href="user/planner/map.css" rel="stylesheet" type="text/css">
    <!-- Custom Fonts -->
    <link href='http://fonts.googleapis.com/css?family=Open+Sans:300italic,400italic,600italic,700italic,800italic,400,300,600,700,800' rel='stylesheet' type='text/css'>
    <link href='http://fonts.googleapis.com/css?family=Merriweather:400,300,300italic,400italic,700,700italic,900,900italic' rel='stylesheet' type='text/css'>
    <link rel="stylesheet" href="http://fonts.googleapis.com/css?family=Roboto:300,400,500,700" type="text/css">

<!--mdl css-->
<link rel="stylesheet"
   href="https://code.getmdl.io/1.1.3/material.indigo-pink.min.css">
<link href="user/main/css/bootstrap.min.css" rel="stylesheet">
<!-- Custom Fonts -->
<link
   href='http://fonts.googleapis.com/css?family=Open+Sans:300italic,400italic,600italic,700italic,800italic,400,300,600,700,800'
   rel='stylesheet' type='text/css'>
<link
   href='http://fonts.googleapis.com/css?family=Merriweather:400,300,300italic,400italic,700,700italic,900,900italic'
   rel='stylesheet' type='text/css'>
<link rel="stylesheet"
   href="http://fonts.googleapis.com/css?family=Roboto:300,400,500,700"
   type="text/css">

<!--mdlfont -->
<link rel="stylesheet"
   href="https://fonts.googleapis.com/icon?family=Material+Icons">

<!-- jQuery -->
<script src="js/jquery.js"></script>

<!-- Bootstrap Core JavaScript -->
<script src="js/bootstrap.min.js"></script>
<script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
<script
   src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
<script src="https://code.getmdl.io/1.1.3/material.min.js"></script>
<link rel="stylesheet"
   href="https://code.getmdl.io/1.1.3/material.indigo-pink.min.css">
<!-- Material Design icon font -->
<link rel="stylesheet"
   href="https://fonts.googleapis.com/icon?family=Material+Icons">

<!-- Plugin JavaScript -->
<script src="js/jquery.easing.min.js"></script>
<script src="js/jquery.fittext.js"></script>
<script src="js/wow.min.js"></script>
<script src="https://maps.googleapis.com/maps/api/js?v=3.exp&sensor=false"></script>
<script type="text/javascript" src="../../js/ajax.js"></script>
<!-- Custom Theme JavaScript -->
<link rel="stylesheet" type="text/css"
   href="user/shadow/css/shadowbox.css">
<link href="user/planner/style.css" rel="stylesheet" type="text/css">
<link href="user/planner/maptest.css" rel="stylesheet" type="text/css">
   
<script type="text/javascript" src="user/shadow/js/shadowbox.js"></script>
<style type="text/css">



</style>
<script type="text/javascript">
function fsubmit()
{
	startdate=$("#thedate").val();
	txt_citylist=getTripgene();
	if(txt_citylist!="")
	{
		txt_citylist=txt_citylist.substring(3);
		var startdate=$("#thedate").val();
		window.location="http://www.stubbyplanner.com/plan/step3_multiple.asp?sdate="+startdate+"&tripgene="+getTripgene();
	}
	else
		alert("입력된 도시가 없습니다.");

}
$(function() {
	$( "input:submit, a, button", ".demo" ).button({ icons: {primary:'ui-icon-circle-plus'} });
	//$( "a", ".demo" ).click(function() { return false; }); 
});

function moveTo(lat,lng)
{
	var center = new google.maps.LatLng(lat, lng);
	map.panTo(center);
}


   Shadowbox.init({
      players : [ "iframe" ]
   });
   function help_1() {
      Shadowbox.open({
         content : 'user/planner/help.jsp',
         player : 'iframe',
         width : 1010,
         height : 580,
         title : ''
      });
   }


    
   var poly;
   var imageArr;
   var images;
   var plandate1;
   var planner= [];

   var travelPathArray = [];

   //var map;
   var markers = [];
   var map;
   var infowindow = null;
   var startLat = null;
   var startLng = null;
   var endLat = null;
   var endLng = null;
   var latadd;
   var lngadd;
   var lat;
   var lng;
   var latlng;
   function initialize() {
      var myLatlng = new google.maps.LatLng(48.859, 2.342);
      var myOptions = {
         zoom: 7,
         center: myLatlng,
         mapTypeId: google.maps.MapTypeId.TERRAIN
      };

      map = new google.maps.Map(document.getElementById('google_map'), myOptions);
      //places = new google.maps.places.PlacesService(map);
      //google.maps.event.addListener(map, 'tilesloaded', tilesLoaded);
      //autocomplete = new google.maps.places.Autocomplete(document.getElementById('autocomplete'));
      /* google.maps.event.addListener(autocomplete, 'place_changed', function () {
         showSelectedPlace();
      }); */
      
          google.maps.event.addListener(map, 'idle', function(){
         startLat = map.getBounds().getSouthWest().lat();
         startLng = map.getBounds().getSouthWest().lng();
         endLat = map.getBounds().getNorthEast().lat();
         endLng = map.getBounds().getNorthEast().lng();
         viewMarker();
      });

      google.maps.event.addListener(map, 'zoom_changed', function() {
         startLat = map.getBounds().getSouthWest().lat();
         startLng = map.getBounds().getSouthWest().lng();
         endLat = map.getBounds().getNorthEast().lat();
         endLng = map.getBounds().getNorthEast().lng();
         viewMarker();
      });

      google.maps.event.addListener(map, 'dragend', function() {
         startLat = map.getBounds().getSouthWest().lat();
         startLng = map.getBounds().getSouthWest().lng();
         endLat = map.getBounds().getNorthEast().lat();
         endLng = map.getBounds().getNorthEast().lng();
         viewMarker();
      }); 
      
      var lineSymbol = {
             path: google.maps.SymbolPath.FORWARD_CLOSED_ARROW
           };
      
      poly = new google.maps.Polyline({
          strokeColor: '#000000',
          strokeOpacity: 1.0,
          strokeWeight: 3,
          icons: [{
               icon: lineSymbol,
               offset: '100%'
             }]
        });
      poly.setMap(map);
      
      
   }
   function addLatLng(lat,lng) {
	//latlng.text(lat,lng);
	  // $('latlng').append(lat+"/"+lng+"-");
	  // $('.latlng1').val(latlng);
	  if(latadd == null && lngadd==null){
		  latadd="";
	      lngadd="";
   }
	/*   if(lagadd == null)
		  lngadd=""; */
	  latadd=latadd+lat+"/";
		 
	  lngadd=lngadd+lng+"/";

	  alert(latadd+" "+lngadd);
	  $('.latlng1').val(latadd);
	    $('.latlng2').val(lngadd);
	    $('.latmax').val(lat);
	    $('.lngmax').val(lng);
	   $("p").append(lat+"/"+lng+"-");
	  
        var path = poly.getPath();
        // Because path is an MVCArray, we can simply append a new coordinate
        // and it will automatically appear.
        //path.push(event.latLng);
         path.push(new google.maps.LatLng(lat,lng))
        // Add a new marker at the new plotted point on the polyline.
        var marker = new google.maps.Marker({
          position: new google.maps.LatLng(lat,lng),
          title: '#' + path.getLength(),
          icon:'http://www.stubbyplanner.com/img_v8/marker.png',
          map: map
        });
      }
   
     function imageFun(image)
   {
      //alert("image2->"+image);
      if(imageArr == null)
         imageArr=image;
      else
          imageArr = imageArr+"/"+image;
       $('#place').val(imageArr);
       alert("image2->"+imageArr);
   } 
    
/*      $(function(){
    		$('#plandate').click(function(){
    			var find=$(this).val();
    			if(find == null){
    				alert("날짜를 정해주세요");
    			return;
    			}
    			else
    			alert(find);
    			$('#plandate1').val(find);
    		});
    }); */

    function image(img)
   {
    	  if(images == null)
    	         images=img;
    	      else
    	          images = images+"-"+img;
    	       $('#images').val(images);
    	       alert("image->"+images);
      
   }  
    
    $(function() {
        $('#plnSave').click(function() {
           if (confirm("저장하시겠습니까??") == true) { //확인
        	 if('#plandate' == null){
        		 alert("여행 날짜를 정해주세요");
        		 return;
        	 }
          	 $('#plan').submit();
           } else { //취소
              return;
           }
        });
     });
   // 드롭 마커 보기

       function viewMarker() {
      if(startLat)
      {
         $.ajax({
            type: "POST",
            url: "js/marker.js",
             beforeSend: function() {
               fnRemoveMarker();   // 조회 전 기존 마커 제거
             },
            success: function (json) {
               var markerList = $.parseJSON(json);
               var listLen = markerList.length;
               
               for(var i=0; i<listLen; i++){
                  if (parseFloat(startLat) <= parseFloat(markerList[i].lat) && parseFloat(startLng) <= parseFloat(markerList[i].lng) && parseFloat(endLat) >= parseFloat(markerList[i].lat) && parseFloat(endLng) >= parseFloat(markerList[i].lng))
                  {
                     var marker = new google.maps.Marker({
                        position: new google.maps.LatLng(markerList[i].lat,markerList[i].lng),
                        map: map,
                        draggable: false,
                        icon: markerList[i].icon,
                        html: markerList[i].addr,
                        cityname: markerList[i].cont
                     });
                     markers.push(marker);
                     var infowindow = new google.maps.InfoWindow()
                     //var contentString = '<iframe width="350px"  scrolling="no" height="100px" frameborder="0" src="http://localhost:8080/flamingogo/user/planner/plannerstep1.jsp"></iframe>' 
                     google.maps.event.addListener(marker, "click", function(){
                        infowindow.setContent(this.html);
                        infowindow.open(map, this);
                      
                     });
                     
                  }
               };
            }
      })

   }  
   }


       
   // 마커 제거 함수

   function fnRemoveMarker()
   {
      for (var i = 1; i < markers.length; i++) 
      {

         markers[i].setMap(null);
      }
   }

   $(window).load(function() {
      initialize();
   });

   
    function Coordinates(lat,lng)
   {
      for(i=0;i<CoordinatesArr.length;i++)
      {
         if(CoordinatesArr[i]==null)
         {
            CoordinatesArr[i]=new google.maps.LatLng(lat, lng);
            break;
         }
         else
            continue;
      }
   } 

</script>
    <script type="text/javascript" src="https://maps.googleapis.com/maps/api/js?sensor=false&libraries=places"></script>

</head>

<body onload="initialize()">

<p id="p" >gggggggg</p>
   <gwd-doubleclick id="gwd-ad" polite-load="">
   <div is="gwd-pagedeck" class="gwd-page-container" id="pagedeck">
      <div is="gwd-page" id="page1"
         class="gwd-page-wrapper gwd-page-size gwd-lightbox gwd-div-8ehm"
         data-gwd-width="1280px" data-gwd-height="780px">
         <div class="gwd-page-content gwd-page-size gwd-div-1aei">

         

            <!-- <div class="gwd-div-19b4" style="" id="listing">
              <table id="results"></table>

            </div> -->
            <div class="gwd-div-16m9" style="border-style: solid;"></div>

			
          
		
            <!-- <div class="gwd-div-1ka9" style="border-style: solid;"></div>
            
             -->

            <!-- <p class="gwd-p-19oj">
               <br class="">

            </p>
             -->

            <!-- <form name="controls">
            <p class="gwd-p-zobl" id="title1" style="border-style: solid;">숙소
               <input type="radio" name="type" value="lodging" onclick="search()" />
               <span class="gwd-span-1iwa">맛집</span> 
               <input type="radio" name="type" value="restaurant" onclick="search()" />
            </p>
            </form> -->

            
            <gwd-map id="google_map" class="gwd-map"> </gwd-map>
            
            <div class="gwd-div-2h60" style=""></div>
            <!-- <div id="place">
            <div class="gwd-div-ikgy" style="border-style: solid;" id="place1"></div>
            

            <div class="gwd-div-1wk8" style="border-style: solid;" id="place2"></div>

            <div class="gwd-div-1vxx" style="border-style: solid;" id="place3"></div>

            <div class="gwd-div-oojv" style="border-style: solid;" id="place4"></div>

            <div class="gwd-div-1d7o" id="planing1" style=""></div>
            <div class="gwd-div-1r07" id="planing2" style=""></div>

            <div class="gwd-div-h7fg" id="planing3" style=""></div>
            <div>
             <image src="">
            </div>
            <div></div>
            </div> -->
            
            <form action="plannerRecomm1.do" method="post"id="plan" name="plan">
              <div class="gwd-div-1e92" id="calander">
               <input type="date" id="plandate" name="plandate"/>
            </div>
            <table>
              <tr>
                <td>
                 <input type=hidden id="place" name="place">
                <!--  <input type=hidden id="date" name="date"> -->
                   <input type=hidden id="images" name="images">
                  <!--  <input type="hidden" id="plandate1" name="plandate1"> -->
                  <input type="hidden" class="latlng1" name="latlng1">
                  <input type="hidden" class="latlng2" name="latlng2">
                  <input type="hidden" class="latmax" name="latmax">
                  <input type="hidden" class="lngmax" name="lngmax">
                </td>
              </tr>
            </table>
            </form>
            
            <button id="bt1" class="mdl-button mdl-js-button mdl-button--raised mdl-button--accent" onclick="help_1()">사용법</button>

            <a href="calander.do">
               <button id="bt2"
                  class="mdl-button mdl-js-button mdl-button--raised mdl-button--accent">일정표</button>
            </a>
            
            <button id="bt3"
               class="mdl-button mdl-js-button mdl-button--raised mdl-button--accent">플래너
               초기화</button>
            <!-- Accent-colored flat button -->
            <button class="mdl-button mdl-js-button mdl-button--accent" id="bt4">출발일</button>
            <button class="mdl-button mdl-js-button mdl-button--accent" id="bt5">여행기간</button>
            
            <div class="mdl-textfield mdl-js-textfield" id="tf">
               <input class="mdl-textfield__input" type="text" id="sample3">
               <label class="mdl-textfield__label" for="sample3" value="date">text...</label>
            </div>

            <button class="mdl-button mdl-js-button mdl-button--raised mdl-button--accent" id="plnSave" onclick="fsubmit()">
            플래너 저장
            
            </button>
         </div>
      </div>
   </div>
   </gwd-doubleclick>
</body>

</html>