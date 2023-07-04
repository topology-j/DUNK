<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<div class="row my-5 fw-bold fs-4">
	<div class="col-6 offset-3">
		<div class="text-center">댓글 수정</div>
	</div>
</div>

<form action="updateEventCommentProcess" method="post">
	<input type="hidden" name="isCommentCount" value="false">
	<input type="hidden" name="eventNo" value="${ec.eventNo}">
	<input type="hidden" name="no" value="${ec.no}">
	<input type="hidden" name="userId" value="${sessionScope.id}">
	<input type="hidden" name="userNick" value="${sessionScope.nick}">	
	<input type="hidden" name="pageNum" value="${pageNum}">
	<input type="hidden" name="type" value="${type}">
	<input type="hidden" name="keyword" value="${keyword}">
<div class="row my-5">
	<div class="col-8 offset-2">	
		<div class="row">
			<div class="col-10">
				<textarea name="content" rows="4" class="form-control">${ec.content}</textarea>
			</div>
			<div class="col-2">
				<div class="d-grid gap-2">
					<button class="btn btn-dark" type="submit">댓글 수정</button>				  
				</div>
			</div>
		</div>
	</div>
</div>
</form>