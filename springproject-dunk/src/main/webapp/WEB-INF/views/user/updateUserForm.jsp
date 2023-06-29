<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<script src="https://t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>

<div class="row">
	<div class="col">
		<div class="row mt-5">
			<div class="col  border rounded-5 border-2 border-warning">
				<div class="row my-5">
					<div class="col">
						<p class="fw-bold fs-4 text-center">회원 정보 수정</p>
					</div>
				</div>
				<form id="updateUserForm" name="updateUserForm" action="updateUserProcess" method="post">
					<input type="hidden" name="isNickCheck" id="isNickCheck" value="false">						
					<div class="row">
						<div class="col-6 offset-3">
							<div class="row text-center mb-5">
								<div class="col">
									<input type="radio" class="btn-check" name="grade" id="option1" autocomplete="off" value="100" ${u.grade==100 ? "checked" : ""}>
									<label class="btn btn-outline-warning" for="option1">일반 회원</label>&nbsp;&nbsp;&nbsp;
									<input type="radio" class="btn-check" name="grade" id="option2" autocomplete="off" value="200" ${u.grade==200 ? "checked" : ""}>
									<label class="btn btn-outline-warning" for="option2">장소 관리자</label>									
								</div>
							</div>
							<label>* 이 름 : </label>
							<div class="row my-3">
								<div class="col-4">
									<input class="form-control" name="name" id="name" readonly value="${u.name}">
								</div>
							</div>	
							<label>* 아이디 : </label>
							<div class="row my-3">
								<div class="col-5">
									<input class="form-control" name="id" id="id" value="${u.id}" readonly>
								</div>								
							</div>	
							<label>* 닉네임 : </label>
							<div class="row my-3">
								<div class="col-4">
									<input class="form-control" name="nickname" id="nickname" value="${u.nickname}">
								</div>
								<div class="col-8">
									<input type="button" class="btn btn-warning" id="btnOverlapNick2" value="중복확인">
								</div>
							</div>														
							<label>* 핸드폰 번호 : </label>
							<div class="row my-3">
								<div class="col-3">
										<select class="form-select" name="mobile1" id="mobile1">
												<option ${u.mobile.split("-")[0]==010 ? "selected" : ""}>010</option>
												<option ${u.mobile.split("-")[0]==011 ? "selected" : ""}>011</option>
												<option ${u.mobile.split("-")[0]==016 ? "selected" : ""}>016</option>
												<option ${u.mobile.split("-")[0]==017 ? "selected" : ""}>017</option>
												<option ${u.mobile.split("-")[0]==018 ? "selected" : ""}>018</option>
												<option ${u.mobile.split("-")[0]==019 ? "selected" : ""}>019</option>
										</select>
								</div>-
								<div class="col-3">
									<input class="form-control" name="mobile2" id="mobile2" value='${u.mobile.split("-")[1]}'>
								</div>-
								<div class="col-3">
									<input class="form-control" name="mobile3" id="mobile3"  value='${u.mobile.split("-")[2]}'>
								</div>
							</div>
							<label>* 이메일 : </label>
							<div class="row my-3">
								<div class="col-4">
									<input class="form-control" name="emailId" id="emailId" value='${u.email.split("@")[0]}'>
								</div>@
								<div class="col-4">
									<input class="form-control" name="emailDomain" id="emailDomain" value='${u.email.split("@")[1]}'>
								</div>
								<div class="col-3">
									<select class="form-select" name="selectDomain" id="selectDomain">
										<option>직접입력</option>
										<option ${u.email.split("-")[1]=='naver.com' ? "selected" : ""}>naver.com</option>
										<option ${u.email.split("-")[1]=='hanmail.net' ? "selected" : ""}>hanmail.net</option>
										<option ${u.email.split("-")[1]=='gmail.com' ? "selected" : ""}>gmail.com</option>
									</select>
								</div>
							</div>
							<label>* 우편번호 : </label>
							<div class="row my-3">
								<div class="col-5">
									<input class="form-control" id="zipcode" name="zipcode" value="${u.zipcode}">
								</div>
								<div class="col-7">
									<input type="button" class="btn btn-warning" id="btnZipcode" value="우편번호 찾기">
								</div>
							</div>
							<label>* 주 소 : </label>
							<div class="row my-3">
								<div class="col-10">
									<input class="form-control" id="address1" name="address1" readonly value="${u.address1}">
								</div>
							</div>
							<label>* 상세주소 : </label>
							<div class="row my-3">
								<div class="col-8">
									<input class="form-control" id="address2" name="address2" value="${u.address2}">
								</div>
							</div>	
								<label>* 비밀번호 : </label>
							<div class="row mt-3 mb-5">
								<div class="col-5">
									<input type="password" class="form-control" name="pass" id="pass">
								</div>
								<div class="col-7">
									<input type="button" class="btn btn-warning" onclick="location.href='changePass?id=${u.id}'" value="비밀번호 변경">
								</div>
							</div>							
							<div class="row mt-5 text-center">
								<div class="col">
									<input type="submit" class="btn btn-dark" value="수정하기">&nbsp;&nbsp;
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