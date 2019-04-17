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
<link rel="stylesheet" href="${path }/css/registerEmail.css" type="text/css">
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
						<span class="paper-fnt">좋아요!</span><br>
						<span class="paper-fnt">지금부터 <b>계정</b>을 만들게요!</span>
					</div>
					<form id="directFrm" action="${path}/user/direct.do" method="post">
						<div class="row form-frm">
							<div class="col-xs-6 col-sm-6 col-md-6 form-frm-left">
								<div><input class="form-input" type="text" placeholder="아이디" id="userid" name="userid" maxlength="24" autocomplete="off" /></div>
								<div><input class="form-input" type="password" placeholder="비밀번호" id="userpwd" name="userpwd" maxlength="24" autocomplete="off"/></div>
								<div><input class="form-input" type="email" placeholder="이메일" id="useremail" name="useremail" maxlength="24" autocomplete="off"/></div>
								<div><input class="form-input" type="text" placeholder="이름" id="username" name="username" maxlength="24" autocomplete="off"/></div>
							</div>	
							<div class="col-xs-6 col-sm-6 col-md-6 form-frm-right">			
								<div>
									<strong class="form-strong-fnt">휴대전화번호 인증하기</strong><br>
									<span>전화번호 입력 후 인증문자 발송 버튼을 누르세요.</span><br>
									<span>6자리 인증번호 문자를 보내드릴께요.</span>
								</div>				
								<div class="form-input-tel">
									<input class="form-input-tel-in" type="tel" name="userphone" id="userphone" placeholder="휴대전화 번호를 숫자만 입력" maxlength="24"/>
									<button type="button">인증문자 발송</button>
								</div>
								<div>
									<strong class="form-strong-fnt">추천인 아이디 입력하기</strong>
									<span>소개해 준 분의 아이디를 입력해 주세요. 없다면 비워두셔도 됩니다.</span>
									<div><input class="form-input" type="text" id="presentid" name="presentid" placeholder="추천인 아이디"/></div>
								</div>
								<div>
									<div>
										<strong class="form-strong-fnt">약관 동의</strong><br>
										<input type="checkbox" id="checkAll"/> 아래 약관에 모두 동의 합니다.								
									</div>
									<div>
										<div><input type="checkbox" id="terms1"/> 이용약관 동의 (필수)</div>
										<div><input type="checkbox" id="terms2"/> 개인정보취급방침 동의 (필수)</div>
										<div><input type="checkbox" id="terms3"/> 마케팅 정보 수신 동의 (선택)</div>
										<span>수신동의 여부 및 설정은 회원정보 수정에서 확인할 수 있습니다.</span>
									</div>
								</div>
								<button type="button" onclick="javascript:submitBtn();">회원 가입</button>
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
<script>
	function submitBtn(){
		const userid = document.querySelector('#userid').value;
		const userpwd = document.querySelector('#userpwd').value;
		const useremail = document.querySelector('#useremail').value;
		const username = document.querySelector('#username').value;		
		document.querySelector('#directFrm').submit();
	}
</script>
</header>
<footer>
	<div>
	중요하지 않지만 재밌다 -풋터
	</div>
</footer>
</body>
</html>