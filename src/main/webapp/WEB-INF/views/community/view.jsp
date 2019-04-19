<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

</head>
<%@ include file="../include/menu.jsp" %>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/semantic-ui/2.4.1/semantic.css">
<script src="https://code.jquery.com/jquery-3.1.1.min.js"   integrity="sha256-hVVnYaiADRTO2PzUGmuLJr8BLUSjGIZsDYGmIJLv2b8="  crossorigin="anonymous"></script>
<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/semantic-ui/2.4.1/semantic.js"></script>

<style>

</style>
<body>
<!-- (글을 보는)사용자의 액션 -->
<form name="form" method="post" >
	<%-- <input type="hidden" name="comNo" value="${dto.comNo}"> --%>
	<input type="hidden" name="comImage" value="${dto.comImage}">
	<input type="hidden" name="userid" value="khdrogba"/> <!-- 보는 userid -->
	
</form>
<!-- 왼쪽 -->
<div class="ui grid">
	<div class="one wide column"></div>
	
	<div class="five wide column">
		<div class="ui container left aligned" >
			<div class="ui grid" style="margin-top:10px;">	    
			    <div class="two wide column"></div>
			    <div class="four wide column">
			    	<img class="ui avatar image" src="/gymcarry/resources/profile.png" > 
			    	<span>${dto.userid }</span>
			  	</div>
			    <div class="ui four wide column"></div>
			    <span class="ui four wide column">${dto.views } views</span>
			    <div class="two wide column"></div>
		    </div>
		    <div class="ui divider"></div>
		    <div class="ui container center aligned" ><!-- Modal 이미지div -->
		  		<img src="/gymcarry/community/images/${dto.comImage}" style="width:100%;border-radius:15px" >
		    </div>
		    
		    <div class="ui divider"></div>
		</div>
	</div>
<!-- 오른쪽 -->	
 	<div class="ten wide column" style="margin-top:4%">
 		<div class="ui grid right aligned" >			    
			    <div class="two wide column" onClick="clickEditBtn()">
			    	<div class="ui labeled button" tabindex="0">
					  <div class="ui teal button">
					   	<i class="edit icon"></i>Edit			     		
					  </div>
					  <a class="ui basic teal left pointing label">
					  	 <span>수정</span>	
					  </a>
				    </div>		    	
			    </div>
			    <div class="two wide column"  onClick="clickDeleteBtn()">
				    <div class="ui labeled button" tabindex="0">
						  <div class="ui grey button">
						   	<i class="eraser icon" style="width:10px"></i>Delete		     		
						  </div>
						  <a class="ui basic grey left pointing label">
						  	 <span>삭제</span>			
						  </a>
					    </div>	    	
			    </div>
			   
			    <div class="two wide column">
				    <div class="ui labeled button" tabindex="0" onclick="clickLike()">
					  <div class="ui red button">
					  	<c:if test="${like==1}">
					  		<i class="heart icon"  id="likeIcon" ></i> Like			  
					  	</c:if>
					  	<c:if test="${like==0 }">
					  		<i class="heart outline icon"  id="likeIcon" ></i> Like
					  	</c:if>
					    
					  </div>
					  <a class="ui basic red left pointing label">
					    <span>${dto.likes }</span>
					  </a>
				    </div>
				</div>

			    <div class="two wide column">
			    	<div class="ui labeled button" tabindex="0">
					  <div class="ui blue button">
					   <i class="comment icon"></i> Reply
					  </div>
					  <a class="ui basic blue left pointing label">
					   <span>${dto.replys }</sapn>		
					  </a>
				    </div>
			     	
		   				     	
			    </div>
			</div>
	 	  <div style="margin-top:50px"><!-- 댓글DIV -->
		   
		      ${dto.comDes }
		    
	  	  </div>
	 	  <div class="ui divider"></div>
			<!-- 댓글 입력 DIV -->
			<form method="post" action="${path }/community/reply/${dto.comNo}">
			    <div class="ui huge transparent input" style="width:100%">
			      <i class="heart outline icon"></i>
			      <input type="text" placeholder="Add Comment..." name="replyDes" style="width:80%;">
			      <input type="hidden" name="comNo" value="${dto.comNo }"/>
			      <input type="hidden" name="userid" value="khdrogba"/>  <!-- 접속자 아이디-->
			      <input type="submit" value="Add">
			    </div>
			    
		    </form>
			<!-- 댓글 리스트 -->
			<div class="ui list">
			  <c:forEach var="dto" items="${replyList}">
				  	<div class="item">
				    	<img class="ui avatar image" src="${path}/resources/profile.png">
						<div class="content">
						    <a class="header">${dto.userid}</a>
						    <a id=replyEdit onclick="editInputAppear(event)">수정</a>
						    <a onClick="replyDeleteBtn(event)">삭제</a>
						    <div class="description">
						    	<p id="replyDes">${dto.replyDes }</p>
						    	<div id="replyDesInput" style="display:none;">
						    		<form name="form2" method="post" id="form2" onSubmit="replyEditBtn(event)">
							    		<input type="text" name="replyDes" value="${dto.replyDes }" />
							    		<input type="hidden" name="replyNo" value="${dto.replyNo}"/>
							    		<input type="hidden" name="comNo" value="${dto.comNo}"/>
							    		<input type="submit" value="수정" onclick="replyEditBtn(event)"/>								    								    									    		
						    		</form>
						    	</div>
						    	
						    </div>
						    <div class="ui divider"></div>
						    <span>${dto.regdate}</span>
				   		</div>
			  		</div>			  
			  </c:forEach>			 
			<!-- 댓글 리스트 -->
	
	  </div>
	  
 	</div>
	
</div>


	<!-- 업로드 모달 -->
	<div class="ui tiny modal" >
		<div class="header">수정</div>
		<div class="content">
			<form action="${path}/community/edit/${dto.comNo}" method="post" enctype="multipart/form-data">
				<div>
					<label for="comImage">
						<img src="${path}/community/images/${dto.comImage}" style="width:50%;margin-left:25%"/>
					</label>
					<input type="file" name="comImage" id="comImage" style="display:none;"/>
				</div>
				<hr/>				
				글 내용 
				<input type="text" name="comDes" style="width:100%;height:300px;" value="${dto.comDes}"/>
				
				<input type="hidden" name="userid" value="${dto.userid }"/>
				<input type="hidden" name="priorImage" value="${dto.comImage}"/>				
				<div>
					<input type="submit" value="수정" class="ui blue button" style="width:100%"/>	
				</div>
			</form>		
			
		</div>
	</div>
	<!-- 업로드모달 -->
</body>

<script src="${path}/js/view.js"></script>
<script>
//const replyEdit = document.querySelectorAll("#replyEdit");  //수정버튼

console.log("${path}")
const clickLike = () =>{
	const likeIcon = document.querySelector("#likeIcon");
	
	//likeIcon.classList.toggle("outline") //하트모양바꾸기
	
	if(likeIcon.classList.contains("outline")){
		//like
		document.form.action="${path}/community/like/${dto.comNo}"
		document.form.submit();
		
	}else{
		//여기는 unlike
		document.form.action="${path}/community/unlike/${dto.comNo}"
		document.form.submit();
	}
	
	
}

const editInputAppear = (event) =>{
	console.log(event)
	console.log(event.target.parentElement)
	const editInputDiv = event.target.parentElement;
	
	const replyDes = editInputDiv.querySelector("#replyDes");		//댓글내용
	const replyDesInput = editInputDiv.querySelector("#replyDesInput"); //수정인풋
	
	console.log(replyDes)
	if(replyDes.style.display==="none"){
		replyDes.style.display="block";
		replyDesInput.style.display="none";
	}else{
		replyDes.style.display="none";
		replyDesInput.style.display="block";
	} 
}


const clickEditBtn = () =>{
	console.log("edit btn clicked");
	$(function(){
		$('.ui.tiny.modal').modal('show');	
	});
}
const clickDeleteBtn = () =>{
	console.log("elete btn clicked");
	if(confirm("are you sure?")){
		document.form.action="${path}/community/delete/${dto.comNo}";
		
		document.form.submit();
	}else{
		
	}
}

 const replyEditBtn = (event) =>{
	console.log("btn 호출")
	event.preventDefault()
	const eventForm =event.target.parentElement
	eventForm.action="${path}/community/replyEdit"
	eventForm.submit();
}
 
const replyDeleteBtn = (event) =>{
	if(confirm("진짜 삭제할거에여?")){
		console.log(event.target.parentElement)
		const eventForm = event.target.parentElement.querySelector("#form2");
		eventForm.action="${path}/community/replyDelete"
		eventForm.submit();
	
	}	

}



</script>
</html>
	 	