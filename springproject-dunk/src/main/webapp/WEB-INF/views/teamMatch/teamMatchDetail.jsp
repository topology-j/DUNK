<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<div class="row my-5">
	<div class="col-8 offset-2">
		<div class="row">
			<div class="col-6 border rounded-5 border-2 mx-3 px-3" style="--bs-border-color: #fa9300">
				<div class="row mt-3">
					<div class="col">
						<div class="row my-2 fs-5 fw-bold">
							<div class="col">
								매치 포인트
							</div>
						</div>
					</div>
				</div>
				<div class="row my-3 border-bottom pb-3" style="--bs-border-color: #E1E1E1">
					<div class="col-6">
						${tm.level}
					</div>
					<div class="col-6">
						${tm.gender}
					</div>
				</div>
				<div class="row my-3 border-bottom pb-3" style="--bs-border-color: #E1E1E1">
					<div class="col-6">
						<c:if test="${u.profileImg==0}">
							<img src="resources/userimage/pureimg.jpg" class="rounded-circle" style="width:50px; height:50px">
						</c:if>
						<c:if test="${u.profileImg !=0}">
							<img src="resources/userimage/${p.img}" class="rounded-circle" style="width:50px; height:50px">
						</c:if>
						${tm.writerNick}&nbsp;&nbsp;
						<c:if test="${sessionScope.isLogin && sessionScope.id !=tm.writerId}">
							<input type="button" class="btn btn-dark" value="쪽지" onclick="location.href='writeMessageFormtm?sendId=${sessionScope.id}&sendNick=${sessionScope.nick}&receiveId=${tm.writerId}&receiveNick=${tm.writerNick}&no=${tm.no}&pageNum=${pageNum}'" style="--bs-btn-padding-y: .25rem; --bs-btn-padding-x: .5rem; --bs-btn-font-size: .75rem;">
						</c:if>
					</div>
					<div class="col-6">
						<c:if test="${sessionScope.id==tm.writerId}">							
							<button class="btn btn-danger" type="button" onclick="location.href='deleteTeamMatch?tmNo=${tm.no}&pageNum=${pageNum}'" style="--bs-btn-padding-y: .25rem; --bs-btn-padding-x: .5rem; --bs-btn-font-size: .75rem;">게시글 삭제</button>	  
						</c:if>
					</div>					
				</div>
				<div class="row my-3 border-bottom" style="--bs-border-color: #E1E1E1">
					<div class="col-6 fw-bold">
						${t.name}
					</div>
					<div class="col-6">						
						<c:forEach var="u" items="${tuList}">
							<div class="my-1">
								<c:if test="${sessionScope.isLogin}">
									<input type="button" class="btn btn-success" value="프로필" onclick="location.href='profile?id=${u.userId}'" style="--bs-btn-padding-y: .25rem; --bs-btn-padding-x: .5rem; --bs-btn-font-size: .75rem;">&nbsp;&nbsp;
								</c:if>
								<span>${u.userNick}</span>
							</div>
						</c:forEach>
					</div>
				</div>
				<div class="row my-3">
					<div class="col">
						<pre>${tm.information}</pre>
					</div>
				</div>
			</div>
			<div class="col-5">
				<div class="row">
					<div class="col border rounded-5 border-2 mx-3 px-3" style="--bs-border-color: #fa9300">				
						<div class="row mt-3 fs-5 fw-bold">
							<div class="col">
								<fmt:formatDate value="${tm.date}" pattern="yyyy-MM-dd" />&nbsp;&nbsp;&nbsp;&nbsp;
								${tm.time}
							</div>
						</div>
						<div class="row mt-3 mb-2">
							<div class="col">
								<div class="fs-4">${pb.placeName}</div>						
							</div>
						</div>
						<div class="row my-2 border-bottom" style="--bs-border-color: #E1E1E1">
							<div class="col">										
								<div>${pb.placeAddress1}</div>
							</div>
						</div>
						<div class="row my-3 border-bottom py-3 fw-bold" style="--bs-border-color: #E1E1E1">
							<div class="col">
								${tm.pay}원
							</div>
						</div>
						<div class="row my-3 py-2">
							<div class="col">
								<c:if test="${tm.process=='신청가능'}">
									<c:if test="${sessionScope.isLogin}">
										<div class="d-grid gap-2">
											<button class="btn btn-primary" type="button" onclick="location.href='applyTeamMatch?id=${sessionScope.id}&bookNo=${tm.bookNo}&tmNo=${tm.no}'">신청하기</button>					  
										</div>
									</c:if>
									<c:if test="${!sessionScope.isLogin}">
										<div class="d-grid gap-2">
											<button class="btn btn-primary" type="button" onclick="location.href='applyTeamMatch?id=${sessionScope.id}&bookNo=${tm.bookNo}&tmNo=${tm.no}'" disabled>신청하기</button>					  
										</div>
									</c:if>
								</c:if>
								<c:if test="${tm.process=='마감'}">
									<div class="d-grid gap-2">
										<button class="btn btn-secondary" type="button" onclick="location.href='teamMatchList'">마감</button>					  
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