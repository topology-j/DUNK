<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>    
<!-- 나의 매칭내역 상세보기 -->
<div class="row">
	<div class="col">
		<div class="row">
			<p>나의 매칭 정보 상세보기</p>
		</div>
		<!-- 내가 쓴 매칭리스트 -->
		<div class="row">
			<div class="row">
				<p>내가 쓴 매칭글</p>
			</div>
			<c:if test="${not empty myMatchingList }">
				<c:forEach var="mml" items="${myMatchingList}">
					<ul class="list-group list-group-flush pb-3">
						<a href="myMatchingListDetail?no=${mml.no}" class="text-decoration-none">
							<li class="list-group-item">
								${mml.date},${mml.time},${mml.name}
							</li>
						</a>
					</ul>
				</c:forEach>
			</c:if>
			<c:if test="${ empty myMatchingList }">
				<p>아직 올린 매치가 없습니다!</p>
			</c:if>
		
		</div>
		<div class="row">
			<div class="col text-center">
				<a class="btn" href="myCalender">내 일정목록</a>
			</div>
		</div>
	</div>
</div>