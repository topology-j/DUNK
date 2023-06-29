<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<script src="resources/js/formcheck-hy.js"></script>

<div class="row my-5">
	<div class="col">
		<h5 class="fs-3 fw-bold text-center">이벤트 게시글 등록</h5>
	</div>
</div>
<div class="row">
	<div class="col-2">	
	</div>
	<div class="col-8">
		<form id="evetnWriteForm" action="eventWriteProcess" method="post" enctype="multipart/form-data">
			<div class="row">
				<div class="col">
					<label class="form-label">제목</label>
					<input name="title" class="form-control">
				</div>				
			</div>
			<div class="row">
				<div class="col">
					<label class="form-label">이미지1</label>
					<input type="file" name="file1" class="form-control">
				</div>				
			</div>
			<div class="row">
				<div class="col">
					<label class="form-label">이미지2</label>
					<input type="file" name="file1" class="form-control">
				</div>				
			</div>
			<div class="row">
				<div class="col">
					<label class="form-label">이미지3</label>
					<input type="file" name="file1" class="form-control">
				</div>				
			</div>
			<div class="row mt-3">
				<div class="col">
					<label class="form-label">내용</label>
					<textarea name="content" class="form-control" rows="20"></textarea>
				</div>
			</div>
			<div class="row mt-5 text-center">
				<div class="col">
					<input type="submit" class="btn btn-secondary" value="등록">&nbsp;&nbsp;
					<input type="button" class="btn btn-secondary" value="목록" onclick="location.href='eventList'">
				</div>
			</div>
		</form>	
	</div>
	<div class="col-2">	
	</div>
</div>