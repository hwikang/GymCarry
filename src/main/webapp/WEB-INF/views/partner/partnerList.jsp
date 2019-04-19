<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page trimDirectiveWhitespaces="true"%>
<c:set var="path" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>마커에 인포윈도우 표시하기</title>
    
</head>
<%@ include file="../include/menu.jsp" %>

<body>
<div id="map" style="width:100%;height:350px;"></div>

<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=a2e4394625f5dca9ab561d855a1aa6f1"></script>
<script>
	var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
	    mapOption = { 
	        center: new daum.maps.LatLng(33.450701, 126.570667), // 지도의 중심좌표
	        level: 3 // 지도의 확대 레벨
	    };
	//지도 생성
	var map = new daum.maps.Map(mapContainer, mapOption);
	

	
	
	// 마커가 표시될 위치입니다 
	var markerPosition  = new daum.maps.LatLng(33.450701, 126.570667); 
	
	// 마커를 생성합니다
	var marker = new daum.maps.Marker({
	    position: markerPosition
	});
	
	// 마커가 지도 위에 표시되도록 설정합니다
	marker.setMap(map);
	
	var iwContent = '<div style="padding:5px;">Hello World! <br><a href="http://map.daum.net/link/map/Hello World!,33.450701,126.570667" style="color:blue" target="_blank">큰지도보기</a> <a href="http://map.daum.net/link/to/Hello World!,33.450701,126.570667" style="color:blue" target="_blank">길찾기</a></div>', // 인포윈도우에 표출될 내용으로 HTML 문자열이나 document element가 가능합니다
	    iwPosition = new daum.maps.LatLng(33.450701, 126.570667); //인포윈도우 표시 위치입니다
	
	// 인포윈도우를 생성합니다
	var infowindow = new daum.maps.InfoWindow({
	    position : iwPosition, 
	    content : iwContent 
	});
	  
	// 마커 위에 인포윈도우를 표시합니다. 두번째 파라미터인 marker를 넣어주지 않으면 지도 위에 표시됩니다
	infowindow.open(map, marker); 
	
	
	function init(){
		/* var options = {
				  enableHighAccuracy: true,
				  timeout: 5000,
				  maximumAge: 0
				};

				function success(pos) {
				  var crd = pos.coords;

				  console.log('Your current position is:');
				  console.log(`Latitude : ${crd.latitude}`);
				  console.log(`Longitude: ${crd.longitude}`);
				  console.log(`More or less ${crd.accuracy} meters.`);
				}

				function error(err) {
				  console.warn(`ERROR(${err.code}): ${err.message}`);
				}

				navigator.geolocation.getCurrentPosition(success, error, options); */
 		
		navigator.geolocation.getCurrentPosition(function(pos){
			alert('d?')
			let latitude = pos.coords.latitude;
			let longitude = pos.coords.longitude;
			alert(latitude+":"+longitude);
		}) 
	}
	init();
</script>
</body>
</html>