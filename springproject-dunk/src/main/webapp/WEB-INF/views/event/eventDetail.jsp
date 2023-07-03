<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
<script src="resources/js/eventcomment.js"></script>
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
			<input type="button" class="btn btn-outline-secondary" id="eventDetailUpdate" value="수정">&nbsp;&nbsp;
			<input type="button" class="btn btn-outline-secondary" id="eventDetailDelete" value="삭제">&nbsp;&nbsp;
		</c:if>
		<!-- 비검색 -->
		<c:if test="${not searchOption}">
			<input type="button" class="btn btn-outline-secondary" value="목록" onclick="location.href='eventList?pageNum=${pageNum}'">
		</c:if>
		<!-- 검색 -->
		<c:if test="${searchOption}">
			<input type="button" class="btn btn-outline-secondary" value="목록" onclick="location.href='eventList?pageNum=${pageNum}&type=${type}&keyword=${keyword}'">
		</c:if>
	</div>
</div>
<div class="row">
	<div class="col-2">
	</div>
	<div class="col-8">		
		<div class="row fs-4 text-bg-dark text-white py-2">
			<div class="col text-center">
				댓글 리스트
			</div>
		</div>		
		<c:if test="${not empty cList}">
		<div class="row">
			<div class="col" id="eventCommentList">			
				<c:forEach var="c" items="${cList}">
					<div class="row border border-bottom-0 commentRow">
						<div class="col">
							<div class="row bg-light p-2">							
								<div class="col-7">
									&nbsp;&nbsp;&nbsp;${c.userNick}
								</div>
								<div class="col-3 text-end">
									${c.regDate}
								</div>
								<div class="col-2">
									<input type="button" class="btn btn-outline-warning" value="수정" id="updateEventComment" style="--bs-btn-padding-y: .25rem; --bs-btn-padding-x: .5rem; --bs-btn-font-size: .75rem;">&nbsp;&nbsp;&nbsp;
									<input type="button" class="btn btn-outline-danger" value="삭제" id="deleteEventComment" style="--bs-btn-padding-y: .25rem; --bs-btn-padding-x: .5rem; --bs-btn-font-size: .75rem;">
								</div>
							</div>
							<div class="row p-3">
								<div class="col">
									<div><pre>${c.content}</pre></div>
								</div>
							</div>
						</div>
					</div>				
				</c:forEach>
			</div>
		</div>				
		</c:if>
		<form id="eventCommentWriteForm">
			<input type="hidden" name="eventNo" value="${e.no}">
			<input type="hidden" name="userId" value="${sessionScope.id}">
			<input type="hidden" name="userNick" value="${sessionScope.nick}">			
			<div class="row border py-3 bg-light">		
				<div class="col-11">
					<textarea rows="4" class="form-control" name="content"></textarea>
				</div>
				<div class="col-1">
					<input type="submit" class="btn btn-dark" value="댓글">
				</div>					
			</div>						
		</form>
	</div>	
	<div class="col-2">
	</div>
</div>
<div class="row d-none" id="eventComment">
	<div class="col-8 offset-2">
		<form id="eventCommentWriteForm">
			<input type="hidden" name="eventNo" value="${e.no}">
			<input type="hidden" name="userId" value="${sessionScope.id}">
			<input type="hidden" name="userNick" value="${sessionScope.nick}">			
			<div class="row border py-3 bg-light">		
				<div class="col-11">
					<textarea rows="4" class="form-control" name="content" id="commentContent"></textarea>
				</div>
				<div class="col-1">
					<input type="submit" class="btn btn-dark" value="댓글" id="commentWriteButton">
				</div>					
			</div>						
		</form>
	</div>
</div>		
