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
        <td rowspan="4">Image  ${dto.userimage }</td>
        <td>아이디 : ${dto.userid }</td>
        <td>이메일 : ${dto.useremail }</td>
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
      	 성별 : ${dto.gender  }
      	</td>
      </tr>
      <tr>
      	<td>
      	 네이버아이디 : ${dto.naverid  }
      	</td>
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
		        	<div>이미지 : <input type="text" name='userimage' value='${dto.userimage}'></div><br/>
		        	<div>이메일 : <input type="text" name='useremail' value='${dto.useremail}'></div><br/>
		        	<div>신장 : <input type="text" name='userheight' value='${dto.userheight}'></div><br/>
		        	<div>체중 : <input type="text" name='userweight' value='${dto.userweight}'></div><br/>
		        	<div>성별 : <input type="text" name='gender' value='${dto.gender}'></div><br/>
		        	<div>가입목적 : <input type="text" name='purposeExe' value='${dto.purposeExe}'></div><br/>
		        	<div>평소운동량 : <input type="text" name='stateExe' value='${dto.stateExe}'></div><br/>
		        	<div>목표 : <input type="text" name='goalExe' value='${dto.goalExe}'></div><br/>
		        	<div>생년월일 : <input type="text" name='birthDate' value='${dto.birthDate}'></div><br/>
		        	<div>이름 : <input type="text" name='username' value='${dto.username}'></div><br/>
                    <div>휴대폰 : <input type="text" name='userphone' value='${dto.userphone}'></div><br/>
		        	<div>비밀번호 : <input type="password" name='userpwd' placeholder="네이버나 페이스북 로그인시 불필요" value='${dto.userpwd}' style="width:250px"></div><br/>
		        	<div>추천인 : <input type="text" name='presentid' value='${dto.presentid}'></div><br/>
		        	<div>네이버아이디 : <input type="text" name='naverid' value='${dto.naverid}'></div><br/>
		        	
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