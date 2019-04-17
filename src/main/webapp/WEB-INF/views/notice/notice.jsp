<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page trimDirectiveWhitespaces="true"%>
<c:set var="path" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1"/>
<title>게시판 리스트</title>

<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/css/bootstrap.min.css" integrity="sha384-GJzZqFGwb1QTTN6wy59ffF1BuGJpLSa9DkKMp0DgiMDm4iYMj70gZWKYbI706tWS" crossorigin="anonymous">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/js/bootstrap.min.js" integrity="sha384-B0UglyR+jN6CkvvICOB2joaf5I4l3gm9GU6Hc1og6Ls7i6U/mkkaduKaBhlAXv9k" crossorigin="anonymous"></script>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/semantic-ui/2.4.1/semantic.css">
<link href="https://fonts.googleapis.com/css?family=Jua" rel="stylesheet"> <!-- 구글폰트 -->
<style>
	.row{text-align:center}
	.wordCut{white-space:nowrap; overflow:hidden; text-overflow:ellipsis}
	A:link{text-decoration: none; color:black}
	A:hover{text-decoration:none;color:black}
	A:visited{text-decoration: none;color:black}
	A:active{text-decoration: none;color:black}

</style>
<%@ include file="../include/menu.jsp" %>
</head>
<body>
  <div class="container" style="font-family: 'Jua', sans-serif">
  	<div class=list-group style="font-size:23px">
  		<div style="font-size:40px;">공지사항 </div><br/>
  		<span>이벤트와 새로운 알림을 확인하세요!1</span><br/><br/><br/>
  		<c:forEach var="dto" items="${list}">
  			<form action="${path}/notice/view/${dto.noticeno}" id="submit${dto.noticeno}" method="get" >
  			  <div class="list-group-item list-group-item-action"  style="border-radius:10px;cursor:pointer;" onClick="noticeSubmit(${dto.noticeno});">
  			  
				<span class = label style="background:#4DD0FA;font-size:15px;">${dto.noticeno }</span>
				<div class="wordCut" style="margin-top:10px">${dto.title }<i class = "chevron right icon" style=float:right></i></div>
				<div style="color:#99999B;font-size:10px;margin-top:10px ">${dto.regdate }</div>
				
			  
			  </div>
			</form>
		</c:forEach>
	</div>
  </div>
  
 
</body>
<script>

 function noticeSubmit(notice){
	document.querySelector('#submit'+notice).submit();
	
	/* const targetForm = ;
	 console.log(targetForm)
	 targetForm.submit(); */
 }
</script>
</html>
