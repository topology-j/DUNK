<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<div class="row my-5">
	<div class="col-8 offset-2">
		<div class="row border rounded-5 border-2 border-warning">
			<div class="col">
				<c:if test="${empty uList}">
					<div class="text-center my-5">팀 경기 일정이 없습니다.</div>
				</c:if>
				<c:if test="${not empty uList}">
					<div class="row fs-4 fw-bold my-5 text-center">
						<div class="col">
							나의 팀 경기 리스트
						</div>
					</div>
					<c:forEach var="u" items="${uList}">
						<div class="row border-bottom my-4 mx-3">
							<div class="col-8">
								<div class="row">
									<div class="col">
										${u.placeName}&nbsp;&nbsp;&nbsp;&nbsp;<span class="text-secondary"><fmt:formatDate value="${u.dates}" pattern="yyyy-MM-dd" />&nbsp;&nbsp;${u.timeBook}</span>																			
									</div>
								</div>
								<div class="row my-2">
									<div class="col-6">
										<span class="text-danger fw-bold fs-5">${u.teamName}</span>&nbsp;vs&nbsp;<span class="text-primary fw-bold fs-5">${u.partnerTeamName}</span>
									</div>
									<div class="col-6">
										${teamName2}
									</div>
								</div>
							</div>
							<div class="col-3">
								<div class="d-grid gap-2 py-3">									
								  <button class="btn btn-primary" type="button" onclick="location.href='teamMatchUserListFinal?bookNo=${u.bookNo}&teamName=${u.teamName}&partnerTeamName=${u.partnerTeamName}'">팀원 평가</button>								  
								</div>
							</div>
							<div class="col-1">
								<div class="d-grid gap-2 py-3">									
								  <button class="btn btn-danger" type="button" onclick="location.href='deleteTeamMatchUser?bookNo=${u.bookNo}&teamNo=${u.teamNo}&userId=${u.userId}'"><i class="bi bi-trash-fill"></i></button>								  
								</div>
							</div>
						</div>
					</c:forEach>
				</c:if>				
			</div>
		</div>
	</div>
</div>							