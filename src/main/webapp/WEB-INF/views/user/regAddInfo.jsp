<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="path" value="${pageContext.request.contextPath }" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>GYM CARRY - Join - Email</title>
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/semantic-ui/2.4.1/semantic.js" type="text/javascript"></script>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/semantic-ui/2.4.1/semantic.css"/>
<link href="https://fonts.googleapis.com/css?family=Jua" rel="stylesheet"> <!-- 구글폰트 -->
<link rel="stylesheet" href="${path }/css/regAddInfo.css" type="text/css">
</head>
<body>
<header>
	<a href="${path }/"><img src="${path }/resources/logo.png" width="300px" height="200px"/></a>
	<div class="container">
		<div class="row">			
			<div class="col-xs-2 col-sm-2 col-md-2"></div>
			<div class="col-xs-8 col-sm-8 col-md-8">
				<div class="paper">
					<div class="paper-top">
						체질량 지수(BMI), 그리고 적정 섭취 칼로리를 계산해드립니다.<br>
						${userDTO.userid }님 아래의 정보를 입력해 주세요.
					</div>
					<form action="${path}/user/regAddDone.do" method="post" enctype="multipart/form-data">
						<input type="hidden" name="userid" value="${userDTO.userid }"/>
						<div class="row form-frm">
							<div class="col-xs-6 col-sm-6 col-md-6 form-frm-left">
								<span>안심하세요!<br>입력하시는 정보는 아무에게도 공개되지 않습니다.</span>
								<img src="#" alt="avatar imamge"/>
								<input type="file" placeholder="진짜로 입력되는 이미지 input"/><br>
								<span>사진업로드에 문제가 있으신가요?<br>
								보다 편리한 모바일 앱에서 업로드해주세요.</span>								
							</div>	
							<div class="col-xs-6 col-sm-6 col-md-6 form-frm-right">		
								<div class="birthFrm">
									<label>생일</label><br>
									<select class="ui dropdown" name="birthYear">
									  <c:forEach var="i" begin="1930" end="2019" step="1">
									  	<option value="${i}"<c:if test="${i==1990 }"> selected</c:if>>${i }</option>
									  </c:forEach>
									</select>
									<select class="ui dropdown" name="birthMonth">
									  <c:forEach var="i" begin="1" end="12" step="1">
									  	<option value="${i}" <c:if test="${i==1 }"> selected</c:if>>${i }</option>
									  </c:forEach>
									</select>
									<select class="ui dropdown" name="birthDay">
									  <c:forEach var="i" begin="1" end="31" step="1">
									  	<option value="${i}" <c:if test="${i==1 }"> selected</c:if>>${i }</option>
									  </c:forEach>
									</select>
								</div>
								<div class="genderFrm">
									<label>성별</label><br>
									<select class="ui dropdown" name="gender">
									  	<option value="male">남성</option>
									  	<option value="female">여성</option>
									</select>
								</div>
								<div class="row physicalFrm">
									<div class="col-xs-6 col-sm-6 col-md-6">
										<label>키</label><br>
										<div class="ui right labeled input">
										  <input type="text" name="userheight" placeholder="키를 입력하세요">
										  <div class="ui basic label">
										    cm
										  </div>
										</div>
									</div>
									<div class="col-xs-6 col-sm-6 col-md-6">
										<label>몸무게</label><br>
										<div class="ui right labeled input">
										  <input type="text" name="userweight" placeholder="몸무게를 입력하세요">
										  <div class="ui basic label">
										    kg
										  </div>
										</div>
									</div>
								</div>
								<div class="">
									<label>왜 운동하시나요?</label><br>									
									<select class="ui dropdown" name="purposeExe">
									  	<option value="purpose1">체력과 건강을 위해</option>
									  	<option value="purpose2">다이어트, 몸매관리를 위해</option>
									  	<option value="purpose3">스트레스 해소를 위해</option>
									  	<option value="purpose4" selected>기타</option>
									</select>
								</div>
								<div class="">
									<label>평소에 얼마나 운동하시나요?</label><br>									
									<select class="ui dropdown" name="stateExe">
									  	<option value="state1">전혀 운동하지 않음</option>
									  	<option value="state2">가벼운 운동 (주1~3일)</option>
									  	<option value="state3">적당한 운동 (주3~5일)</option>
									  	<option value="state4">열심히 운동 (주6~7일)</option>
									  	<option value="state5">아주 열심히 운동 (매일 2회이상)</option>
									</select>
								</div>
								<div class="">
									<label>목표 체중이 어떻게 되세요?</label><br>									
									<select class="ui dropdown" name="goalExe">
									  	<option value="goal1">일주일에 1kg 감량</option>
									  	<option value="goal2">일주일에 0.5kg 감량</option>
									  	<option value="goal3">일주일에 0.25kg 감량</option>
									  	<option value="goal4" selected>현재 체중 유지</option>									  	
									  	<option value="goal5">일주일에 0.25kg 찌우기</option>
									  	<option value="goal6">일주일에 0.5kg 찌우기</option>
									  	<option value="goal7">일주일에 1kg 찌우기</option>
									</select>
								</div>
								<div>
									<input type="submit" value="저장하기"/>
								</div>
								<div>
									<span>지금 입력하신 내용은 프로필에서 언제든 다시 입력하실 수 있습니다.</span>
								</div>
							</div>					
						</div>	
					</form>	
				</div>				
					<div style="text-align:center;margin-top:20px">
						<img src="${path }/resources/logoct.png" width="70px" height="70px"/>		
					</div>	
			</div>
			<div class="col-xs-2 col-sm-2 col-md-2"></div>
		</div>
	</div>
</header>
<footer>
	<div>
	중요하지 않지만 재밌다 -풋터
	</div>
</footer>
</body>
</html>