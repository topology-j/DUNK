<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<c:if test="${empty tList}">
	<div class="row my-5 text-center">
		<div class="col">
			팀 매치 글이 없습니다.
		</div>
	</div>
</c:if>


<c:if test="${not empty tList}">
<div class="row my-5">
	<div class="col-8 offset-2">
		<c:forEach var="t" items="${tList}">
			<div class="row p-2 border-bottom">
				<div class="col-2">
					<fmt:formatDate value="${t.date}" pattern="yyyy-MM-dd" />&nbsp;&nbsp;									
				</div>
				<div class="col-5">
					${t.title}									
				</div>
				<div class="col-2">
					${t.writerNick}
				</div>
				<div class="col-3">
					<c:if test="${t.process=='신청가능'}">
						<div class="d-grid gap-2">
						  <button class="btn btn-primary" type="button" onclick="location.href='teamMatchDetail?no=${t.no}'">신청가능</button>					  
						</div>
					</c:if>
					<c:if test="${t.process=='마감'}">
						<div class="d-grid gap-2">
						  <button class="btn btn-danger" type="button">마감</button>					  
						</div>
					</c:if>
				</div>
			</div>
		</c:forEach>
	</div>
</div>
</c:if>