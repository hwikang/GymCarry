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
<title>view</title>

<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/css/bootstrap.min.css" integrity="sha384-GJzZqFGwb1QTTN6wy59ffF1BuGJpLSa9DkKMp0DgiMDm4iYMj70gZWKYbI706tWS" crossorigin="anonymous">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/js/bootstrap.min.js" integrity="sha384-B0UglyR+jN6CkvvICOB2joaf5I4l3gm9GU6Hc1og6Ls7i6U/mkkaduKaBhlAXv9k" crossorigin="anonymous"></script>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/semantic-ui/2.4.1/semantic.css">
<link href="https://fonts.googleapis.com/css?family=Jua" rel="stylesheet"> <!-- 구글폰트 -->
<style>
	*{font-family: 'Jua', sans-serif;}
	A:link{text-decoration: none; color:black}
	A:hover{text-decoration:none;color:black}
	A:visited{text-decoration: none;color:black}
	A:active{text-decoration: none;color:black}
</style>
<%@ include file="../include/menu.jsp" %>
</head>
<body>
	<div class="container" style="margin-left:18%">
 		<div style="height:70px;font-size:30px;color:#555555;border-bottom:1px solid #DDDDDD">${dto.title}</div>
 		<div>
 		<!-- 글수정버튼 --> 		
 		<form action="${path}/notice/edit/${dto.noticeno}" method='post'>
 		<input type=submit value="Edit" style="border-style: none;background:white">
 		</form>
 		
 		<!-- 글삭제버튼 -->
 		<form action="${path}/notice/delete/${dto.noticeno}" method="post" >
 		<input type=submit value="Delete" style="border-style: none;background:white">
 		</form>
 		</div>
 		<div style="margin-top:65px;margin-bottom:100px;font-size:18px;color:#838383";>${dto.des}</div>
 		<div style="margin-top:65px;border-top:1px solid #DDDDDD"><a href="${path}/notice.do"><button class="ui primary button" style="margin-top:25px;font-family: 'Jua', sans-serif;font-size:19px;background-color:#890422">Return</button></a></div>
 		
 		
	</div>
</body>
</html>