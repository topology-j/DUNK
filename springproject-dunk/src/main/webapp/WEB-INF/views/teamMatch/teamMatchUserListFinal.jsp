<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<div class="row my-5">
	<div class="col-8 offset-2">
		<div class="row border rounded-5 border-2" style="--bs-border-color: #fa9300">
			<div class="col">
				<div class="row my-3">
					<div class="col-6 mx-3">
						<div class="row">
							<div class="col">
								<div class="row fw-bold fs-4 text-center">
									<div class="col">
										<span class="text-danger">${teamName}</span>
									</div>
								</div>
								<c:forEach var="u" items="${uList1}">
									<div class="row my-3 border-bottom py-2 px-2" style="--bs-border-color: #E1E1E1">
										<div class="col-9">
											${u.userNick}
										</div>										
										<div class="col-3">
											<div class="d-grid gap-2">
												<c:if test="${sessionScope.id==u.userId}">													
													<button class="btn btn-primary" type="button" disabled>평가</button>													
												</c:if>
												<c:if test="${sessionScope.id !=u.userId}">
													<c:forEach var="uu" items="${eList}">
														<c:if test="${sessionScope.id==uu.userId && u.userId==uu.partnerId && uu.isEval=='평가전'}">
															<button class="btn btn-primary" type="button" onclick="location.href='evaluationUser?userId=${uu.userId}&bookNo=${bookNo}&teamName=${teamName}&partnerTeamName=${partnerTeamName}&partnerId=${uu.partnerId}'">평가</button>											  
														</c:if>
														<c:if test="${sessionScope.id==uu.userId && u.userId==uu.partnerId && uu.isEval=='평가후'}">
															<button class="btn btn-primary" type="button" onclick="location.href='evaluationUser?userId=${uu.userId}&bookNo=${bookNo}&teamName=${teamName}&partnerTeamName=${partnerTeamName}&partnerId=${uu.partnerId}'" disabled>평가</button>											  
														</c:if>
													</c:forEach>
												</c:if>
											</div>
										</div>
									</div>
								</c:forEach>
							</div>
						</div>
					</div>
					<div class="col-5 mx-3">
						<div class="row">
							<div class="col">
								<div class="row fw-bold fs-4 text-center">
									<div class="col">
										<span class="text-primary">${partnerTeamName}</span>
									</div>
								</div>
									<c:forEach var="u" items="${uList2}">
									<div class="row my-3 border-bottom py-2 px-2" style="--bs-border-color: #E1E1E1">
										<div class="col-8">
											${u.userNick}
										</div>
										<div class="col-4">
											<div class="d-grid gap-2">
												<c:if test="${sessionScope.id==u.userId}">													
													<button class="btn btn-primary" type="button" disabled>평가</button>													
												</c:if>
												<c:if test="${sessionScope.id !=u.userId}">
													<c:forEach var="uu" items="${eList}">
														<c:if test="${sessionScope.id==uu.userId && u.userId==uu.partnerId && uu.isEval=='평가전'}">
															<button class="btn btn-primary" type="button" onclick="location.href='evaluationUser?userId=${uu.userId}&bookNo=${bookNo}&teamName=${teamName}&partnerTeamName=${partnerTeamName}&partnerId=${uu.partnerId}'">평가</button>											  
														</c:if>
														<c:if test="${sessionScope.id==uu.userId && u.userId==uu.partnerId && uu.isEval=='평가후'}">
															<button class="btn btn-primary" type="button" onclick="location.href='evaluationUser?userId=${uu.userId}&bookNo=${bookNo}&teamName=${teamName}&partnerTeamName=${partnerTeamName}&partnerId=${uu.partnerId}'" disabled>평가</button>											  
														</c:if>
													</c:forEach>
												</c:if>
											</div>
										</div>
									</div>
								</c:forEach>
							</div> 
						</div>
					</div>
				</div>
				<div class="row mt-5 mb-3 text-center">
					<div class="col">
						<input type="button" class="btn btn-dark" value="리스트 보기" onclick="location.href='teamGameList?id=${sessionScope.id}'">
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
