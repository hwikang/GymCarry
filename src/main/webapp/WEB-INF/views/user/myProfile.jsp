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
<title>유저정보</title>

<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/css/bootstrap.min.css" integrity="sha384-GJzZqFGwb1QTTN6wy59ffF1BuGJpLSa9DkKMp0DgiMDm4iYMj70gZWKYbI706tWS" crossorigin="anonymous">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/js/bootstrap.min.js" integrity="sha384-B0UglyR+jN6CkvvICOB2joaf5I4l3gm9GU6Hc1og6Ls7i6U/mkkaduKaBhlAXv9k" crossorigin="anonymous"></script>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/semantic-ui/2.4.1/semantic.css">
<link href="https://fonts.googleapis.com/css?family=Jua" rel="stylesheet"> <!-- 구글폰트 -->
<link rel="stylesheet" href="${path }/css/myProfile.css" type="text/css">
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
<!-- 멋쟁이윤성 -->
<div class="container">

  <h1>Profile</h1>
  <p style="font-size:18px">${dto.userid} 님의 프로필</p>            
  <table class="table table-condensed">
    <!-- 글수정버튼 --> <button class="ui primary button" data-toggle="modal" data-target="#editModal" style="margin-top:25px;font-family: 'Jua', sans-serif;font-size:16px;background-color:#890422">수정</button>
 	<!-- 글삭제버튼 --> <button class="ui primary button" data-toggle="modal" data-target="#deleteModal" style="margin-top:25px;font-family: 'Jua', sans-serif;font-size:16px;background-color:#890422">탈퇴</button>
    <tbody>
      <tr>
        <td rowspan="4"><img src="${path }/profileImg/images/${dto.userimage}" class="avatar-img" id="preView" name="preView"/></td>
        <td>아이디 : ${dto.userid }</td>
        <td>이메일 : <c:if test="${dto.useremail!=null}">${dto.useremail }</c:if><c:if test="${dto.naverid!=null}">${dto.naverid }</c:if></td>
      </tr>
      <tr>
        <td>신장 : ${dto.userheight } </td>
        <td>체중 : ${dto.userweight } </td>
      </tr>
      <tr>
        <td>가입목적 : 
        	<c:if test="${dto.purposeExe eq 'purpose1'}">
        	 체력과 건강을 위해
        	 </c:if>
        	<c:if test="${dto.purposeExe eq 'purpose2'}">
                         다이어트 , 몸매 관리를위해
            </c:if>   
        	<c:if test="${dto.purposeExe eq 'purpose3'}">
                        스트레스 해소를 위해
            </c:if>
        </td>
        <td>평소운동량 :   <c:if test="${dto.stateExe  eq 'state1'}">
                        전혀 운동하지 않음
                        </c:if>
                        <c:if test="${dto.stateExe eq 'state2'}">
                        가벼운 운동 (주 1~3일)
                        </c:if>   
                        <c:if test="${dto.stateExe eq 'state3'}">
                        적당한 운동 (주 3~5일)
                        </c:if>
                        <c:if test="${dto.stateExe eq 'state4'}">
                        열심히 운동(주 6~7일)
                        </c:if>
                        <c:if test="${dto.stateExe eq 'state5'}">
                        아주 열심히 운동(매일 2회 이상)
                        </c:if>
        </td>
      </tr>
      <tr>
        <td>목표 :  <c:if test="${dto.goalExe  eq 'goal1'}">
                        1주일에 1kg 감량
                        </c:if>
                        <c:if test="${dto.goalExe  eq 'goal2'}">
                        1주일에 0.5kg 감량
                        </c:if>
                        <c:if test="${dto.goalExe  eq 'goal3'}">
                        1주일에 0.25kg 감량
                        </c:if>
                        <c:if test="${dto.goalExe  eq 'goal4'}">
                      	  현재 체중 유지
                        </c:if>
                        <c:if test="${dto.goalExe  eq 'goal5'}">
                        1주일에 0.25kg 찌우기
                        </c:if>
                        <c:if test="${dto.goalExe  eq 'goal6'}">
                        1주일에 0.5kg 찌우기
                        </c:if>
                        <c:if test="${dto.goalExe  eq 'goal7'}">
                        1주일에 1kg 찌우기
                        </c:if>
		</td>
        <td>생년월일 : ${dto.birthDate}</td>
      </tr>
      <tr>
      	<td colspan="3">[Additional Info]</td>
      </tr>
      <tr>
      	<td>
      	 이름 : ${dto.username  }
      	</td>
      	<td>
      	 휴대폰 : ${dto.userphone  }
      	</td>
      	<td>
      	 성별 : <c:if test="${dto.gender=='male'}">남자</c:if><c:if test="${dto.gender=='female'}">여자</c:if>
      	</td>
      </tr>
      <tr>
      	<td>
      	 추천인 : ${dto.presentid}
      	</td>
      	<td>
      	
      	</td>
      	
      </tr>
     
    </tbody>
  </table>
   <!-- Edit Modal -->
	      <div class="modal fade" id="editModal" role="dialog">
	  	 	<div class="modal-dialog">	
		      <div class="modal-content">
		      <form action="${path}/user/myProfileEdit.do" method="post">
		        <div class="modal-header">
		          <h4 class="modal-title">Profile Edit</h4>
		          <button type="button" class="close" data-dismiss="modal">&times;</button>
		        </div>
		        <div class="modal-body">		        	
		        	<label class="label-fnt">생일</label>	
						<div class="birthFrm frm-div row">
							<div class="col-xs-4 col-sm-4 col-md-4">
								<select class="ui dropdown frm-sel2" name="birthYear">
								  <c:forEach var="i" begin="1930" end="2019" step="1">
								  	<option value="${i}"<c:if test="${i==dto.birthYear }"> selected</c:if>>${i }</option>
								  </c:forEach>
								</select>
							</div>
							<div class="col-xs-4 col-sm-4 col-md-4">
								<select class="ui dropdown frm-sel2" name="birthMonth">
								  <c:forEach var="i" begin="1" end="12" step="1">
								  	<option value="${i}" <c:if test="${i==dto.birthMonth }"> selected</c:if>>${i }</option>
								  </c:forEach>
								</select>
							</div>
							<div class="col-xs-4 col-sm-4 col-md-4">
								<select class="ui dropdown frm-sel2" name="birthDay">
								  <c:forEach var="i" begin="1" end="31" step="1">
								  	<option value="${i}" <c:if test="${i==dto.birthDay }"> selected</c:if>>${i }</option>
								  </c:forEach>
								</select>
							</div>
						</div>
						<div class="genderFrm frm-div">
							<label class="label-fnt">성별</label><br>
							<select class="ui dropdown frm-sel" name="gender">
							  	<option value="male" <c:if test="${dto.gender=='male'}">selected</c:if>>남성</option>
							  	<option value="female" <c:if test="${dto.gender=='female'}">selected</c:if>>여성</option>
							</select>
						</div>
						<div class="row physicalFrm frm-div">
							<div class="col-xs-6 col-sm-6 col-md-6">
								<label class="label-fnt">키</label><br>
								<div class="ui right labeled input">
								  <input type="text" name="userheight" value="${dto.userheight }" placeholder="키를 입력하세요">
								  <div class="ui basic label">
								    cm
								  </div>
								</div>
							</div>
							<div class="col-xs-6 col-sm-6 col-md-6 frm-div">
								<label class="label-fnt">몸무게</label><br>
								<div class="ui right labeled input">
								  <input type="text" name="userweight" value="${dto.userweight }" placeholder="몸무게를 입력하세요">
								  <div class="ui basic label">
								    kg
								  </div>
								</div>
							</div>
						</div>
						<div class="frm-div">
							<label class="label-fnt">왜 운동하시나요?</label><br>									
							<select class="ui dropdown frm-sel" name="purposeExe">
							  	<option value="purpose1" <c:if test="${dto.purposeExe=='purpose1' }">selected</c:if>>체력과 건강을 위해</option>
							  	<option value="purpose2" <c:if test="${dto.purposeExe=='purpose2' }">selected</c:if>>다이어트, 몸매관리를 위해</option>
							  	<option value="purpose3" <c:if test="${dto.purposeExe=='purpose3' }">selected</c:if>>스트레스 해소를 위해</option>
							  	<option value="purpose4" <c:if test="${dto.purposeExe=='purpose4' }">selected</c:if>>기타</option>
							</select>
						</div>
						<div class="frm-div">
							<label class="label-fnt">평소에 얼마나 운동하시나요?</label><br>									
							<select class="ui dropdown frm-sel" name="stateExe">
							  	<option value="state1" <c:if test="${dto.stateExe=='state1' }">selected</c:if>>전혀 운동하지 않음</option>
							  	<option value="state2" <c:if test="${dto.stateExe=='state2' }">selected</c:if>>가벼운 운동 (주1~3일)</option>
							  	<option value="state3" <c:if test="${dto.stateExe=='state3' }">selected</c:if>>적당한 운동 (주3~5일)</option>
							  	<option value="state4" <c:if test="${dto.stateExe=='state4' }">selected</c:if>>열심히 운동 (주6~7일)</option>
							  	<option value="state5" <c:if test="${dto.stateExe=='state5' }">selected</c:if>>아주 열심히 운동 (매일 2회이상)</option>
							</select>
						</div>
						<div class="frm-div">
							<label class="label-fnt">목표 체중이 어떻게 되세요?</label><br>									
							<select class="ui dropdown frm-sel" name="goalExe">
							  	<option value="goal1" <c:if test="${dto.goalExe=='goal1' }">selected</c:if>>일주일에 1kg 감량</option>
							  	<option value="goal2" <c:if test="${dto.goalExe=='goal2' }">selected</c:if>>일주일에 0.5kg 감량</option>
							  	<option value="goal3" <c:if test="${dto.goalExe=='goal3' }">selected</c:if>>일주일에 0.25kg 감량</option>
							  	<option value="goal4" <c:if test="${dto.goalExe=='goal4' }">selected</c:if>>현재 체중 유지</option>									  	
							  	<option value="goal5" <c:if test="${dto.goalExe=='goal5' }">selected</c:if>>일주일에 0.25kg 찌우기</option>
							  	<option value="goal6" <c:if test="${dto.goalExe=='goal6' }">selected</c:if>>일주일에 0.5kg 찌우기</option>
							  	<option value="goal7" <c:if test="${dto.goalExe=='goal7' }">selected</c:if>>일주일에 1kg 찌우기</option>
							</select>
						</div>
		        </div>
		        <div class="modal-footer">
		        	<input type="submit" value="Edit" class="btn btn-default" style="width:80%;background:#890422;color:white"/>
		         	 <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
		        </div>
		        </form>
		      </div>
		     </div>
	      </div>
	      <!-- 삭제모달 -->
	      <div class="modal fade" id="deleteModal" role="dialog">
	   		<div class="modal-dialog">
	      	<div class="modal-content">
	      		<form action="${path}/user/delete.do" method="post">
	        <div class="modal-body">
	        	<div>정말로 탈퇴하시겠습니까?</div>
	        </div>
	        <div class="modal-footer">
		        	<input type="submit" value="탈퇴" class="btn btn-default" style="width:80%;background:#890422;color:white"/>
		          <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
		    </div>
	        </form>
	      </div>
	   	 </div>
	 	 </div>
</div>
</body>
</html>