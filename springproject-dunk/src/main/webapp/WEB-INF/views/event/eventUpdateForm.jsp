<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<script src="resources/js/formcheck-hy.js"></script>

<div class="row my-5">
	<div class="col">
		<h5 class="fs-3 fw-bold text-center">이벤트 게시글 수정</h5>
	</div>
</div>
<div class="row">
	<div class="col-2">	
	</div>
	<div class="col-8">
		<form id="eventUpdateForm" action="eventUpdateProcess" method="post">
			<input type="hidden" name="no" value="${e.no}">
			<input type="hidden" name="pageNum" value="${pageNum}">
			<c:if test="${searchOption}">
				<input type="hidden" name="type" value="${type}">
				<input type="hidden" name="keyword" value="${keyword}">
			</c:if>
			<div class="row">
				<div class="col">
					<label class="form-label">제목</label>
					<input name="title" class="form-control" value="${e.title}">
				</div>
			</div>
			<div class="row mt-3">
				<div class="col">
					<label class="form-label">내용</label>
					<textarea name="content" class="form-control" rows="20">${e.content}</textarea>
				</div>
			</div>
			<div class="row mt-5 text-center">
				<div class="col">
					<input type="submit" class="btn btn-secondary" value="수정">&nbsp;&nbsp;
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
		</form>	
	</div>
	<div class="col-2">	
	</div>
</div>