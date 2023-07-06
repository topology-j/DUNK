<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!-- header -->
	<div class="row p-2" id="dunk_header" style="border-bottom-color: #fa9300; border-bottom-style: solid;">
	<!-- 검색,로그인버튼부분 -->
	<div class="row">
				<div class="col">
					<ul class="nav justify-content-end">
							<c:if test="${sessionScope.isLogin}">							  
							  <li class="nav-item" >
							    	<a class="nav-link" href="myCalender">
							    		<i class="bi bi-calendar" style="color:#fa9300;"></i>
							    	</a>
							  </li>
							  </c:if>
							   <c:if test="${not sessionScope.isLogin}">
								  <li class="nav-item">
								    	<a class="nav-link" href="loginForm" style="color:#fa9300;">로그인</a>
								  </li>								  
							  </c:if>
							  <c:if test="${sessionScope.isLogin}">
								  <li class="nav-item">
								    	<a class="nav-link" href="mypage?id=${sessionScope.id}" style="color:#fa9300;">마이페이지</a>
								  </li>
								  <li class="nav-item">
								    	<a class="nav-link" href="logout" style="color:#fa9300;">로그아웃</a>
								  </li>
							  </c:if>
					</ul>
				</div>
			</div>
			<!-- 메인로고부분 -->
			<div class="container text-center">
				<div class="row">
					<p>
						<a href="matchingList">
							<img class="img-fluid" src="resources/main_img/dunk_main_icon.png" width="200px" height="200px">
						</a>
					</p>
				</div>
			</div>
			<!-- 메뉴바 시작  -->
			<div class="row" id="menu_bar">
				<ul class="nav nav-pills">
				<!-- 드롭다운영역 -->
				  <li class="nav-item dropdown me-2" style="border: 2px solid #fa9300; border-radius: 40px;">
				    <a class="nav-link dropdown-toggle" data-bs-toggle="dropdown" href="#" role="button" aria-expanded="false" style="color:#fa9300;">
				    	<img data-bs-toggle="dropdown" aria-expanded="false" src="resources/main_img/basketballicon.png" width="25px;">
				    </a>
				    <ul class="dropdown-menu">
			    	  <li><a class="dropdown-item" href="matchingList">매치</a></li>
			    	  <li><a class="dropdown-item" href="teamMatchList">팀 매치</a></li>
			    	  <li><a class="dropdown-item" href="teamRecruitmentList">팀 모집</a></li>
				      <li><a class="dropdown-item" href="placeList">장소</a></li>
				      <li><a class="dropdown-item" href="eventList">이벤트</a></li>				      
				      <li><a class="dropdown-item" href="#">공지사항</a></li>
				    </ul>
				  </li>
				  <li class="nav-item me-2" style="border: 2px solid #fa9300; border-radius: 40px;">
				    <a class="nav-link" href="matchingList" style="color:#fa9300;">매치</a>
				  </li>
				   <li class="nav-item me-2" style="border: 1px solid #fa9300; border-radius: 40px;">
				    <a class="nav-link" href="teamMatchList" style="color:#fa9300;">팀매치</a>
				  </li>
				  <li class="nav-item me-2" style="border: 1px solid #fa9300; border-radius: 40px;">
				    <a class="nav-link" href="placeList" style="color:#fa9300;">장소</a>
				  </li>
				</ul>
			</div>
</div>
