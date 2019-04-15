<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>sdsdsadasd</h1>
<div class="ui card" style="width:100%;height:100%">
			<div class="content">	    
			    <img class="ui avatar image" src="/images/avatar/large/elliot.jpg"> ${dto.userid }
			    <span class="right floated">10 views</span>
		    </div>
		    <div class="image comImage" ><!-- Modal 이미지div -->
		  		<img src="/gymcarry/community/images/${dto.comImage}" >
		    </div>
			<div class="content">
			    <span class="right floated">
			      <i class="heart outline like icon"></i>
			      17 likes
			    </span>
			    <i class="comment icon"></i>
		   		 3 comments
		    </div>
	 	  <div class="extra content"><!-- 댓글DIV -->
		    
		      <p>${dto.comDes }</p>
		    
	  	  </div>
	 	  
	 	  <div class="extra content"><!-- 댓글DIV -->
		    <div class="ui large transparent left icon input">
		      <i class="heart outline icon"></i>
		      <input type="text" placeholder="Add Comment...">
		    </div>
	  	  </div>
	  </div>

</body>
</html>
	 	