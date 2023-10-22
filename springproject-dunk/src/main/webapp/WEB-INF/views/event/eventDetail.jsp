<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<script src="resources/js/formcheck-hy.js"></script>

<style>
    .image-container {
        max-width: 100%;
        max-height: 100%;
        overflow: hidden;
        text-align: center;
    }
    .image-container img {
        max-width: 100%;
        max-height: 100%;
        width: auto;
        height: auto;
        vertical-align: middle;
    }
</style>


<div class="row">
	<div class="col">
		<form id="eventCheckForm">
			<input type="hidden" name="no" id="no" value="${e.no}">			
			<input type="hidden" name="pageNum" value="${pageNum}">
			<c:if test="${searchOption}">
				<input type="hidden" name="type" value="${type}">
				<input type="hidden" name="keyword" value="${keyword}">
			</c:if>	
		</form>
	</div>
</div>

<div class="row mt-5">
	<div class="col-2">	
	</div>
	<div class="col-8">	
		<div class="row mx-3 mt-5">
			<div class="col">
				<p class="fw-bold">이벤트</p>
			</div>
		</div>
		<div class="row">
			<div class="col">
				<p class="text-center fs-3 fw-bold">${e.title}</p>
			</div>
		</div>
		<div class="row border-bottom border-2 mx-3">
			<div class="col-6">
				<p>${e.regDate}</p>
			</div>
			<div class="col-6">
				<p class="text-end text-secondary">조회수 : ${e.readCount}</p>
			</div>
		</div>
		<div class="row text-center my-5">
			<div class="col">
				<div class="image-container">
				    <img src="resources/eventimage/${e.contentImg}" alt="이미지" />
				</div>			
			</div>
		</div>
		<div class="row my-5 text-center">
			<div class="col">
				<pre>${e.content}</pre>	
			</div>
		</div>
		<div class="row text-center my-3">
			<div class="col-7 text-end">
				<c:if test="${sessionScope.isLogin}">
					<button class="btn btn-light" id="eventRecommend"><i class="bi bi-suit-heart-fill text-danger fs-3"></i></button>&nbsp;&nbsp;						
					<span class="fw-bold">${e.recommend}</span>
				</c:if>
				<c:if test="${!sessionScope.isLogin}">
					<button class="btn btn-light" id="eventRecommend" disabled><i class="bi bi-suit-heart-fill text-danger fs-3"></i></button>&nbsp;&nbsp;						
					<span class="fw-bold">${e.recommend}</span>
				</c:if>
			</div>
			<c:if test="${sessionScope.isLogin}">
				<c:if test="${!searchOption}">
					<div class="col-5 text-end">
						<input type="button" class="btn btn-dark" value="이벤트 관련 문의" onclick="location.href=`questionAboutEvent?no=${e.no}&pageNum=${pageNum}&sendId=${sessionScope.id}&sendNick=${sessionScope.nick}&receiveId=admin&receiveNick=관리자`">
					</div>
				</c:if>
				<c:if test="${searchOption}">
					<div class="col-5 text-end">
						<input type="button" class="btn btn-dark" value="이벤트 관련 문의" onclick="location.href=`questionAboutEvent?no=${e.no}&pageNum=${pageNum}&type=${type}&keyword=${keyword}&sendId=${sessionScope.id}&sendNick=${sessionScope.nick}&receiveId=admin&receiveNick=관리자`">
					</div>
				</c:if>
			</c:if>
		</div>		
	</div>
	<div class="col-2">	
</div>
</div>
<div class="row my-5 text-center">
	<div class="col">
		<c:if test="${sessionScope.id=='admin'}">
			<input type="button" class="btn btn-outline-dark" id="eventDetailUpdate" value="수정">&nbsp;&nbsp;
			<input type="button" class="btn btn-outline-dark" id="eventDetailDelete" value="삭제">&nbsp;&nbsp;
		</c:if>
		<!-- 비검색 -->
		<c:if test="${not searchOption}">
			<input type="button" class="btn btn-outline-dark" value="리스트 보기" onclick="location.href='eventList?pageNum=${pageNum}'">
		</c:if>
		<!-- 검색 -->
		<c:if test="${searchOption}">
			<input type="button" class="btn btn-outline-dark" value="리스트 보기" onclick="location.href='eventList?pageNum=${pageNum}&type=${type}&keyword=${keyword}'">
		</c:if>
	</div>
</div>

<div class="row my-5">
	<div class="col-8 offset-2">		
		<c:forEach var="c" items="${cList}">
			<div class="row my-3 border-bottom">								
				<div class="col-8">
					<div class="row">
						<div class="col-3 text-start fw-bold">
							${c.userNick}
						</div>
						<div class="col-9">
							<fmt:formatDate value="${c.regDate}" pattern="yy-MM-dd HH:mm" />							
						</div>
					</div>
					<div class="row my-2">
						<div class="col">
							<div>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<pre>${c.content}</pre></div>
						</div>
					</div>
				</div>
				<div class="col-4 text-end">
					<c:if test="${c.userId==sessionScope.id}">
						<input type="button" class="btn btn-warning" value="수정" onclick="location.href=`updateEventComment?no=${c.no}&isCommentCount=false&pageNum=${pageNum}&type=${type}&keyword=${keyword}`" style="--bs-btn-padding-y: .25rem; --bs-btn-padding-x: .5rem; --bs-btn-font-size: .75rem;">&nbsp;
						<input type="button" class="btn btn-danger" value="삭제" onclick="location.href=`deleteEventComment?no=${c.no}&eventNo=${c.eventNo}&isCommentCount=false&pageNum=${pageNum}&type=${type}&keyword=${keyword}`" style="--bs-btn-padding-y: .25rem; --bs-btn-padding-x: .5rem; --bs-btn-font-size: .75rem;">
					</c:if>
				</div>
			</div>
		</c:forEach>
	</div>
</div>
<form action="addEventComment" method="post">
	<input type="hidden" name="isCommentCount" value="false">
	<input type="hidden" name="eventNo" value="${e.no}">
	<input type="hidden" name="no" value="${e.no}">
	<input type="hidden" name="userId" value="${sessionScope.id}">
	<input type="hidden" name="userNick" value="${sessionScope.nick}">	
	<input type="hidden" name="pageNum" value="${pageNum}">
	<input type="hidden" name="type" value="${type}">
	<input type="hidden" name="keyword" value="${keyword}">
<div class="row my-5">
	<div class="col-8 offset-2">	
		<div class="row">
			<div class="col-10">
				<textarea name="content" rows="4" class="form-control"></textarea>
			</div>
			<div class="col-2">
				<div class="d-grid gap-2">
					<button class="btn btn-dark" type="submit">댓글</button>				  
				</div>
			</div>
		</div>
	</div>
</div>
</form>