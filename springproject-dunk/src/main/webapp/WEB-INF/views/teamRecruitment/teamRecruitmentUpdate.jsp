<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<style>

</style>
<!-- 팀 모집 게시판 수정하기-->
<div class="row text-center">
	<div class="col">
	<h2 class="fs-3 fw-bold">게시 글 수정하기</h2>
	</div>
</div>
<form name="teamRecruitmentUpdate" action="teamRecruitmentUpdateProcess" id="teamRecruitmentUpdate" 
	class="row g-3 border-primary" method="post">
<input type="hidden" name="no" value="${teamRecruitment.no}">
<div class="col-8 offset-md-2">
				<label for="writer" class="form-label">제목</label> 
				<input type="text" class="form-control" name="title" id="title" value="${teamRecruitment.title}">
			</div>			
			<div class="col-8 offset-md-2">
				<label for="title" class="form-label">작성자</label> 
				<input type="text" class="form-control" name="userId" id="userId" value="${teamRecruitment.userId}">
			</div>	
			<div class="col-8 offset-md-2">
				<label for="title" class="form-label">팀이름</label> 
				<input type="text" class="form-control" name="name" id="name" value="${teamRecruitment.name}">
			</div>
			<div class="col-8 offset-md-2">
				<label for="title" class="form-label">모집 인원</label> 
				<input type="text" class="form-control" name="personnel" id="personnel" value="${teamRecruitment.personnel}">
			</div>
			<div class="col-8 offset-md-2">
				<label for="title" class="form-label">선호지역</label> 
				<input type="text" class="form-control" name="preferredArea" id="preferredArea" value="${teamRecruitment.preferredArea}">
			</div>
			<div class="col-8 offset-md-2">
				<label for="title" class="form-label">선호요일</label> 
				<input type="text" class="form-control" name="preferredDay" id="preferredDay" value="${teamRecruitment.preferredDay}">
			</div>
			<div class="col-8 offset-md-2">
				<label for="title" class="form-label">모집성별</label> 
				<input type="text" class="form-control" name="gender" id="gender" value="${teamRecruitment.gender}">
			</div>
			
			<div class="col-8 offset-md-2">
				<label for="content" class="form-label">내용</label>
				<textarea class="form-control" name="content" id="content" rows="10">${teamRecruitment.content}</textarea>
			</div>
			
			<div class="col-8 offset-md-2 text-center mt-5">
				<input type="submit" value="수정하기" class="btn bg-orange " />	&nbsp;&nbsp;
				<input type="button" value="목록보기" onclick="location.href='teamRecruitmentList'" class="btn bg-orange" />
			</div>
		</form>
	</div>
</div>