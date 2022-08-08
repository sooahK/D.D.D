<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <style>
    footer {
   position:fixed;
   left:0px;
   bottom:0px;
   height:60px;
   width:100%;
   background-color: white;
	}
	footer p {
	   text-align: center;
	}
	
		</style>
	<footer>
		<form action="${pageContext.request.contextPath}/main/help" method="get">
			<div class="wrap" style="content-inside">
			<div class="container">
				<ul class="nav justify-content-center">
						
					
					  <a class="nav-link" href="${pageContext.request.contextPath}/help"
					 	data-toggle="tooltip" data-placement="top" title="H O M E">
					 	<p><img src="${pageContext.request.contextPath}/resources/image/KakaoTalk_20220804_174654570.jpg""
									width="30px" height="30px"></p></a>
					  <a class="nav-link" href="${pageContext.request.contextPath}/project_auction"
					 	data-toggle="tooltip" data-placement="top" title="굿즈 경매">
					 	<p><img src="${pageContext.request.contextPath}/resources/image/KakaoTalk_20220804_174654570.jpg""
									width="30px" height="30px"></p></a>
					  <a class="nav-link" href="${pageContext.request.contextPath}/project_product"
					 	data-toggle="tooltip" data-placement="top" title="굿즈 상품">
					 	<p><img src="${pageContext.request.contextPath}/resources/image/KakaoTalk_20220804_174654570.jpg""
									width="30px" height="30px"></p></a>
					  <a class="nav-link" href="${pageContext.request.contextPath}/project_board"
					 	data-toggle="tooltip" data-placement="top" title="커뮤니티 &정보">
					 	<p><img src="${pageContext.request.contextPath}/resources/image/KakaoTalk_20220804_174654570.jpg""
									width="30px" height="30px"></p></a>
					  <a class="nav-link" href="${pageContext.request.contextPath}/project_mypage"
					 	data-toggle="tooltip" data-placement="top" title="마이 페이지">
					 	<p><img src="${pageContext.request.contextPath}/resources/image/KakaoTalk_20220804_174654570.jpg""
									width="30px" height="30px"></p></a>
					
					<script>
					$(document).ready(function(){
					  $('[data-toggle="tooltip"]').tooltip();   
					});
					</script>
					
				</ul>
			</div>	
		</div>
		<div class="inner_foot" style="content-inside">
          <div class="footer_link" style="text-align: center;">
            <a href="https://policy.daum.net/info/info" class="link_info" data-tiara-layer="policy" data-tiara-action-name="전체서비스_푸터_서비스약관">서비스약관</a><span class="txt_dot">·</span>
            <a href="https://policy.daum.net/youthpolicy/youthpolicy" data-tiara-layer="youth_policy" data-tiara-action-name="전체서비스_푸터_청소년보호정책">청소년보호정책</a><span class="txt_dot">·</span>
            <a href="https://policy.daum.net/info_protection/info_protection" class="link_info" data-tiara-layer="info_protection" data-tiara-action-name="전체서비스_푸터_개인정보처리방침">개인정보처리방침</a><span class="txt_dot">·</span>
          </div>
	</form>
	</footer>
</main>
		
