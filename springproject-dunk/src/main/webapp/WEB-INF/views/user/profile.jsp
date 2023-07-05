<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 

<c:if test="${sessionScope.id==u.id}">
<div class="row mt-5">
	<div class="col-10 offset-2">
		<div class="row">
			<div class="col-4 border rounded-5 border-2" style="--bs-border-color: #fa9300">
				<div class="row mx-3 my-3">
					<div class="col-6">
						<div class="row my-5">
							<div class="col">
								<span class="fw-bold fs-4">${u.nickname}</span>
							</div>
						</div>
					</div>
					<div class="col-6 text-end">
						<c:if test="${u.profileImg==0}">
							<img src="resources/userimage/pureimg.jpg" class="rounded-circle" style="width:150px; height:150px">
						</c:if>
						<c:if test="${u.profileImg !=0}">
							<img src="resources/userimage/${p.img}" class="rounded-circle" style="width:150px; height:150px">
						</c:if>
					</div>
				</div>			
				<div class="row mx-3 my-3">
					<div class="col">
						<div><pre>${p.introduction}</pre></div>
					</div>
				</div>		
				<div class="row mx-3 mt-3 mb-5">
					<div class="col">
						<div class="d-grid gap-2">
							<button class="btn btn-dark" type="button" onclick="location.href='updateProfile?id=${u.id}'">프로필 수정</button>
						</div>
					</div>					
				</div>						
			</div>
			<div class="col-6">				
				<div class="row">
					<div class="col-11 offset-1 border rounded-5 border-2" style="--bs-border-color: #fa9300">
						<div class="mx-3 my-3">
							<div class="row my-4 border-bottom" style="--bs-border-color: #E1E1E1">
								<div class="col-6">
									생년월일
								</div>
								<div class="col-6 text-end">
									${p.birth}
								</div>
							</div>
							<div class="row my-4 border-bottom" style="--bs-border-color: #E1E1E1">
								<div class="col-6">
									성별
								</div>
								<div class="col-6 text-end">
									${p.gender}
								</div>
							</div>
							<div class="row my-4 border-bottom" style="--bs-border-color: #E1E1E1">
								<div class="col-6">
									포지션
								</div>
								<div class="col-6 text-end">
									${p.position}
								</div>
							</div>
							<div class="row my-4 border-bottom" style="--bs-border-color: #E1E1E1">
								<div class="col-6">
									선호지역
								</div>
								<div class="col-6 text-end">
									${p.preferredArea}
								</div>
							</div>
							<div class="row my-4 border-bottom" style="--bs-border-color: #E1E1E1">
								<div class="col-6">
									연령대
								</div>
								<div class="col-6 text-end">
									${p.agegroup}대
								</div>
							</div>
							<div class="row my-4 border-bottom" style="--bs-border-color: #E1E1E1">
								<div class="col-6">
									경기
								</div>
								<div class="col-6 text-end">
									${u.matchNum}
								</div>
							</div>
						</div>
					</div>
				</div>				
			</div>
		</div>
	</div>
</div>
</c:if>


<c:if test="${sessionScope.id !=u.id && p.openProfile=='공개'}">
<div class="row mt-5">
	<div class="col-10 offset-2">
		<div class="row">
			<div class="col-4 border rounded-5 border-2 border-warning">
				<div class="row mx-3 my-3">
					<div class="col-6">
						<div class="row my-5">
							<div class="col">
								<span class="fw-bold fs-4">${u.nickname}</span>
							</div>
						</div>
					</div>
					<div class="col-6 text-end">
						<c:if test="${u.profileImg==0}">
							<img src="resources/userimage/pureimg.jpg" class="rounded-circle" style="width:150px; height:150px">
						</c:if>
						<c:if test="${u.profileImg !=0}">
							<img src="resources/userimage/${p.img}" class="rounded-circle" style="width:150px; height:150px">
						</c:if>
					</div>
				</div>			
				<div class="row mx-3 my-3">
					<div class="col">
						<div><pre>${p.introduction}</pre></div>
					</div>
				</div>								
			</div>
			<div class="col-6">				
				<div class="row">
					<div class="col-11 offset-1 border rounded-5 border-2 border-warning">
						<div class="mx-3 my-3">
							<div class="row my-4 border-bottom">
								<div class="col-6">
									생년월일
								</div>
								<div class="col-6 text-end">
									${p.birth}
								</div>
							</div>
							<div class="row my-4 border-bottom">
								<div class="col-6">
									성별
								</div>
								<div class="col-6 text-end">
									${p.gender}
								</div>
							</div>
							<div class="row my-4 border-bottom">
								<div class="col-6">
									포지션
								</div>
								<div class="col-6 text-end">
									${p.position}
								</div>
							</div>
							<div class="row my-4 border-bottom">
								<div class="col-6">
									선호지역
								</div>
								<div class="col-6 text-end">
									${p.preferredArea}
								</div>
							</div>
							<div class="row my-4 border-bottom">
								<div class="col-6">
									연령대
								</div>
								<div class="col-6 text-end">
									${p.agegroup}대
								</div>
							</div>
							<div class="row my-4 border-bottom">
								<div class="col-6">
									경기
								</div>
								<div class="col-6 text-end">
									${u.matchNum}
								</div>
							</div>
						</div>
					</div>
				</div>				
			</div>
		</div>
	</div>
</div>
</c:if>

<c:if test="${sessionScope.id !=u.id && (p.openProfile=='비공개' || u.isProfile==0)}">
	<div class="row my-5 mx-5">사용자가 프로필을 생성하지 않았거나, 프로필을 비공개하였습니다.</div>
</c:if>