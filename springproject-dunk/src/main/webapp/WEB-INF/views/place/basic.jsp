<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<!-- 반응형 웹 디자인을 구현 -->
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<meta http-equiv="X-UA-Compatible" content="ie=edge" />
<script src="//developers.kakao.com/sdk/js/kakao.min.js"></script>
<script src="resources/js/jquery-3.2.1.min.js"></script>
<link href="resources/css/place.css"  rel="stylesheet"/>
<script src="resources/js/formcheck.js"></script>
<title></title>
</head>
<body>
<div>
	<!-- 이동버튼 시작 -->
	<button type="button" class="btn btn-primary" onclick="location.href='basic'">basic</button>
	<button type="button" class="btn btn-primary" onclick="location.href='placeList'">placeList</button>
	<button type="button" class="btn btn-primary" onclick="location.href='monthCal'">monthCal</button>
	<button type="button" class="btn btn-primary" onclick="location.href='naverCal'">naverCal</button>
	<button type="button" class="btn btn-primary" onclick="location.href='placeBook'">placeBook</button>
	<button type="button" class="btn btn-primary" onclick="location.href='weekCal'">weekCal</button>
	<!-- 이동버튼 끝 -->
	
	
	<!-- 로그인부분 views -body -->
	<div class="container" id="dunk_login">
		<div class="row text-center">
			<div class="col">
				<h2 class="fw-bold fs-3">로그인</h2>
			</div>
		</div>
		
		<div class="row">
			<div class="row">
				<div class="col-6 mx-auto">
		  			<input type="text" class="form-control" placeholder="아이디">
				</div>
			</div>
			<div class="row">
				<div class="col-6 mx-auto">
				  <input type="password" class="form-control" placeholder="비밀번호">
				</div>
			</div>
			<div class="row">
				<div class="d-grid col-6 mx-auto">
			  		<button class="btn btn-primary" type="button">로그인</button>
				</div>
			</div>
		</div>
	</div>
	
	<!-- 카카오 로그인 api 시작-->
	 <a href="https://kauth.kakao.com/oauth/authorize?client_id=4a2a32fedb5d7951ae324e2f02860ce7&redirect_uri=https://localhost:8080/redirect&response_type=code">            
     	<img src=""/>
     </a>
	<!--카카오 로그인 api  끝-->



	


</div>
</body>
</html>