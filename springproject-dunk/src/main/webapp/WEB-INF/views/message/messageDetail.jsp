<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<div class="row">	
	<div class="col-6 offset-3">	
		<div class="row mt-3">
			<div class="col">
				<span class="fw-bold">보낸 사람</span>&nbsp;&nbsp;&nbsp;<span>${m.sendNick}</span>
			</div>
		</div>
		<div class="row my-2 border-bottom border-2 border-dark">
			<div class="col">
				<span class="fw-bold">받은 시간</span>&nbsp;&nbsp;&nbsp;<span>${m.regDate}</span>
			</div>
		</div>
		<div class="row my-3">
			<div class="col">
				<div><pre>${m.content}</pre></div>
			</div>
		</div>
		<div class="row my-3">
			<div class="col">
				<form action="replyMessageForm" method="post">
					<input type="hidden" name="sendId" value="${m.receiveId}">
					<input type="hidden" name="sendNick" value="${m.receiveNick}">
					<input type="hidden" name="receiveId" value="${m.sendId}">
					<input type="hidden" name="receiveNick" value="${m.sendNick}">
					<input type="hidden" name="pageNum" value="${pageNum}">
					<div class="text-center">
						<input type="submit" class="btn btn-dark" value="답장하기">&nbsp;&nbsp;&nbsp;
						<input type="button" class="btn btn-dark" value="삭제하기" onclick="location.href='deleteMessage?no=${m.no}&id=${m.receiveId}&pageNum=${pageNum}'">&nbsp;&nbsp;&nbsp;
						<input type="button" class="btn btn-dark" value="목록보기" onclick="location.href='messageList?id=${m.receiveId}&pageNum=${pageNum}'">
					</div>
				</form>			
			</div>
		</div>
	</div>	
</div>
