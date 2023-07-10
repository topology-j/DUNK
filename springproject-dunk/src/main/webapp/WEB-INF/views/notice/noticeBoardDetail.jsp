<%@page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<div class="row my-5" id="global-content">
	<div class="col">
		<form name="checkForm" id="checkForm">
			<input type="hidden" name="no" id="no" value="${ noticeBoard.no }" /> <input
				type="hidden" name="pass" id="rPass" />
		</form>
		<div class="row text-center">
			<div class="col">
				<h2 class="fs-3 fw-bold">공지사항 상세보기</h2>
			</div>
		</div>
		<div class= "row my-3">
			<div class="col">
				<table class="table table-bordered">
					<tbody>
						<tr>
							<th class="table-secondary">제목</th>
							<td colspan="3">${noticeBoard.title}</td>
						</tr>
						<tr>
							<th>작성일</th>
							<td><fmt:formatDate value="${noticeBoard.regDate}"
									pattern="yyyy-MM-dd HH:mm:ss" /></td>
							<th>조회수
							</th>
							<td>${ noticeBoard.readCount}</td>
						</tr>
						<tr>
							<td colspan="4">
								<pre>${noticeBoard.content}</pre>
							</td>
						</tr>
					</tbody>
				</table>
			</div>
		</div>
		<div class ="row my-3">	
			<div class="col text-center">
				<input class="btn btn-primary" type="button" value="목록보기" 
						onclick="location.href='noticeBoardList'"/>
			</div>
		</div>
	</div>
</div>
