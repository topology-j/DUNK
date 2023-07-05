<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>    
<!-- 나의 매칭내역 상세보기 -->
<div class="row">
	<div class="col">
		<div class="row">
			<p>나의 매칭 정보 상세보기</p>
		</div>
		<div class="row">
			<p>${myApply.title}</p>
			<p>${myApply.name}</p>
			<p>${myApply.address1}</p>
		</div>
		<div class="row">
			<div class="col text-center">
				<a class="btn" href="myCalender">내 일정목록</a>
			</div>
		</div>
	</div>
</div>