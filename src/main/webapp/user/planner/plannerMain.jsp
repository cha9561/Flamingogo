<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
	<link href="user/planner/style.css" rel="stylesheet" type="text/css">
    <!--mdl css-->
    <link rel="stylesheet" href="https://code.getmdl.io/1.1.3/material.indigo-pink.min.css">

    <!-- Custom Fonts -->
    <link href='http://fonts.googleapis.com/css?family=Open+Sans:300italic,400italic,600italic,700italic,800italic,400,300,600,700,800' rel='stylesheet' type='text/css'>
    <link href='http://fonts.googleapis.com/css?family=Merriweather:400,300,300italic,400italic,700,700italic,900,900italic' rel='stylesheet' type='text/css'>
    <link rel="stylesheet" href="http://fonts.googleapis.com/css?family=Roboto:300,400,500,700" type="text/css">

    <!--mdlfont -->
    <link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">

<!-- jQuery -->
<script src="js/jquery.js"></script>

<!-- Bootstrap Core JavaScript -->
<script src="js/bootstrap.min.js"></script>

<!-- Plugin JavaScript -->
<script src="js/jquery.easing.min.js"></script>
<script src="js/jquery.fittext.js"></script>
<script src="js/wow.min.js"></script>

<!-- Custom Theme JavaScript -->

  <script type="text/javascript">
    var map, places, iw;
	var markers = [];
	var autocomplete;
	var MarkersArray = [];
	var Coordinates = [];
	var travelPathArray = [];
	var map;
	function initialize() {
		var myLatlng = new google.maps.LatLng(48.859, 2.342);
		var myOptions = {
			zoom: 7,
			center: myLatlng,
			mapTypeId: google.maps.MapTypeId.ROADMAP
		};
		map = new google.maps.Map(document.getElementById('google_map'), myOptions);
		places = new google.maps.places.PlacesService(map);
		google.maps.event.addListener(map, 'tilesloaded', tilesLoaded);
		autocomplete = new google.maps.places.Autocomplete(document.getElementById('autocomplete'));
		google.maps.event.addListener(autocomplete, 'place_changed', function () {
			showSelectedPlace();
		});
		
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
		
		google.maps.event.addListener(map, 'dragend', function(){
			startLat = map.getBounds().getSouthWest().lat();
			startLng = map.getBounds().getSouthWest().lng();
			endLat = map.getBounds().getNorthEast().lat();
			endLng = map.getBounds().getNorthEast().lng();
			viewMarker();
		}); 
		
		
		google.maps.event.addListener(map, 'click', function(event) {
			var image = "http://www.stubbyplanner.com/img_v8/selectcityICON_red.png"
			var marker = new google.maps.Marker({
				position : event.latLng,
				map : map,
				title : '위치마커',
				icon:image
				
			});
			attachMessage(marker, event.latLng);
			//선을 그리기 위해 좌표를 넣는다.
			Coordinates.push(event.latLng);
			//마커 담기
			MarkersArray.push(marker);
			//array에 담은 위도,경도 데이타를 가지고 동선 그리기
			flightPath();
		});
	}

	//해당 위치에 주소를 가져오고, 마크를 클릭시 infowindow에 주소를 표시한다.
	function attachMessage(marker, latlng) {
		geocoder = new google.maps.Geocoder();
		geocoder.geocode({
			'latLng' : latlng
		}, function(results, status) {
			if (status == google.maps.GeocoderStatus.OK) {
				if (results[0]) {
					 var contentString = 
	          			  '<div id="content">'+
	          		      '<div id="siteNotice">'+
	          		      '<a href="">'+
	        		      '<button id="bt1" class="mdl-button mdl-js-button mdl-button--raised mdl-button--accent">+</button>'+
	        		      '</a>'+
	          		      '</div>'+
	          		      '<h1 id="firstHeading" class="firstHeading">Uluru</h1>'+
	          		      '<div id="bodyContent">'+
	          		      '<p><b>Uluru</b>, also referred to as <b>Ayers Rock</b>, is a large ' +
	          		      'sandstone rock formation in the southern part of the '+
	          		      'Northern Territory, central Australia. It lies 335&#160;km (208&#160;mi) '+
	          		      'south west of the nearest large town, Alice Springs; 450&#160;km '+
	          		      '(280&#160;mi) by road. Kata Tjuta and Uluru are the two major '+
	          		      'features of the Uluru - Kata Tjuta National Park. Uluru is '+
	          		      'sacred to the Pitjantjatjara and Yankunytjatjara, the '+
	          		      'Aboriginal people of the area. It has many springs, waterholes, '+
	          		      'rock caves and ancient paintings. Uluru is listed as a World '+
	          		      'Heritage Site.</p>'+
	          		      '<p>Attribution: Uluru, <a href="https://en.wikipedia.org/w/index.php?title=Uluru&oldid=297882194">'+
	          		      'https://en.wikipedia.org/w/index.php?title=Uluru</a> '+
	          		      '(last visited June 22, 2009).</p>'+
	          		      '</div>'+
	          		      '</div>';  
					var address_nm = results[0].formatted_address;
					var infowindow = new google.maps.InfoWindow({
						content : contentString,
						size : new google.maps.Size(50, 50)
					});
					
					google.maps.event.addListener(marker, 'click', function() {
						infowindow.open(map, marker);
					});
				}
			}
		});
	}
	
	//동선그리기
	function flightPath() {
		for (i in travelPathArray) {
			travelPathArray[i].setMap(null);
		}
		var lineSymbol = {
			    path: google.maps.SymbolPath.FORWARD_CLOSED_ARROW
			  };
		var flightPath = new google.maps.Polyline({
			path : Coordinates,
			strokeColor : "black",
			strokeOpacity : 0.5,
			strokeWeight : 3,
			icons: [{
			      icon: lineSymbol,
			      offset: '100%'
			    }]
		});
		flightPath.setMap(map);
		travelPathArray.push(flightPath);
	}
	
	function tilesLoaded() {
		google.maps.event.clearListeners(map, 'tilesloaded');
		google.maps.event.addListener(map, 'zoom_changed', search);
		google.maps.event.addListener(map, 'dragend', search);
		search();
	}

	function showSelectedPlace() {
		clearResults();
		clearMarkers();
		var place = autocomplete.getPlace();
		alert(place.geometry.location);
		map.panTo(place.geometry.location);
		markers[0] = new google.maps.Marker({
			position: place.geometry.location,
			map: map
		});
		iw = new google.maps.InfoWindow({
			content: getIWContent(place)
		});
		iw.open(map, markers[0]);
	}

	function search() {
		var type;
		for (var i = 0; i < document.controls.type.length; i++) {
			if (document.controls.type[i].checked) {
				type = document.controls.type[i].value;
			}
		}
		autocomplete.setBounds(map.getBounds());
		var search = {
			bounds: map.getBounds()
		};
		if (type != 'establishment') {
			search.types = [type];
		}
		places.search(search, function (results, status) {
			if (status == google.maps.places.PlacesServiceStatus.OK) {
				clearResults();
				clearMarkers();
				for (var i = 0; i < results.length; i++) {
					markers[i] = new google.maps.Marker({
						position: results[i].geometry.location,
						animation: google.maps.Animation.DROP
					});
					google.maps.event.addListener(markers[i], 'click', getDetails(results[i], i));
					setTimeout(dropMarker(i), i * 100);
					addResult(results[i], i);
				}
			}
		});
	}

	function clearMarkers() {
		for (var i = 0; i < markers.length; i++) {
			if (markers[i]) {
				markers[i].setMap(null);
				markers[i] == null;
			}
		}
	}

	function dropMarker(i) {
		return function () {
			markers[i].setMap(map);
		}
	}

	function addResult(result, i) {
		var results = document.getElementById('results');
		var tr = document.createElement('tr');
		tr.style.backgroundColor = (i % 2 == 0 ? '#F0F0F0' : '#FFFFFF');
		tr.onclick = function () {
			google.maps.event.trigger(markers[i], 'click');
		};
		var iconTd = document.createElement('td');
		var nameTd = document.createElement('td');
		var icon = document.createElement('img');
		icon.src = result.icon.replace('http:', '');
		icon.setAttribute('class', 'placeIcon');
		var name = document.createTextNode(result.name);
		iconTd.appendChild(icon);
		nameTd.appendChild(name);
		tr.appendChild(iconTd);
		tr.appendChild(nameTd);
		results.appendChild(tr);
	}

	function clearResults() {
		var results = document.getElementById('results');
		while (results.childNodes[0]) {
			results.removeChild(results.childNodes[0]);
		}
	}

	function getDetails(result, i) {
		return function () {
			places.getDetails({
				reference: result.reference
			}, showInfoWindow(i));
		}
	}

	function showInfoWindow(i) {
		return function (place, status) {
			if (iw) {
				iw.close();
				iw = null;
			}
			if (status == google.maps.places.PlacesServiceStatus.OK) {
				iw = new google.maps.InfoWindow({
					content: getIWContent(place)
				});
				iw.open(map, markers[i]);
			}
			
		}
		
	}

	function getIWContent(place) {
		var content = '<table style="border:0"><tr><td style="border:0;">';
		content += '<img class="placeIcon" src="' + place.icon + '"></td>';
		content += '<td style="border:0;"><b><a href="' + place.url + '">' + place.name + '</a></b>';
		content += '</td></tr></table>';
		return content;
	}
	google.maps.event.addDomListener(window, 'load', initialize);
	</script>
    <script type="text/javascript" src="https://maps.googleapis.com/maps/api/js?sensor=false&libraries=places"></script>
</head>

<body onload="initialize()">
	<gwd-doubleclick id="gwd-ad" polite-load=""> 
	<div is="gwd-pagedeck" class="gwd-page-container" id="pagedeck">
		<div is="gwd-page" id="page1"
			class="gwd-page-wrapper gwd-page-size gwd-lightbox gwd-div-8ehm"
			data-gwd-width="1280px" data-gwd-height="780px">
			<div class="gwd-page-content gwd-page-size gwd-div-1aei">
			
				<div class="gwd-div-19b4" style="" id="listing">
				  <table id="results"></table>
				  
				</div>
				<div class="gwd-div-16m9" style="border-style: solid;"></div>
				<div class="gwd-div-1e92" id="calander" style="">
					<input type="month"/>
				</div>
				<div class="gwd-div-1ka9" style="border-style: solid;"></div>
				
				
				<p class="gwd-p-19oj">
					<br class="">
				</p>
				
				<form name="controls">
				<p class="gwd-p-zobl" id="title1" style="border-style: solid;">숙소
					<input type="radio" name="type" value="lodging" onclick="search()" />
					<span class="gwd-span-1iwa">맛집</span> 
					<input type="radio" name="type" value="restaurant" onclick="search()" />
				</p>
				</form>
				
				<div class="gwd-div-2h60" style=""></div>
				<div class="gwd-div-ikgy" style="border-style: solid;" id="place1"></div>
				
				<div class="gwd-div-1wk8" style="border-style: solid;" id="place2"></div>
				
				<div class="gwd-div-1vxx" style="border-style: solid;" id="place3"></div>
				
				<div class="gwd-div-oojv" style="border-style: solid;" id="place4"></div>
				
				<div class="gwd-div-1d7o" id="planing1" style=""></div>
				<div class="gwd-div-1r07" id="planing2" style=""></div>
				<a href="help.do">
				<button id="bt1" class="mdl-button mdl-js-button mdl-button--raised mdl-button--accent">사용법</button></a>
				<a href="calander.do">
				<button id="bt2" class="mdl-button mdl-js-button mdl-button--raised mdl-button--accent">일정표</button></a>
				<button id="bt3" class="mdl-button mdl-js-button mdl-button--raised mdl-button--accent">플래너 초기화</button>
				<!-- Accent-colored flat button -->
				<button class="mdl-button mdl-js-button mdl-button--accent" id="bt4">출발일</button>
				<button class="mdl-button mdl-js-button mdl-button--accent" id="bt5">여행기간</button>
				<div class="mdl-textfield mdl-js-textfield" id="tf">
					<input class="mdl-textfield__input" type="text" id="sample3">
					<label class="mdl-textfield__label" for="sample3">Text...</label>
				</div>
				<button class="mdl-button mdl-js-button mdl-button--raised mdl-button--accent" id="bt5">플래너 저장</button>
						
				<div class="gwd-div-h7fg" id="planing3"></div>
				<gwd-map id="google_map" class="gwd-map-12mt"> </gwd-map>
			</div>
		</div>
		
	</div>
	</gwd-doubleclick>
</body>

</html>