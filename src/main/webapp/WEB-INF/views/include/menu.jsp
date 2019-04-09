<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="path" value="${pageContext.request.contextPath }" />
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/semantic-ui/2.4.1/semantic.css">

<div class="ui secondary right menu">
	<a class="item"><img src="${path }/resources/logo.png"/></a>
  <a class="item active">트레이너찾기 </a>
  <a class="item">공지사항</a>
  <a href="${path }/community.do" class="item">커뮤니티</a>
  <a class="item">로그인</a>
  <a class="item">로그아웃</a>
  <a class="item">트레이너신청하기</a>
  </div>
</div>