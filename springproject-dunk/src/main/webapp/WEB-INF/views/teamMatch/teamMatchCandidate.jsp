<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>


<div class="row mt-5">
	<div class="col-8 offset-2 border rounded-5 border-2 border-warning">
		<c:if test="${empty pList}">
			<div class="row my-5">
				<div class="col">
					<div class="text-center">예약된 장소가 없습니다.</div>
				</div>
			</div>
		</c:if>
		<form action="choiceTeamUser" method="post">
		<c:if test="${not empty pList}">
		<div class="row">
			<div class="col-7 mx-3">
				<div class="row fw-bold fs-5 text-center mt-5 mb-3">
					<div class="col">
						예약 장소
					</div>
				</div>
				<div class="row my-3">
					<div class="col">
						<c:forEach var="p" items="${pList}">
							<div class="row border-bottom my-3">
								<div class="col-2">
									<input type="radio" class="btn-check" name="bookNo" id="bookNo${p.no}" autocomplete="off" value="${p.no}">
									<label class="btn btn-dark" for="bookNo${p.no}" style="--bs-btn-padding-y: .25rem; --bs-btn-padding-x: .5rem; --bs-btn-font-size: .75rem;">선택</label>									
								</div>
								<div class="col-5">
									${p.placeName}								
								</div>
								<div class="col-3">
									<fmt:formatDate value="${p.dates}" pattern="yyyy-MM-dd" />									
								</div>
								<div class="col-2">
									${p.timeBook}
								</div>
							</div>
						</c:forEach>
					</div>
				</div>
			</div>
			<div class="col-4 mx-3">
				<div class="row fw-bold fs-5 text-center mt-5 mb-3">
					<div class="col">
						소속 팀
					</div>
				</div>
				<div class="row my-3">
					<div class="col">
						<c:if test="${empty tList}">
							<div class="row my-3 text-center">
								<div class="col">
									가입된 팀이 없습니다.
								</div>
							</div>
						</c:if>
						<c:if test="${not empty tList}">
							<c:forEach var="t" items="${tList}">
								<div class="row border-bottom my-3">
									<div class="col-3">
										<input type="radio" class="btn-check" name="teamNo" id="teamNo${t.no}" autocomplete="off" value="${t.no}">
										<label class="btn btn-success" for="teamNo${t.no}" style="--bs-btn-padding-y: .25rem; --bs-btn-padding-x: .5rem; --bs-btn-font-size: .75rem;">선택</label>									
									</div>
									<div class="col-9">
										${t.name}								
									</div>
								</div>
							</c:forEach>						
						</c:if>
					</div>
				</div>
			</div>
		</div>
		<div class="row my-3 text-center">
			<div class="col">
				<input type="submit" class="btn btn-dark" value="팀원 선택">
			</div>
		</div>
		</c:if>
		</form>		
	</div>
</div>
