<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page trimDirectiveWhitespaces="true"%>
<c:set var="path" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html class="no-js" lang="en">
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
		<!--메인 슬라이드쇼  참조 https://tympanus.net/codrops/ -->
		<!-- 그외 css 참조 https://www.w3schools.com -->
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
            <!-- top bar -->
            <div class="codrops-top">
                <a href="#">
                    <strong>&laquo; GYM CARRY 최고의 롤모델을 찾아서! </strong>
                </a>
                <span class="right">
                    <a href="#" target="_blank">GYM CARRY 앱 설치</a>
                    <a href="https://www.facebook.com/‎" target="_blank">
                    	<img src="${path }/resources/facebook.png"> <strong>페이스북</strong>
                    </a>
                    <a href="https://www.instagram.com/?hl=ko/">
                        <img src="${path }/resources/insta.png"> <strong>인스타그램</strong>
                    </a>
                </span>
                <div class="clr"></div>
            </div>
            	<!-- 상단 메뉴 -->
             <div id="menu"class="ui secondary right menu " style="font-family: 'Jua', sans-serif;font-size:18px;">
			  <a class="item"><img src="${path }/resources/gclogo.png" style="width:400px;height:250px"/></a>
			  <a class="item active">트레이너찾기 </a>
			  <a class="item">공지사항</a>
			  <a href="${path }/community.do" class="item">커뮤니티</a>
			  <a class="item">로그인</a>
			  <a href="${path }/userJoin.do"class="item">회원가입</a>
			  <a class="item">로그아웃</a>
			  <a class="item">짐프로틴 사러 가기</a>
			  <a class="item" style="background-color:#890422;border-radius: 10px; border-style:inherit;">트레이너신청하기</a>
			</div>
			<!-- 상단 메뉴 end -->
            
            <!--중단 포탈 -->
            <header id="portal">
                <h1>GYM CARRY <span>이용하는 방법</span></h1>
                <h2>&nbsp;&nbsp;&nbsp;&nbsp;  버튼을 누르면 해당 페이지로 이동합니다.</h2>
				<p class="codrops-demos">
					<a href="index.html">GYM CARRY 이용 방법</a>
					<a href="index2.html">트레이너가 되어 보세요.</a>  <!-- 트레이너신청하기페이지 -->
					<a href="index3.html">트레이너를 추천해 드려요!</a>
					<a href="index4.html">커뮤니티에 글 올리기!</a>
					<a href="index4.html">생활꿀팁</a>
				</p>
            </header>
            
            <!-- 타이틀1 -->
            <div id=title1>HOW TO USE GYM CARRY [user]</div>
            <!--사용방법 첫번째줄 -->
            
            	<div class="ui steps">
				  <div class="step">
				    <i class="address card icon"></i>
				    <div class="content">
				      <div class="title">회원가입 & 로그인</div>
				    </div>
				  </div>
				  <div class="step">
				    <i class="search icon"></i>
				    <div class="content">
				      <div class="title">트레이너 찾기<button style="background-color:#890422;border-radius: 10px; border-style:inherit;color:white;cursor:pointer;">Go!</button></div>
				    </div>
				  </div>
				  <div class="active step">
				    <i class="payment icon"></i>
				    <div class="content">
				      <div class="title">짐프로틴 구매 <button style="background-color:#890422;border-radius: 10px; border-style:inherit;color:white;cursor:pointer;">Go!</button> </div>
				    </div>
				  </div>
				</div>
			
				<!--사용방법 두번째줄 -->
				<br/>
				<div class="ui steps">
				  <div class="step">
				    <i class="american sign language interpreting icon"></i>
				    <div class="content">
				      <div class="title">pt요청 & 짐프로틴 지불</div>
				    </div>
				  </div>
				  <div class="step">
				    <img src="${path }/resources/logoct.png" style="width:40px;"/>
				    <div class="content">
				      <div class="title">매칭된 트레이너와 PT시작!</div>
				    </div>
				  </div>
				</div>
           
           	<!-- 타이틀 -->
           	<div id= title2>HOW TO USE GYM CARRY [trainer]</div>
           	
           		<div class="ui steps">
				  <div class="step">
				    <i class="address card icon"></i>
				    <div class="content">
				      <div class="title">회원가입 & 로그인</div>
				    </div>
				  </div>
				  <div class="step">
				    <i class="file alternate outline icon"></i>
				    <div class="content">
				      <div class="title">트레이너 신청하기<button style="background-color:#890422;border-radius: 10px; border-style:inherit;color:white;cursor:pointer;">Go!</button></div>
				    </div>
				  </div>
				  <div class="active step">
				    <i class="comments outline icon"></i>
				    <div class="content">
				      <div class="title">내 프로필에 요청이 들어오면 수락여부 결정<button style="background-color:#890422;border-radius: 10px; border-style:inherit;color:white;cursor:pointer;">Go!</button> </div>
				    </div>
				  </div>
				</div>
           		<br/>
				<div class="ui steps">
				  <div class="step">
				    <i class="american sign language interpreting icon"></i>
				    <div class="content">
				      <div class="title">짐프로틴 수령 & 매칭성사</div>
				    </div>
				  </div>
				  <div class="step">
				    <img src="${path }/resources/logoct.png" style="width:40px;"/>
				    <div class="content">
				      <div class="title">매칭된 분과 PT시작!</div>
				    </div>
				  </div>
				</div>
           	
           	
           	<!-- 타이틀 -->
           	<div id= title3>RECOMMENDED MONTHLY TRAINERS</div>
           	<!-- 추천트레이너 --> 
            <div id="trainers"> <!-- float-frame 과 unit의미없음   -->
       			<div class="container float-unit">
				  	<img src="${path }/resources/selfi1.jpg" alt="Avatar" class="image ui medium rounded" style="height:250px">
				  	<div class="overlay">
					    <div class="text"><i class="user circle outline icon"></i>
					    <span id="email">yslg86@naver.com</span><hr/> <!-- email적는란 -->
					    <span id="comment">헬스 경력 2년차입니다. 처음 입문하시는 분들께 도움이 되고 싶어요!</span> <!-- 코멘트적는란 -->
				    	</div>
				  	</div>
				</div>
				<div class="container float-unit">
				  	<img src="${path }/resources/selfi2.jpg" alt="Avatar" class="image ui medium rounded" style="height:250px">
				  	<div class="overlay">
					    <div class="text"><i class="user circle outline icon"></i>
					    <span id="email">yslg86@naver.com</span><hr/> <!-- email적는란 -->
					    <span id="comment">헬스 경력 3년차입니다. 처음 입문하시는 분들께 도움이 되고 싶어요!</span> <!-- 코멘트적는란 -->
				    	</div>
				  	</div>
				</div>
				<div class="container float-unit">
				  	<img src="${path }/resources/selfi3.jpg" alt="Avatar" class="image ui medium rounded" style="height:250px">
				  	<div class="overlay">
					    <div class="text"><i class="user circle outline icon"></i>
					    <span id="email">yslg86@naver.com</span><hr/> <!-- email적는란 -->
					    <span id="comment">헬스 경력 4년차입니다. 처음 입문하시는 분들께 도움이 되고 싶어요!</span> <!-- 코멘트적는란 -->
				    	</div>
				  	</div>
				</div>
				<div class="container float-unit">
				  	<img src="${path }/resources/selfi4.jpg" alt="Avatar" class="image ui medium rounded" style="height:250px">
				  	<div class="overlay">
					    <div class="text"><i class="user circle outline icon"></i>
					    <span id="email">yslg86@naver.com</span><hr/> <!-- email적는란 -->
					    <span id="comment">헬스 경력 5년차입니다. 처음 입문하시는 분들께 도움이 되고 싶어요!</span> <!-- 코멘트적는란 -->
				    	</div>
				  	</div>
				</div>
				<div class="container float-unit">
				  	<img src="${path }/resources/selfi5.jpg" alt="Avatar" class="image ui medium rounded" style="height:250px">
				  	<div class="overlay">
					    <div class="text"><i class="user circle outline icon"></i>
					    <span id="email">yslg86@naver.com</span><hr/> <!-- email적는란 -->
					    <span id="comment">헬스 경력 6년차입니다. 처음 입문하시는 분들께 도움이 되고 싶어요!</span> <!-- 코멘트적는란 -->
				    	</div>
				  	</div>
				</div>
				<div class="container float-unit">
				  	<img src="${path }/resources/selfi6.jpg" alt="Avatar" class="image ui medium rounded" style="height:250px">
				  	<div class="overlay">
					    <div class="text"><i class="user circle outline icon"></i>
					    <span id="email">yslg86@naver.com</span><hr/> <!-- email적는란 -->
					    <span id="comment">헬스 경력 2년차입니다. 처음 입문하시는 분들께 도움이 되고 싶어요!</span> <!-- 코멘트적는란 -->
				    	</div>
				  	</div>
				</div>
	
        	</div>
        
        	
        	<div id="title4">JOIN COMMUNITY</div>
        	<div id="com">
        		
        	</div>
        	
        	<div>
        		GYM CARYY 꿀팁zzzzzzz
        	</div>
        	
        	
        	<!-- 따라다니는 버튼 -->
        	<a href="#">
	        	<div id="top">
					<i class= "arrow up icon" style="width:20px" ></i>
				</div>
			</a>
        </div>
        
        
    </body>
    
<style>
	body{font-family: 'Jua', sans-serif;color:white }
	#menu a{color:white}
	#portal{margin-left:27%}
	#portal a{font-size:15px}	
	#com{clear:both;} /* float-left 종료시키기 */
	#trainers{margin-left:220px }
	#title1, #title2, #title3{text-algin:center;margin-top:400px;margin-bottom:50px;font-size:30px}
	#title4{text-algin:center;margin-top:650px;font-size:30px}
		
	.float-unit{float:left;margin-left:10px;margin-bottom:10px;position: relative;width: 200px;}		
	.image {
	  display: block;
	  width: 100%;
	  height: auto;
	}
	
	.overlay {
	  position: absolute;
	  top: 0;
	  bottom: 0;
	  left: 0;
	  right: 0;
	  height: 100%;
	  width: 100%;
	  opacity: 0;
	  transition: .5s ease;
	  background-color: #008CBA;
	}
	
	#trainers .container:hover .overlay {
	  opacity: 0.7;
	}
	
	.text {
	  color: white;
	  font-size: 15px;
	  position: absolute;
	  top: 50%;
	  left: 50%;
	  -webkit-transform: translate(-50%, -50%);
	  -ms-transform: translate(-50%, -50%);
	  transform: translate(-50%, -50%);
	  text-align: center;
	}
	/* 고정돼있는 버튼 */
	#top{ position:fixed; width:30px;height:20px; 
		right:20px; /* 창에서 오른쪽 길이 */ 
		top:97%; /* 창에서 위에서 부터의 높이 */ 
		border-radius:50%;
		background-color:white ;
		color :#890422;
		}
	
			
</style>

<script>
	function closex(){  //광고 닫는 함수 
		const closex = document.getElementById('carousel-example-generic');
		closex.style.display='none';
	}
	
</script>
    
</html>