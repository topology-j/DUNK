<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<div class="row">
	<div class="col-6 offset-3">
		<form action="replyMessageProcess" method="post">
			<input type="hidden" name="sendId" value="${sendId}">
			<input type="hidden" name="sendNick" value="${sendNick}">
			<input type="hidden" name="receiveId" value="${receiveId}">
			<input type="hidden" name="receiveNick" value="${receiveNick}">
			<input type="hidden" name="pageNum" value="${pageNum}">
			<div class="row mt-5 mb-3">
				<div class="col">
					<span class="fw-bold">받는 사람</span>&nbsp;&nbsp;<span>${receiveNick}</span>
				</div>
			</div>
			<div class="row my-3">
				<div class="col">
					<textarea class="form-control" name="content" rows="5"></textarea>
				</div>
			</div>
			<div class="row my-3 text-center">
				<div class="col">
					<input type="submit" class="btn btn-dark" value="보내기">&nbsp;&nbsp;&nbsp;
					<input type="button" class="btn btn-dark" value="취소" onclick="location.href='messageList?id=${sendId}&pageNum=${pageNum}'">
				</div>
			</div>
		</form>
	</div>
</div>