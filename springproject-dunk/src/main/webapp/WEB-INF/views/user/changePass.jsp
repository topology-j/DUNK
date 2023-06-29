<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<div class="row">
	<div class="col-4">
	</div>
	<div class="col-4">
		<div class="row mt-5 mb-3 fw-bold fs-3">
			<div class="col text-center">
				<p>비밀번호 변경</p>
			</div>
		</div>
		<form action="changePassProcess" method="post">
			<input type="hidden" id="id" name="id" value="${id}">
			<div class="row">
				<div class="col">
					<input type="password" class="form-control" placeholder="현재 비밀번호" name="pass" id="pass">
				</div>			
			</div>
			<div class="row">
				<div class="col">
					<input type="password" class="form-control my-2" placeholder="새 비밀번호" name="pass1" id="pass1">
				</div>			
			</div>
			<div class="row">
				<div class="col">
					<input type="password" class="form-control my-2" placeholder="새 비밀번호 확인" name="pass2" id="pass2">
				</div>			
			</div>
			<div class="row">
				<div class="col">
					<div class="d-grid gap-2">
						<input type="submit" class="btn btn-warning my-2" value="비밀번호 변경" id="chagePass">
					</div>
				</div>			
			</div>
		</form>		
	</div>	
</div>