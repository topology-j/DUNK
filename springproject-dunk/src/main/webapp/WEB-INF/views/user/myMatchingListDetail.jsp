<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>    
<!-- 나의 매칭내역 상세보기 -->
<div class="row">
	<div class="col">
		<div class="row">
			<p>나의 매칭 정보 상세보기</p>
		</div>
		<!-- 내가 쓴 매칭리스트의 디테일 -->
		<div class="row">
			<div class="row">
				<p>해당정보 디테일</p>
			</div>
			<div class="row">
				<h3>${matchingItem.title}</h3>
				<p>매칭날짜 : ${matchingItem.date}</p>
				<p>장소이름 : ${matchingItem.name}</p>
				<p>매칭시간 : ${matchingItem.time}</p>
				<p>매칭 참가비 : ${matchingItem.pay}</p>
				<p>매칭지원인 : ${matchingItem.matchingApplyCount}</p>
				
			</div>
		
		</div>
		<div class="row">
			<div class="col text-center">
				<a class="btn" href="myCalender">내 일정목록</a>
			</div>
		</div>
	</div>
</div>