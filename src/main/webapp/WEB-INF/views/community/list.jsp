<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/semantic-ui/2.4.1/semantic.css">
<script src="https://code.jquery.com/jquery-3.1.1.min.js"   integrity="sha256-hVVnYaiADRTO2PzUGmuLJr8BLUSjGIZsDYGmIJLv2b8="  crossorigin="anonymous"></script>
<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/semantic-ui/2.4.1/semantic.js"></script>

<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/Faker/3.1.0/faker.js"></script>



<style>
	img{
		width:100%;
	}
	.container{
		width:80%;
		margin-left:10%;
	}

</style>
</head>
<%@ include file="../include/menu.jsp" %>

<body>
	
	<div class="container">
		<div style="margin:20px;">
			<button onClick="clickUploadBtn()">사진올리기</button>
		</div>
		<div class="ui grid three column">
			<c:forEach var="dto" items="${list}">
			
				<img src="${path }/community/images/${dto.comImage}" />
				
			</c:forEach>
		<!-- 이미지들어갈곳 -->
		</div>
	</div>
	
	<!-- 이미지모달 -->
	<div class="ui mini modal" >
	  <i class="close icon"></i>	 
	  <div class="ui card" style="width:100%;height:100%">
		  <div class="content">	    
		    <img class="ui avatar image" src="/images/avatar/large/elliot.jpg"> Elliot
		    <span class="right floated">10 views</span>
		  </div>
		   <div class="image comImage" >
		   	 <img src="" >
		  </div>
		  <div class="content">
		    <span class="right floated">
		      <i class="heart outline like icon"></i>
		      17 likes
		    </span>
		    <i class="comment icon"></i>
	   		 3 comments
	 	  </div>
	 	  <div class="extra content">
		    <div class="ui large transparent left icon input">
		      <i class="heart outline icon"></i>
		      <input type="text" placeholder="Add Comment...">
		    </div>
	  	  </div>
	  </div>
	</div>
	<!-- 이미지모달 -->
	<!-- 업로드 모달 -->
	<div class="ui tiny modal" >
		<div class="header">업로드</div>
		<div class="content">
			<form action="${path}/community/upload.do" method="post" enctype="multipart/form-data">
				<input type="file" name="comImage" /><hr/>				
				글내용 
				<input type="text" name="comDes" style="width:100%;height:300px;"/>
				<input type="text" name="userid" value="khdrogba"/>
				<input type="submit" value="게시"/>	
			</form>		
			
		</div>
	</div>
	<!-- 업로드모달 -->
</body>
<script>
	const grid = document.querySelector(".ui.grid");
	
	/* //이미지생성 */
	const createImage = () =>{
		for(var i=0;i<10;i++){
			let img = faker.image.avatar(); //이미지불러옴
			//console.log(img);
			grid.innerHTML += '<div class="column" onClick="clickImage(event)" ><img src='+img+' /></div>';
			
		}
		
	}
	

	//이미지 클릭 이벤트
	function clickImage(e){
		let comImage = document.querySelector(".comImage");
		//comImage.addEventListener("click",function(){
			let img = faker.image.avatar(); //모달 이미지불러옴
			comImage.innerHTML = "<div><img src="+img+" /></div>"
				
			
			$(function(){
				$('.ui.mini.modal').modal('show');	
			})
	}

	//이미지 업로드 버튼클릭
	function clickUploadBtn(){
		$(function(){
			$('.ui.tiny.modal').modal('show');	
		})
	}
	
		
		
	function init(){
		createImage();

	}
	init();

	
	
	
	
</script>

</html>