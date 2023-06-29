<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<div class="row">
	<div class="col-6 offset-3">
		<form action="writeMessageProcess" method="post">
			<input type="hidden" name="sendId" value="${sessionScope.id}">
			<input type="hidden" name="sendNick" value="${sessionScope.nick}">						
			<div class="row mt-5 mb-3">
				<div class="col-2">
					<span class="fw-bold">받는 사람</span>
				</div>
				<div class="col-4">
					<input class="form-control" name="receiveNick">
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
					<input type="button" class="btn btn-dark" value="취소" onclick="location.href='messageList?id=${sessionScope.id}'">
				</div>
			</div>
		</form>
	</div>
</div>