<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page trimDirectiveWhitespaces="true"%>
<c:set var="path" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<!--[if lt IE 7 ]> <html class="ie ie6 no-js" lang="en"> <![endif]-->
<!--[if IE 7 ]>    <html class="ie ie7 no-js" lang="en"> <![endif]-->
<!--[if IE 8 ]>    <html class="ie ie8 no-js" lang="en"> <![endif]-->
<!--[if IE 9 ]>    <html class="ie ie9 no-js" lang="en"> <![endif]-->
<!--[if gt IE 9]><!--><html class="no-js" lang="en"><!--<![endif]-->
    <head>
    	<title>GYM CARRY</title>
        <meta charset="UTF-8" />
        <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">  
        <title>Fullscreen Background Image Slideshow with CSS3ssS</title>
        <meta name="viewport" content="width=device-width, initial-scale=1.0"> 
        <meta name="description" content="Fullscreen Background Image Slideshow with CSS3 - A Css-only fullscreen background image slideshow" />
        <meta name="keywords" content="css3, css-only, fullscreen, background, slideshow, images, content" />
        <meta name="author" content="Codrops" />
        <link rel="shortcut icon" href="../favicon.ico"> 
        <link rel="stylesheet" type="text/css" href="${path}/mainSlide/css/demo.css" />
        <link rel="stylesheet" type="text/css" href="${path}/mainSlide/css/style2.css" />
		<script type="text/javascript" src="${path}/mainSlide/js/modernizr.custom.86080.js"></script>
		
		<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/semantic-ui/2.4.1/semantic.css">
		<link href="https://fonts.googleapis.com/css?family=Jua" rel="stylesheet"> <!-- 구글폰트 -->
		
    </head>
    <body id="page">
        <ul class="cb-slideshow">
            <li><span>Image 01</span><div><h3>No sweat, no sweet</h3></div></li>
            <li><span>Image 02</span><div><h3>Faith without deeds is useless.</h3></div></li>
            <li><span>Image 03</span><div><h3>United we stand, divided we fall.</h3></div></li>
            <li><span>Image 04</span><div><h3>Weak things united become strong.</h3></div></li>
            <li><span>Image 05</span><div><h3>The will of a man is his happiness.</h3></div></li>
            <li><span>Image 06</span><div><h3>All fortune is to be conquered by bearing it.</h3></div></li>
        </ul>
        <div class="container">
            <!-- Codrops top bar -->
            <div class="codrops-top">
                <a href="#">
                    <strong>&laquo; GYM CARRY 최고의 롤모델을 찾아서! </strong>
                </a>
                <span class="right">
                    <a href="#" target="_blank">GYM CARRY 앱 설치</a>
                    <a href="https://www.facebook.com/‎" target="_blank">페이스북</a>
                    <a href="https://www.instagram.com/?hl=ko/">
                        <strong>인스타그램</strong>
                    </a>
                </span>
                <div class="clr"></div>
            </div>
            	<!-- 상단 메뉴 -->
             <div id="menu"class="ui secondary right menu" style="font-family: 'Jua', sans-serif;font-size:18px;margin:auto 0px;padding:0px;">
			  <a class="item"><img src="${path }/resources/gclogo.png" style="width:400px;height:300px"/></a>
			  <a class="item active">트레이너찾기 </a>
			  <a class="item">공지사항</a>
			  <a href="${path }/community.do" class="item">커뮤니티</a>
			  <a class="item">로그인</a>
			  <a class="item">로그아웃</a>
			  <a class="item">트레이너신청하기</a>
			  <a class="item" style="background-color:#890422;border-radius: 10px">짐프로틴 사러 가기</a>
			</div>
			<!-- 상단 메뉴 end -->
            <header id="portal">
                <h1>GYM CARRY <span>이용하는 방법</span></h1>
                <h2>버튼을 누르면 해당 페이지로 이동합니다.</h2>
				<p class="codrops-demos">
					<a href="index.html">GYM CARRY 이용 방법</a>
					<a class="current-demo" href="index2.html">트레이너가 되어 보세요.</a>
					<a href="index3.html">트레이너를 추천해 드려요!</a>
					<a href="index4.html">인스타그램에 자랑하기!</a>
					<a href="index4.html">생활꿀팁</a>
				</p>
            </header>
            <div>
            	이용방법
            </div>
            <div>
            	지금 트레이너가 되세요!
            </div>
            <div>
       			 이사람 어때요?
        	</div>
        	<div>
        		인스타그램zz
        	</div>
        	<div>
        		GYM CARYY 꿀팁
        	</div>
        </div>
        
    </body>
    
	<style>
		body{font-family: 'Jua', sans-serif;color:white }
		#menu a{color:white}
		#portal{margin-left:30%}
			
		
	</style>
	<script>
	function closex(){  //광고 닫는 함수 
		const closex = document.getElementById('carousel-example-generic');
		closex.style.display='none';
	}
	
	</script>
    
</html>