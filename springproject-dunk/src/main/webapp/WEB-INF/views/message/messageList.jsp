<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
    
<div class="row my-5">
	<div class="col-8 offset-2">	
		<div class="row mb-4 text-end">
			<div class="col">
				<input type="button" class="btn btn-success" value="쪽지 보내기" onclick="location.href='writeMessageForm'">
			</div>
		</div>
		<div class="row fw-bold border-bottom  border-dark border-2">
			<div class="col-1">				
			</div>
			<div class="col-2 text-truncate">
				<div>보낸 사람</div>
			</div>
			<div class="col-7">
				<div>내 용</div>
			</div>
			<div class="col-2">
				<div>날짜</div>
			</div>
		</div>
		<c:if test="${empty mList}">
			<div class="my-5 text-center">받은 쪽지가 없습니다.</div>
		</c:if>
		<c:if test="${not empty mList}">
			<c:forEach var="m" items="${mList}">
				<c:if test="${m.readMessage==0}">
					<div class="row border-bottom my-2 text-info">					
						<div class="col-1">	
							<input type="button" class="btn btn-dark" onclick="location.href='deleteMessage?no=${m.no}&id=${m.receiveId}&pageNum=${pageNum}'" style="--bs-btn-padding-y: .25rem; --bs-btn-padding-x: .5rem; --bs-btn-font-size: .75rem;" value="삭제">			
						</div>
						<div class="col-2">
							<div>${m.sendNick}</div>
						</div>
						<div class="col-6 text-truncate">
							<div><a href="messageDetail?no=${m.no}&id=${m.receiveId}&pageNum=${pageNum}" class="text-decoration-none link-info">${m.content}</a></div>
						</div>
						<div class="col-3 text-end">
							<fmt:formatDate value="${m.regDate}" pattern="yyyy-MM-dd HH:mm" />						
						</div>					
					</div>
				</c:if>
					<c:if test="${m.readMessage !=0}">
					<div class="row border-bottom my-2 text-secondary">					
						<div class="col-1">	
							<input type="button" class="btn btn-dark" onclick="location.href='deleteMessage?no=${m.no}&id=${m.receiveId}&pageNum=${pageNum}'" style="--bs-btn-padding-y: .25rem; --bs-btn-padding-x: .5rem; --bs-btn-font-size: .75rem;" value="삭제">			
						</div>
						<div class="col-2">
							<div>${m.sendNick}</div>
						</div>
						<div class="col-6 text-truncate">
							<div><a href="messageDetail?no=${m.no}&id=${m.receiveId}&pageNum=${pageNum}" class="text-decoration-none link-secondary">${m.content}</a></div>
						</div>
						<div class="col-3 text-end">
							<fmt:formatDate value="${m.regDate}" pattern="yyyy-MM-dd HH:mm" />
						</div>					
					</div>
				</c:if>
			</c:forEach>
		</c:if>
	</div>	
	<div class="row">
		<div class="col">
			<nav>
			  <ul class="pagination justify-content-center">
			  	<c:if test="${pageGroup<startPage}">
				    <li class="page-item">
				      <a class="page-link" href="messageList?pageNum=${startPage-1}&id=${id}">Pre</a>
				    </li>
			    </c:if>
			    <c:forEach var="i" begin="${startPage}" end="${endPage}">
			    	<c:if test="${i !=pageNum}">
			    		 <li class="page-item"><a class="page-link" href="messageList?pageNum=${i}&id=${id}">${i}</a></li>
			    	</c:if>
			    	<c:if test="${i ==pageNum}">
			    		 <li class="page-item active" aria-current="page"><a class="page-link">${i}</a></li>
			    	</c:if>
			    </c:forEach>
			    <c:if test="${endPage<pageCount}">
				    <li class="page-item">
				      <a class="page-link" href="messageList?pageNum=${endPage+1}&id=${id}">Next</a>
				    </li>
			    </c:if>
			  </ul>
			</nav>
		</div>
	</div>				
	<div class="col-2">	
	</div>
</div>