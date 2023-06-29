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
								<div class="row mx-3 py-3">
									<div class="col">										
										<div class="row border-bottom my-2 px-5">
											<div class="col-6 fw-bold">
												팀장
											</div>
											<div class="col-6 text-end">
												<a href="profile?id=${t.leaderId}" class="text-decoration-none link-dark"><span class="text-danger">${t.leaderNick}</span></a>&nbsp;&nbsp;
												<c:if test="${sessionScope.id !=t.leaderId}">
													<input type="button" class="btn btn-dark" value="쪽지" onclick="location.href='writeMessageFormtd?sendId=${sessionScope.id}&sendNick=${sessionScope.nick}&receiveId=${t.leaderId}&receiveNick=${t.leaderNick}&no=${t.no}'" style="--bs-btn-padding-y: .25rem; --bs-btn-padding-x: .5rem; --bs-btn-font-size: .75rem;">&nbsp;&nbsp;
												</c:if>		
												<c:if test="${t.leaderId==sessionScope.id}">
													<input type="button" class="btn btn-danger" value="탈퇴" onclick="location.href='leaveTeam?no=${t.no}&id=${t.leaderId}'" style="--bs-btn-padding-y: .25rem; --bs-btn-padding-x: .5rem; --bs-btn-font-size: .75rem;">																						
												</c:if>
											</div>											
										</div>
										<div class="row border-bottom my-2 px-5">
											<div class="col-6 fw-bold">
												정원
											</div>
											<div class="col-6 text-end">
												${t.peopleNum}명
											</div>
										</div>	
										<div class="row border-bottom my-2 px-5">
											<div class="col-6 fw-bold">
												경기수
											</div>
											<div class="col-6 text-end">
												${t.matchNum}
											</div>
										</div>
										<div class="row border-bottom my-2 px-5">
											<div class="col-6 fw-bold">
												팀소개
											</div>
											<div class="col-6 text-end">
												<pre>${t.explanation}</pre>
											</div>
										</div>			
										<div class="row border-bottom my-2 px-5">
											<div class="col-6 fw-bold">
												팀원 프로필
											</div>
											<div class="col-6 text-end">
												<c:forEach var="u" items="${uList}">													
													<c:if test="${t.leaderId !=u.userId}">
													<div class="my-2">
														<a href="profile?id=${u.userId}" class="text-decoration-none link-dark">${u.userNick}</a>&nbsp;&nbsp;
														<c:if test="${sessionScope.id !=u.userId}">
															<input type="button" class="btn btn-dark" value="쪽지" onclick="location.href='writeMessageFormtd?sendId=${sessionScope.id}&sendNick=${sessionScope.nick}&receiveId=${u.userId}&receiveNick=${u.userNick}&no=${t.no}'" style="--bs-btn-padding-y: .25rem; --bs-btn-padding-x: .5rem; --bs-btn-font-size: .75rem;">&nbsp;&nbsp;
														</c:if>															
														<c:if test="${u.userId==sessionScope.id}">
															<input type="button" class="btn btn-danger" value="탈퇴" onclick="location.href='leaveTeam?no=${t.no}&id=${u.userId}'" style="--bs-btn-padding-y: .25rem; --bs-btn-padding-x: .5rem; --bs-btn-font-size: .75rem;">&nbsp;&nbsp;									
														</c:if>
														<c:if test="${t.leaderId==sessionScope.id}">
															<input type="button" class="btn btn-danger" value="탈퇴" onclick="location.href='deleteTeamUser?no=${t.no}&id=${u.userId}'" style="--bs-btn-padding-y: .25rem; --bs-btn-padding-x: .5rem; --bs-btn-font-size: .75rem;">								
														</c:if>
													</div>
													</c:if>
												</c:forEach>
											</div>
										</div>																										
										<c:if test="${sessionScope.id==t.leaderId}">	
										<form action="addTeamUser" method="post">
											<input type="hidden" name="no" value="${t.no}">
											<div class="row border-bottom my-2 py-3 px-5">											
												<div class="col-4 fw-bold">
													팀원 추가
												</div>
												<div class="col-6 text-end">
													<input class="form-control" name="nick" placeholder="닉네임">
												</div>
												<div class="col-2 text-end">
													<input type="submit" class="btn btn-success" value="추가" style="--bs-btn-padding-y: .25rem; --bs-btn-padding-x: .5rem; --bs-btn-font-size: .75rem;">
												</div>											
											</div>
										</form>		
										<div class="row mt-5 px-5 text-center">
											<div class="col">
												<input type="button" class="btn btn-dark" value="팀 모집" onclick="location.href='teamRecruitmentWrite?no=${t.no}'">&nbsp;&nbsp;																						
												<input type="button" class="btn btn-dark" value="팀 정보수정" onclick="location.href='updateTeam?no=${t.no}'">&nbsp;&nbsp;	
												<input type="button" class="btn btn-dark" value="팀 삭제" onclick="location.href='deleteTeam?no=${t.no}&id=${sessionScope.id}'">&nbsp;&nbsp;	
												<input type="button" class="btn btn-dark" value="리스트" onclick="location.href='myteamList?id=${sessionScope.id}'">										
											</div>											
										</div>	
										</c:if>																													
									</div>
								</div>								
							</div>
						</div>
					</div>						
			</div>
		</div>
	</div>
</div>

