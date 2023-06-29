<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<style type="text/css">
tr th.bg-orange {
    background-color: #fa9300;
}
.table-bordered th, .table-bordered td {
    border: 1px solid black;
}

</style>
<!-- 팀 모집 게시판 상세보기-->
<div class="mt-5">
	<div>
		<form name="checkForm" id="checkForm">
			<input type="hidden" name="no" id="no" value="${ teamRecruitment.no }"/>
			<!-- <input type="hidden" name="pass" id="rPass" /> -->
		</form>
		<div class="row text-center">
			<div class="col">
				<h2 class="fs-3 fw-bold">게시글 상세보기</h2>
			</div>
		</div>

		<div class="row my-3 mt-5">
			<div class="col">
				<table class="table table-bordered">
					<tbody>
						<tr class="">
							<th class="col-2 bg-orange" >제목</th>
							<td colspan="3" class="col">${teamRecruitment.title}</td>
						</tr>
						<tr class="">
							<th class="col-2 bg-orange">작성자</th>
							<td class="col-4">${teamRecruitment.userNick}&nbsp;&nbsp;						
							<c:if test="${teamRecruitment.userId !=sessionScope.id}">
								<input type="button" class="btn btn-dark" value="쪽지" onclick="location.href='writeMessagetr?receiveId=${teamRecruitment.userId}&receiveNick=${teamRecruitment.userNick}&no=${ teamRecruitment.no }'" style="--bs-btn-padding-y: .25rem; --bs-btn-padding-x: .5rem; --bs-btn-font-size: .75rem;">	
							</c:if>																			
							</td>							
							<th class="col-2 bg-orange">작성일</th>
							<td class="col-4">${teamRecruitment.regDate}</td>
						</tr>
						<tr class="">
							<th class="col-2 bg-orange">팀이름</th>
							<td class="col-4">${teamRecruitment.name}</td>
							<th class="col-2 bg-orange">인원수</th>
							<td class="col-4">${teamRecruitment.personnel}</td>
						</tr>
						<tr class="">
							<th class="col-2 bg-orange">선호지역</th>
							<td class="col-4">${teamRecruitment.preferredArea}</td>
							<th class="col-2 bg-orange">선호요일</th>
							<td class="col-4">${teamRecruitment.preferredDay}</td>
						</tr>
						<tr class="">
							<th class="col-2 bg-orange" class="">모집성별</th>
							<td class="col-4" class="">${teamRecruitment.gender}</td>
							<th class="col-2 bg-orange" class="">조회수</th>
							<td class="col-4" class="">${teamRecruitment.readCount}</td>
						</tr>
						<tr>
							<td colspan="4" class=""><pre class="">${ teamRecruitment.content }</pre></td>
						</tr>
					</tbody>
				</table>
			</div>
		</div>
		<div class="row my-3">
			<div class="col text-center">
				<c:if test="${teamRecruitment.userId==sessionScope.id}">
				<input class="btn btn-warning" type="button" id="teamRecruitmentDetailUpdate" value="수정하기" 
				<%-- onclick="location.href='http://localhost:8080/springproject-dunk/teamRecruitmentUpdate?no=${teamRecruitment.no}'" --%>/> &nbsp;&nbsp;
				<input class="btn btn-danger"	type="button" id="teamRecruitmentDetailDelete" value="삭제하기" /> &nbsp;&nbsp;
				</c:if>
				<input class="btn btn-primary" type="button" value="목록보기"	onclick="location.href='teamRecruitmentList'" />				
			</div>
		</div>
	</div>
</div>