<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
<script src="resources/js/eventcomment.js"></script>
<script src="resources/js/formcheck-hy.js"></script>

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
	<div class="col-8 border rounded border-2 border-secondary">	
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
		<div class="row text-center">
			<div class="col">
				<c:if test="${empty iList}">					
					<pre>${e.content}</pre>				
				</c:if>
				
				<c:if test="${not empty iList}">
					<c:forEach var="i" items="${iList}">
						<img src="resources/eventimage/${i}" style="width:400px; height:400px">
					</c:forEach>
					<pre>${e.content}</pre>				
				</c:if>
			</div>
		</div>
		<div class="row text-center my-3">
			<div class="col">
				<input type="button" class="btn btn-secondary" id="eventRecommend" value="추천">&nbsp;&nbsp;&nbsp;
				<span>${e.recommend}</span>
			</div>
		</div>		
	</div>
	<div class="col-2">	
</div>
</div>
<div class="row my-5 text-center">
	<div class="col">
		<input type="button" class="btn btn-outline-secondary" id="eventDetailUpdate" value="수정">&nbsp;&nbsp;
		<input type="button" class="btn btn-outline-secondary" id="eventDetailDelete" value="삭제">&nbsp;&nbsp;
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
					<div class="row border border-bottom-0">
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
					<textarea rows="4" class="form-control" name="content" id="content"></textarea>
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
					<textarea rows="4" class="form-control" name="content" id="content"></textarea>
				</div>
				<div class="col-1">
					<input type="submit" class="btn btn-dark" value="댓글">
				</div>					
			</div>						
		</form>
	</div>
</div>		
