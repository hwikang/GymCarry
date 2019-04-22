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
      	<td colspan="3">Additional Info</td>
      </tr>
      <tr>
      	<td>
      	 이름 : ${dto.username  }
      	</td>
      	<td>
      	 휴대폰 : ${dto.userphone  }
      	</td>
      	<td>
      	 비밀번호 : ${dto.userpwd  }
      	</td>
      </tr>
      <tr>
      	<td>
      	 추천인 : ${dto.presentid  }
      	</td>
      	<td>
      	 네이버아이디 : ${dto.naverid  }
      	</td>
      	<td>
      	 가입일 : ${dto.regdate  }
      	</td>
      </tr>
      <tr>
      	<td>
      	 경도 : <%-- ${dto.userlat  } --%>
      	</td>
      	<td>
      	 위도 : <%-- ${dto.userlong  } --%>
      	</td>
      	<td>
      	 수정날짜 : ${dto.modifyDate}
      	</td>
      </tr>
      
    </tbody>
  </table>
</div>
</body>
</html>