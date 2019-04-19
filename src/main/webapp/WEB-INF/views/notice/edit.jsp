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
<title>edit</title>

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
		<form action="${path}/notice/edit/${dto.noticeno}" method="post">
	 		<input type=text name=title value='${dto.title}'/>
	 		<input type=text name=des value='${dto.des}'/>
	 		<input type="hidden" name="noticeno" value="${dto.noticeno}"/>
			<input type="submit" value="Edit" class="btn btn-success form-control">
		</form>
	</div>
</body>
</html>