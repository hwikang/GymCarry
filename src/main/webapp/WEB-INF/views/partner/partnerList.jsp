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
<div class="ui placeholder segment">
 <div class="ui two column very relaxed stackable grid">
	<div class="column" style="width:30%">
		
	</div>
	<div class="middle aligned column" style="width:70%">
		<div id="map" style="width:100%;height:700px;"></div>
	</div>
	
	 <div class="ui vertical divider"></div>
	 </div>
</div>


<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=a2e4394625f5dca9ab561d855a1aa6f1"></script>

<script>
	
	let userLat =0;
	let userLong = 0;
	
	console.log("${list}")
	let list ="${list}";
	
	var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
	    mapOption = { 
	        center: new daum.maps.LatLng(33.450701, 126.570667), // 지도의 중심좌표
	        level: 3 // 지도의 확대 레벨
	    };
	//지도 생성
	var map = new daum.maps.Map(mapContainer, mapOption);
	// 일반 지도와 스카이뷰로 지도 타입을 전환할 수 있는 지도타입 컨트롤을 생성합니다
	var mapTypeControl = new daum.maps.MapTypeControl();

	// 지도에 컨트롤을 추가해야 지도위에 표시됩니다
	// daum.maps.ControlPosition은 컨트롤이 표시될 위치를 정의하는데 TOPRIGHT는 오른쪽 위를 의미합니다
	map.addControl(mapTypeControl, daum.maps.ControlPosition.TOPRIGHT);
	// 지도 확대 축소를 제어할 수 있는  줌 컨트롤을 생성합니다
	var zoomControl = new daum.maps.ZoomControl();
	map.addControl(zoomControl, daum.maps.ControlPosition.RIGHT);
	

	
	function setMarker(){
		// 마커가 표시될 위치입니다 
		if(userLat!==0){
			var markerPosition  = new daum.maps.LatLng(userLat, userLong); 
			// 마커를 생성합니다
			var marker = new daum.maps.Marker({
			    position: markerPosition
			});
			// 마커가 지도 위에 표시되도록 설정합니다
			marker.setMap(map);
		}
		var iwContent = '<div style="padding:5px;">Hello World! <br><a href="http://map.daum.net/link/map/Hello World!,33.450701,126.570667" style="color:blue" target="_blank">큰지도보기</a> <a href="http://map.daum.net/link/to/Hello World!,33.450701,126.570667" style="color:blue" target="_blank">길찾기</a></div>', // 인포윈도우에 표출될 내용으로 HTML 문자열이나 document element가 가능합니다
	    iwPosition = new daum.maps.LatLng(userLat, userLong); //인포윈도우 표시 위치입니다
	
		// 인포윈도우를 생성합니다
		var infowindow = new daum.maps.InfoWindow({
		    position : iwPosition, 
		    content : iwContent 
		});
		  
		// 마커 위에 인포윈도우를 표시합니다. 두번째 파라미터인 marker를 넣어주지 않으면 지도 위에 표시됩니다
		infowindow.open(map, marker); 

	}
	

	

	


	function getLocation(){
		navigator.geolocation.getCurrentPosition(function(pos){
			userLat = pos.coords.latitude;
			userLong = pos.coords.longitude;
			alert(userLat+":"+userLong);
			function setCenter() {            
			    // 이동할 위도 경도 위치를 생성합니다 
			    var moveLatLon = new daum.maps.LatLng(33.450580, 126.574942);			    
			    // 지도 중심을 이동 시킵니다
			    map.setCenter(moveLatLon);
			}
			
			function panTo() {
			    // 이동할 위도 경도 위치를 생성합니다 
			    var moveLatLon = new daum.maps.LatLng(userLat, userLong);
			    
			    // 지도 중심을 부드럽게 이동시킵니다
			    // 만약 이동할 거리가 지도 화면보다 크면 부드러운 효과 없이 이동합니다
			    map.panTo(moveLatLon);            
			} 
			setCenter();
			panTo();			
			setMarker();
			
		});
	}
	
	
	function init(){
		getLocation();

	}
	init();
	
</script>
</body>
</html>