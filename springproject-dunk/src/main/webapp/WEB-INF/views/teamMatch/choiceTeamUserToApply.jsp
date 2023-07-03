<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<div class="row mt-5">
	<div class="col-6 offset-3 border rounded-5 border-2 border-warning">
		<div class="row mx-3 my-3">
			<div class="col">
				<div class="row fw-bold fs-4">
					<div class="col">
						${t.name}
					</div>
				</div>				
					<div class="row my-3">
						<div class="col">
							<div class="bg-secondary bg-opacity-10 rounded-start rounded-end">
								<form action="completeApplyTeamMatch" method="post">
									<input type="hidden" name="bookNo" value="${bookNo}">
									<input type="hidden" name="teamNo" value="${t.no}">	
									<input type="hidden" name="tmNo" value="${tmNo}">								
								<div class="row mx-3 py-3">
									<div class="col">										
										<div class="row border-bottom my-2 px-5">
											<div class="col-6 fw-bold">
												팀장
											</div>
											<div class="col-4 text-end">
												${t.leaderNick}
											</div>
											<div class="col-2 text-end">
												<input type="checkbox" class="btn-check" id="userId${t.leaderId}" name="userId" value="${t.leaderId}">
												<label class="btn btn-primary" for="userId${t.leaderId}" style="--bs-btn-padding-y: .25rem; --bs-btn-padding-x: .5rem; --bs-btn-font-size: .75rem;">선택</label>
											</div>
										</div>									
										<c:forEach var="u" items="${uList}">
											<c:if test="${u.userId !=t.leaderId}">
												<div class="row border-bottom my-2 px-5">
													<div class="col-6 fw-bold">
														팀원
													</div>
													<div class="col-4 text-end">
														${u.userNick}														
													</div>
													<div class="col-2 text-end">
														<input type="checkbox" class="btn-check" id="userId${u.userId}" name="userId" value="${u.userId}">
														<label class="btn btn-primary" for="userId${u.userId}" style="--bs-btn-padding-y: .25rem; --bs-btn-padding-x: .5rem; --bs-btn-font-size: .75rem;">선택</label>
													</div>
												</div>
											</c:if>
										</c:forEach>																														
									</div>
								</div>
								<div class="row px-5 py-3 text-center">
									<div class="col">
										<input type="submit" class="btn btn-dark" value="선택 완료">					
									</div>											
								</div>
								</form>																											
							</div>
						</div>
					</div>						
			</div>
		</div>
	</div>
</div>
