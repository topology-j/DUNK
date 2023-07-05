<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<div class="row mt-5">
	<div class="col-6 offset-3 border rounded-5 border-2" style="--bs-border-color: #fa9300">
		<div class="row mx-3 my-3">
			<div class="col">
				<div class="row fw-bold fs-4">
					<div class="col">
						나의 팀 리스트
					</div>
				</div>
				<c:if test="${not empty tList}">
				<c:forEach var="t" items="${tList}">
					<div class="row my-3">
						<div class="col">
							<div class="bg-secondary bg-opacity-10 rounded-start rounded-end">
								<div class="row mx-3 py-3">
									<div class="col">
										<div class="row fw-bold border-bottom my-2 px-5 py-2" style="--bs-border-color: #E1E1E1">
											<div class="col-6">
												${t.name}
											</div>
											<div class="col-6 text-end">												
												<input type="button" class="btn btn-success" value="상세보기" onclick="location.href='teamDetail?no=${t.no}'" style="--bs-btn-padding-y: .25rem; --bs-btn-padding-x: .5rem; --bs-btn-font-size: .75rem;">&nbsp;&nbsp;
												<input type="button" class="btn btn-danger" value="탈퇴" onclick="location.href='leaveTeam?no=${t.no}&id=${sessionScope.id}'" style="--bs-btn-padding-y: .25rem; --bs-btn-padding-x: .5rem; --bs-btn-font-size: .75rem;">												
											</div>
										</div>
										<div class="row border-bottom my-2 px-5 py-2" style="--bs-border-color: #E1E1E1">
											<div class="col-6">
												팀장
											</div>
											<div class="col-6 text-end">
												<span class="text-danger">${t.leaderNick}</span>님
											</div>
										</div>																					
									</div>
								</div>								
							</div>
						</div>
					</div>
				</c:forEach>
				</c:if>	
				<c:if test="${empty tList}">
					<div class="row my-5 mx-2">가입된 팀이 없습니다.</div>
				</c:if>		
			</div>
		</div>
	</div>
</div>

