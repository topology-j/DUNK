<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 

<div class="row mt-5">
	<div class="col-10 offset-2">
		<div class="row">
			<div class="col-4 border rounded-5 border-2" style="--bs-border-color: #fa9300">
				<div class="row mx-3 my-3">
					<div class="col-6">
						<div class="row my-5">
							<div class="col">
								<span class="fw-bold fs-4">${u.name}</span><br>								
							</div>
						</div>
					</div>
					<div class="col-6 text-end">
						<c:if test="${u.profileImg==0}">
							<img src="resources/userimage/pureimg.jpg" class ="rounded-circle" style="width:150px;hieght:150px">
						</c:if>
						<c:if test="${u.profileImg !=0}">
							<img src="resources/userimage/${p.img}" class ="rounded-circle" style="width:150px;hieght:150px">
						</c:if>	
						<div class="row my-2">
							<div class="col">
								<c:if test="${u.isProfile==0}">
									<input type="button" class="btn btn-success" value="프로필 설정" onclick="location.href='profileForm?id=${u.id}'">
								</c:if>						
								<c:if test="${u.isProfile !=0}">
									<input type="button" class="btn btn-success" value="프로필 보기" onclick="location.href='profile?id=${u.id}'">
								</c:if>
							</div>
						</div>						
					</div>
				</div>
				<div class="row my-3">					
				</div>
				<div class="row mx-3 my-3">
					<div class="col-6">
						<div class="d-grid gap-2">
							<button class="btn btn-light text-start" type="button" onclick="location.href='mymanner?id=${u.id}'">매너<br>좋아요</button>
						</div>
					</div>
					<div class="col-6">
						<div class="d-grid gap-2">
							<c:if test="${!newMessage}">
								<button class="btn btn-light text-start" type="button" onclick="location.href='messageList?id=${u.id}'">덩크<br>쪽지함</button>
							</c:if>
							<c:if test="${newMessage}">
								<button class="btn btn-light text-start" type="button" onclick="location.href='messageList?id=${u.id}'">
									덩크<br>쪽지함<span class="fw-bold text-danger">&nbsp;&nbsp;new</span></button>
							</c:if>
						</div>
					</div>
				</div>
				<div class="row mx-3 my-3">
					<div class="col">
						<div class="d-grid gap-2 my-2">
							<button class="btn btn-primary text-start" type="button" onclick="location.href='myMatchingList?id=${u.id}'">나의 <br>개인 경기일정								
							</button>
						</div>						
					</div>
				</div>
				<div class="row mx-3 my-3">
					<div class="col">
						<div class="d-grid gap-2">
							<button class="btn btn-secondary text-start" type="button" onclick="location.href='teamGameList?id=${u.id}'">나의<br>팀 경기일정							
							</button>
						</div>
					</div>
				</div>
			</div>
			<div class="col-6">				
				<div class="row">
					<div class="col-11 offset-1 border rounded-5 border-2" style="--bs-border-color: #fa9300">
						<div class="mx-3 mt-4 mb-3">
							<div class="row my-3">
								<div class="col">
									<span class="fw-bold">나의 덩크</span>
								</div>
							</div>
							<div class="row my-3">
								<div class="col">
									<a href="updateUser?id=${u.id}" class="text-decoration-none link-dark">회원정보 수정</a>
								</div>
							</div>
							<div class="row my-3">
								<div class="col-6">
									<span>나의 캐시</span>
								</div>
								<div class="col-6 text-end">
									<span>${u.point}원</span>
								</div>
							</div>	
							<c:if test="${grade eq '100'}">										
							<div class="row my-3">
								<div class="col">									
									<a href="userPlace?userId=${u.id}" class="text-decoration-none link-dark">나의 장소</a>									
								</div>
							</div>
							</c:if>
							<c:if test="${grade eq '200'}">
							<div class="row my-3">
								<div class="col">
									<!-- 관리자라면 모든예약을 봐야지 -->									
									<a href="userPlaceList" class="text-decoration-none link-dark">모든 장소 예약</a>									
								</div>
							</div>
							</c:if>
							<div class="row my-3">
								<div class="col">
									<a href="generateTeamForm?id=${u.id}&nick=${u.nickname}" class="text-decoration-none link-dark">팀 생성</a>
								</div>
							</div>							
							<div class="row my-3">
								<div class="col">
									<a href="myteamList?id=${u.id}" class="text-decoration-none link-dark">나의 팀</a>
								</div>
							</div>
							<div class="row my-3">
								<div class="col">
									<a href="teamMatchCandidate?id=${u.id}" class="text-decoration-none link-dark">팀 매치</a>
								</div>
							</div>						
							<div class="row my-3">
								<div class="col">
									<c:if test="${u.isProfile==0}">
										<a href="profileForm?id=${u.id}" class="text-decoration-none link-dark">프로필 설정</a>
									</c:if>
									<c:if test="${u.isProfile !=0}">
										<a href="updateProfile?id=${u.id}" class="text-decoration-none link-dark">프로필 수정</a>
									</c:if>
								</div>
							</div>
							<div class="row my-3">
								<div class="col">
									<a href="deleteProfile?id=${u.id}" class="text-decoration-none link-dark">프로필 삭제</a>
								</div>
							</div>							
							<div class="row my-3">
								<div class="col">
									<a href="deleteUser?id=${u.id}" class="text-decoration-none link-dark">회원 탈퇴</a>
								</div>
							</div>							
						</div>
					</div>
				</div>				
			</div>
		</div>
	</div>
</div>