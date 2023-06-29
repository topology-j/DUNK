<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<style type="text/css">
.bg-orange {
    background-color: #fa9300;
}

</style>
<!-- 팀 모집 게시판 게시글 작성-->
<c:if test="${empty t}">
<div class="row my-5" id="global-content">
	<div class="col">
		<div class="row text-center">
			<div class="col">
				<h2 class="fs-3 fw-bold">게시글 작성</h2>
			</div>
		</div>
		<form name="teamRecruitmentWrite" action="teamRecruitmentWriteProcess"
			id="teamRecruitmentWrite" class="row g-3 border-primary"	method="post">

			<div class="col-8 offset-md-2">
				<label for="writer" class="form-label">제목</label> 
				<input type="text" class="form-control" name="title" id="title">
			</div>			
			<div class="col-8 offset-md-2">
				<label for="title" class="form-label">작성자</label> 
				<input type="text" class="form-control" name="userId" id="userId">
			</div>	
			<div class="col-8 offset-md-2">
				<label for="title" class="form-label">팀이름</label> 
				<input type="text" class="form-control" name="name" id="name">
			</div>
			<div class="col-8 offset-md-2">
				<label for="title" class="form-label">모집 인원수</label> 
				<input type="text" class="form-control" name="personnel" id="personnel">
			</div>
			<div class="col-8 offset-md-2">
				<label for="title" class="form-label">선호지역</label> 
				<input type="text" class="form-control" name="preferredArea" id="preferredArea">
			</div>
			<div class="col-8 offset-md-2">
				<label for="title" class="form-label">선호요일</label> 
				<input type="text" class="form-control" name="preferredDay" id="preferredDay">
			</div>
			<div class="col-8 offset-md-2">
				<label for="title" class="form-label">모집성별</label> 
				<input type="text" class="form-control" name="gender" id="gender">
			</div>
			
			<div class="col-8 offset-md-2">
				<label for="content" class="form-label">내용</label>
				<textarea class="form-control" name="content" id="content" rows="10"></textarea>
			</div>
			
			<div class="col-8 offset-md-2 text-center mt-5">
				<input type="submit" value="등록하기" class="btn bg-orange " />	&nbsp;&nbsp;
				<input type="button" value="목록보기" onclick="location.href='teamRecruitmentList'" class="btn bg-orange" />
			</div>
		</form>
	</div>
</div>
</c:if>


<c:if test="${not empty t}">
<div class="row my-5" id="global-content">
	<div class="col">
		<div class="row text-center">
			<div class="col">
				<h2 class="fs-3 fw-bold">게시글 작성</h2>
			</div>
		</div>
		<form name="teamRecruitmentWrite" action="teamRecruitmentWriteProcess"
			id="teamRecruitmentWrite" class="row g-3 border-primary"	method="post">
			<input type="hidden" name="teamNo" value="${t.no}">
			<input type="hidden" name="userId" value="${t.leaderId}">

			<div class="col-8 offset-md-2">
				<label for="writer" class="form-label">제목</label> 
				<input type="text" class="form-control" name="title" id="title">
			</div>			
			<div class="col-8 offset-md-2">
				<label for="title" class="form-label">작성자</label> 
				<input type="text" class="form-control" name="userNick" id="userNick" value="${t.leaderNick}" readonly>
			</div>	
			<div class="col-8 offset-md-2">
				<label for="title" class="form-label">팀이름</label> 
				<input type="text" class="form-control" name="name" id="name" value="${t.name}" readonly>
			</div>
			<div class="col-8 offset-md-2">
				<label for="title" class="form-label">모집 인원</label> 
				<input type="text" class="form-control" name="personnel" id="personnel">
			</div>
			<div class="col-8 offset-md-2">
				<label for="title" class="form-label">선호지역</label> 
				<input type="text" class="form-control" name="preferredArea" id="preferredArea">
			</div>
			<div class="col-8 offset-md-2">
				<label for="title" class="form-label">선호요일</label> 
				<input type="text" class="form-control" name="preferredDay" id="preferredDay">
			</div>
			<div class="col-8 offset-md-2">
				<label for="title" class="form-label">모집성별</label> 
				<input type="text" class="form-control" name="gender" id="gender">
			</div>
			
			<div class="col-8 offset-md-2">
				<label for="content" class="form-label">내용</label>
				<textarea class="form-control" name="content" id="content" rows="10"></textarea>
			</div>
			
			<div class="col-8 offset-md-2 text-center mt-5">
				<input type="submit" value="등록하기" class="btn bg-orange " />	&nbsp;&nbsp;
				<input type="button" value="목록보기" onclick="location.href='teamRecruitmentList'" class="btn bg-orange" />
			</div>
		</form>
	</div>
</div>
</c:if>