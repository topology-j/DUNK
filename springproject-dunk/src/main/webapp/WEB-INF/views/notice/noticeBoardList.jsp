<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<div class="row my-5" id="global-content">
	<div class="col">
		<div class="row text-center">
			<div class="col">
				<h2 class="fs-3 fw-bold">공지사항</h2>
			</div>
		</div>
		
		<div class="row">
			<div class="col">
				<table class="table table-hover">
					<thead>
						<tr class="table-dark">
							<th>no</th>
							<th>제목</th>
							<th>작성일</th>
							<th>조회수</th>
						</tr>
					</thead>
					<tbody class = "text-secondary">
					<c:if test="${ not empty nList }">
						<c:forEach var="n" items="${nList}">
						<tr>
							<td>${ n.no } </td>
							<td><a href="noticeBoardDetail?no=${n.no}"
						class="text-decoration-none link-secondary">${n.title}</a></td>
							<td>${ n.regDate }</td>
							<td>${ n.readCount }</td>
						</tr>
						</c:forEach>
					</c:if>
					<c:if test="${empty nList}">
						<tr>
							<td colspan="5" class="text-center">
							게시글이 존재하지 않습니다.
							</td>
						</tr>
					</c:if>
					</tbody>
				</table>
			</div>
		</div>
</div>
</div>