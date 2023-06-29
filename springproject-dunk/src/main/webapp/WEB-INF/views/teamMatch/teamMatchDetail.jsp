<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<div class="row my-5">
	<div class="col-8 offset-2">
		<div class="row">
			<div class="col-6 border rounded-5 border-2 border-warning mx-3 px-3">
				<div class="row mt-3">
					<div class="col">
						<div class="row my-2 fs-5 fw-bold">
							<div class="col">
								매치 포인트
							</div>
						</div>
					</div>
				</div>
				<div class="row my-3 border-bottom pb-3">
					<div class="col-6">
						${tm.level}
					</div>
					<div class="col-6">
						${tm.gender}
					</div>
				</div>
				<div class="row my-3 border-bottom pb-3">
					<div class="col">
						<c:if test="${u.profileImg==0}">
							<img src="resources/userimage/pureimg.jpg" class="rounded-circle" style="width:50px; height:50px">
						</c:if>
						<c:if test="${u.profileImg !=0}">
							<img src="resources/userimage/${p.img}" class="rounded-circle" style="width:50px; height:50px">
						</c:if>
						${tm.writerNick}&nbsp;&nbsp;
						<input type="button" class="btn btn-dark" value="쪽지" onclick="location.href='writeMessageFormtm?sendId=${sessionScope.id}&sendNick=${sessionScope.nick}&receiveId=${tm.writerId}&receiveNick=${tm.writerNick}&no=${tm.no}'" style="--bs-btn-padding-y: .25rem; --bs-btn-padding-x: .5rem; --bs-btn-font-size: .75rem;">
					</div>					
				</div>
				<div class="row my-3 border-bottom">
					<div class="col-6 fw-bold">
						${t.name}
					</div>
					<div class="col-6">						
						<c:forEach var="u" items="${tuList}">
							<div class="my-1">${u.userNick}</div>
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
					<div class="col border rounded-5 border-2 border-warning mx-3 px-3">				
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
						<div class="row my-2 border-bottom">
							<div class="col">										
								<div>${pb.placeAddress1}</div>
							</div>
						</div>
						<div class="row my-3 border-bottom py-3 fw-bold">
							<div class="col">
								${tm.pay}원
							</div>
						</div>
						<div class="row my-3 py-2">
							<div class="col">
								<div class="d-grid gap-2">
									<button class="btn btn-primary" type="button" onclick="location.href='applyTeamMatch?id=${sessionScope.id}&bookNo=${tm.bookNo}&tmNo=${tm.no}'">신청하기</button>					  
								</div>
							</div>
						</div>
					</div>
				</div>				
			</div>
		</div>
	</div>
</div>