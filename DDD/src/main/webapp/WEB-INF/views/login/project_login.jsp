<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
	<head>
		<meta charset="UTF-8">
		<meta name ="google-signin-client_id" content="217755353555-3msma49ckq4fa47k0tg5tkshatcdh8c9.apps.googleusercontent.com">
		<title> 로그인 </title>
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
		<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css">
		<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
		<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js"></script>
		<script src="https://developers.kakao.com/sdk/js/kakao.js"></script>
	</head>
	<body>
	<%@ include file="/WEB-INF/views/header6.jsp" %>
		<table class="table table-hover">
			<thead class="nav justify-content-center">
			<a class="nav-link" href="${pageContext.request.contextPath}/help">
								<p style="text-align: center;"><img src="${pageContext.request.contextPath}/resources/image/KakaoTalk_20220804_174654570.jpg"
									width="300px" height="120px"></img></p></a>
			
				<ul class="nav justify-content-center">
					<input id="mid" name="mid" type="text" class="mb-3" style="height: 50px;"
						maxlength="20" size="50px" placeholder="ID 입력">
			<br>
					<input id="mpwd" name="mid" type="password" class="mb-2" style="height: 50px;"
						maxlength="20" size="50px" placeholder="패스워드 입력">
				</ul>
			<br>		
				<ul class="nav justify-content-center mb-3">
						&nbsp;|&nbsp;
					<a href="${pageContext.request.contextPath}/">
						아이디 찾기
					</a>
						
						&nbsp;|&nbsp;
					<a href="${pageContext.request.contextPath}/">
						비밀번호 찾기
					</a>
						
						&nbsp;|&nbsp;
					<a href="http://localhost:8081/project/project_join">
						회원 가입
					</a>
						
						&nbsp;|&nbsp;
				</ul>
				<br>
				<ul class="nav justify-content-center mb-2" style="font-size: 3cm;">
					<button id="btn" class="btn btn-primary" type="submit">로 그 인</button>
				</ul>
				<br>			
				<ul class="nav justify-content-center">
					<a href="${pageContext.request.contextPath}/help">
						<button id="btn2" class="btn btn-danger" type="submit">취 소</button>
					</a>
				</ul>
				<br>
					
					<ul>
					<li onclick="kakaoLogin();">
				      <a href="javascript:void(0)">
				          <span>카카오 로그인</span>
				      </a>
					</li>
					<li onclick="kakaoLogout();">
				      <a href="javascript:void(0)">
				          <span>카카오 로그아웃</span>
				      </a>
					</li>
				</ul>
				<!-- 카카오 스크립트 -->
				<script src="https://developers.kakao.com/sdk/js/kakao.js"></script>
				<script>
				Kakao.init('6b53d62d3711df6e86c174e8b6e0c39d'); //발급받은 키 중 javascript키를 사용해준다.
				console.log(Kakao.isInitialized()); // sdk초기화여부판단
				//카카오로그인
				function kakaoLogin() {
				    Kakao.Auth.login({
				      success: function (response) {
				        Kakao.API.request({
				          url: '/v2/user/me',
				          success: function (response) {
				        	  console.log(response)
				          },
				          fail: function (error) {
				            console.log(error)
				          },
				        })
				      },
				      fail: function (error) {
				        console.log(error)
				      },
				    })
				  }
				//카카오로그아웃  
				function kakaoLogout() {
				    if (Kakao.Auth.getAccessToken()) {
				      Kakao.API.request({
				        url: '/v1/user/unlink',
				        success: function (response) {
				        	console.log(response)
				        },
				        fail: function (error) {
				          console.log(error)
				        },
				      })
				      Kakao.Auth.setAccessToken(undefined)
				    }
				  }  
				</script>
		
					
					
			</thead>
		</table>
	<%@ include file="/WEB-INF/views/footer.jsp" %>
	<script type="text/javascript">
	$(document).ready(function() {
		
		$("#login_btn").click(function() {

			$.post(
					"${pageContext.request.contextPath}/login"
					, {
						mid : $("#mid").val()
						, mpwd : $("#mpwd").val()
					}
					, function(data, status) {
						if(data == 0){
							alert("아이디와 패스워드가 올바르지 않습니다.");
						} else if(data == 1){
							location.href = "${pageContext.request.contextPath}/";
						} else {
							alert("잠시 후 다시 시도해 주세요.");
						}
					}//call back function
			);//post

		});//click
	});//ready
	</script>
	</body>
</html>









