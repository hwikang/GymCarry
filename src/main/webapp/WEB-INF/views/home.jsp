<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:set var="path" value="${pageContext.request.contextPath }" />
<%@ page session="false" %>
<html>
<head>
	<title>Gym Carry</title>
<!-- 합쳐지고 최소화된 최신 CSS -->
<script src='//unpkg.com/jquery@3/dist/jquery.min.js'></script>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">

<!-- 부가적인 테마 -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">

<!-- 합쳐지고 최소화된 최신 자바스크립트 -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>

</head>
<body>

<div id="carousel-example-generic" class="carousel slide" data-ride="carousel">
  <!-- Indicators -->
  
  <a style="margin-left:83%; cursor:pointer;color:black"; onclick='closex()'>닫기&times;</a>
  
  <ol class="carousel-indicators">
    <li data-target="#carousel-example-generic" data-slide-to="0" class="active"></li>
    <li data-target="#carousel-example-generic" data-slide-to="1"></li>
    <li data-target="#carousel-example-generic" data-slide-to="2"></li>
  </ol>
	
  <!-- Wrapper for slides -->
  <div class="carousel-inner" role="listbox">
    <div class="item active d-flex justify-content-center" >
      <img src="${path }/resources/danback.png" style="width:250px; height:80px" />
      <div class="carousel-caption">
        <a href=https://www.spomax.kr>
       		 보충제는 스포맥스!
       		 www.spomax.kr
        </a>‎
      </div>
      
    </div>
    <div class="item">
      <img src="${path }/resources/costco.png" style="width:250px; height:80px"/>
      <div class="carousel-caption">
        <a href='https://www.costco.co.kr/SportsFitnessCamping/FitnessExercise/Fitness-Equipment/c/cos_4.1.2'>
        	헬스 기구 전문
       		 코스트코 특가 세일중
        </a>
      </div>
    </div>
    <div class="item">
      <img src="${path }/resources/gs.jpg" style="width:300px; height:80px";/>
      <div class="carousel-caption">
         <a href="#">
          GetterSetter에서 당신의 재능을 뽐내보세요
          
         </a>
      </div>
    </div>
  </div>

  <!-- Controls -->
  <a class="left carousel-control" href="#carousel-example-generic" role="button" data-slide="prev">
    <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
    <span class="sr-only">Previous</span>
  </a>
  <a class="right carousel-control" href="#carousel-example-generic" role="button" data-slide="next">
    <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
    <span class="sr-only">Next</span>
  </a>
</div>
<div id="mainImg" >
<%@ include file="include/menu.jsp" %>
</div>

</body>
<style>
	body{font-family: 'Jua', sans-serif; }
	.carousel-inner img{position:relative;margin-left:30%;}  /* 광고 이미지 위치 */
	.carousel-caption{font-size:20px;margin-left:20%; } /*  광고 문구 */
	.carousel-inner a{color:black}
	#mainImg{height: 500px;margin:auto 0px;padding:0px;
			background-image: url("${path }/resources/gigu.jpg");
			background-repeat: no-repeat;
			background-size: cover;
			background-position:40% 0px;
			 }
</style>
<script>
	function closex(){  //광고 닫는 함수 
		const closex = document.getElementById('carousel-example-generic');
		alert(closex)
		closex.style.display='none';
	}
</script>
</html>

