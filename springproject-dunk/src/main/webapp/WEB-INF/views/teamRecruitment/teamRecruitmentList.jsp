<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!-- 팀 모집 게시판 리스트-->
<style type="text/css">
.bg-orange {
	background-color: #fa9300;
}

.table th, .table td {
	border: 1px solid black;
}
</style>

<div class="row ">
	<div class="col">

		<div class="row mt-5 ">
			<div class="col">
				<h3 class="text-center">팀 모집 게시판</h3>
			</div>
		</div>


		<div class="row mt-5">
			<div class="col-md-10 mx-auto content-center text-center">
				<table class="table">					
					<thead class="">
						<tr class="table bg-orange">
							<th>번호</th>
							<th>팀 이름</th>
							<th>제목</th>
							<th>작성자</th>
							<th>조회수</th>
							<th>작성일</th>
						</tr>
					</thead>

					<tbody>
						<c:if test="${not empty teamRecruitmentList }">
							<c:forEach var="tr" items="${teamRecruitmentList}" varStatus="status">
								<tr class="align-middle">
									<td class="t_center ">${tr.no}</td>
									<td class="t_center ">${tr.name}</td>
									<td class="t_center "><a
										href="teamRecruitmentDetail?no=${tr.no}&pageNum=${currentPage}"
										class="nav-link text-dark"> ${tr.title} </a></td>
									<td class="t_center ">${tr.userNick}</td>
									<td class="t_center ">${tr.readCount}</td>
									<td class="t_center ">${tr.regDate}</td>
								</tr>
							</c:forEach>
						</c:if>

						<c:if test="${empty teamRecruitmentList }">
							<tr>
								<td colspan="6">게시물이 없습니다.</td>
							</tr>
						</c:if>
					</tbody>

				</table>
			</div>
		</div>

		<div class="row">
			<div class="col">
				<nav aria-label="Page navigation">
					<ul class="pagination justify-content-center">

						<c:if test="${ startPage > pageGroup }">
							<li class="page-item">
								<a class="page-link" href="teamRecruitmentList?pageNum=${ startPage - pageGroup }">Pre</a>
							</li>
						</c:if>
				
						<c:forEach var="i" begin="${startPage}" end="${endPage}">

							<c:if test="${i == currentPage }">
								<li class="page-item active" aria-current="page"> <span	class="page-link">${i}</span>	</li>
							</c:if>

							<c:if test="${i != currentPage }">
								<li class="page-item"><a class="page-link" href="teamRecruitmentList?pageNum=${ i }">${i}</a></li>
							</c:if>
						</c:forEach>
						
						<c:if test="${ endPage < pageCount }">
							<li class="page-item"><a class="page-link" href="teamRecruitmentList?pageNum=${ startPage +pageGroup }">Next</a></li>
						</c:if>
					</ul>
				</nav>
			</div>
		</div>

	</div>
</div>