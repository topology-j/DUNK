<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<script src="https://t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>

<div class="row">
	<div class="col">
		<div class="row mt-5">
			<div class="col  border rounded-5 border-2" style="--bs-border-color: #fa9300">
				<div class="row my-5">
					<div class="col">
						<p class="fw-bold fs-4 text-center">회원 정보 입력</p>
					</div>
				</div>
				<form id="joinForm" name="joinForm" action="joinResult" method="post">
					<input type="hidden" name="isNickCheck" id="isNickCheck" value="false">
					<input type="hidden" name="isIdCheck" id="isIdCheck" value="false">		
					<div class="row">
						<div class="col-6 offset-3">
							<div class="row text-center mb-5">
								<div class="col">
									<input type="radio" class="btn-check" name="grade" id="option1" autocomplete="off" checked value="100">
									<label class="btn btn-outline-warning" for="option1">일반 회원</label>&nbsp;&nbsp;&nbsp;
									<input type="radio" class="btn-check" name="grade" id="option2" autocomplete="off" value="200">
									<label class="btn btn-outline-warning" for="option2">장소 관리자</label>									
								</div>
							</div>
							<label>* 이 름 : </label>
							<div class="row my-3">
								<div class="col-4">
									<input class="form-control" name="name" id="name">
								</div>
							</div>	
							<label>* 닉네임 : </label>
							<div class="row my-3">
								<div class="col-4">
									<input class="form-control" name="nickname" id="nickname">
								</div>
								<div class="col-8">
									<input type="button" class="btn btn-warning" id="btnOverlapNick" value="중복확인">
								</div>
							</div>	
							<label>* 아이디 : </label>
							<div class="row my-3">
								<div class="col-5">
									<input class="form-control" name="id" id="id">
								</div>
								<div class="col-7">
									<input type="button" class="btn btn-warning" id="btnOverlapId" value="중복확인">
								</div>
							</div>	
							<label>* 비밀번호 : </label>
							<div class="row my-3">
								<div class="col-6">
									<input type="password" class="form-control" name="pass1" id="pass1">
								</div>
							</div>	
							<label>* 비밀번호 확인 : </label>
							<div class="row my-3">
								<div class="col-6">
									<input type="password" class="form-control" name="pass2" id="pass2">
								</div>
							</div>	
							<label>* 핸드폰 번호 : </label>
							<div class="row my-3">
								<div class="col-3">
										<select class="form-select" name="mobile1" id="mobile1">
												<option>010</option>
												<option>011</option>
												<option>016</option>
												<option>017</option>
												<option>018</option>
												<option>019</option>
										</select>
								</div>-
								<div class="col-3">
									<input class="form-control" name="mobile2" id="mobile2">
								</div>-
								<div class="col-3">
									<input class="form-control" name="mobile3" id="mobile3">
								</div>
							</div>
							<label>* 이메일 : </label>
							<div class="row my-3">
								<div class="col-4">
									<input class="form-control" name="emailId" id="emailId">
								</div>@
								<div class="col-4">
									<input class="form-control" name="emailDomain" id="emailDomain">
								</div>
								<div class="col-3">
									<select class="form-select" name="selectDomain" id="selectDomain">
										<option>직접입력</option>
										<option>naver.com</option>
										<option>hanmail.net</option>
										<option>gmail.com</option>
									</select>
								</div>
							</div>
							<label>* 우편번호 : </label>
							<div class="row my-3">
								<div class="col-5">
									<input class="form-control" id="zipcode" name="zipcode">
								</div>
								<div class="col-7">
									<input type="button" class="btn btn-warning" id="btnZipcode" value="우편번호 찾기">
								</div>
							</div>
							<label>* 주 소 : </label>
							<div class="row my-3">
								<div class="col-10">
									<input class="form-control" id="address1" name="address1" readonly>
								</div>
							</div>
							<label>* 상세주소 : </label>
							<div class="row mt-3 mb-5">
								<div class="col-8">
									<input class="form-control" id="address2" name="address2">
								</div>
							</div>							
							<div class="row mt-5 text-center">
								<div class="col">
									<input type="submit" class="btn btn-dark" value="가입하기">&nbsp;&nbsp;
									<input type="button" class="btn btn-dark" value="취소하기" onclick="location.href='eventList'">						
								</div>
							</div>
						</div>
					</div>				
				</form>
			</div>
		</div>
	</div>
</div>