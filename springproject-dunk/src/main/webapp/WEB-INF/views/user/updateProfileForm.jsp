<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 

<div class="row mt-5">
	<div class="col-3">	
	</div>
	<div class="col-6">	
		<div class="row text-center mb-3">
			<div class="col">
				<p class="fw-bold fs-4">프로필 수정</p>
			</div>
		</div>
		<form action="updateProfileProcess" method="post" enctype="multipart/form-data">
			<input type="hidden" name="id" value="${p.userId}">
			<input type="hidden" name="img1" value="${p.img}">
			<label>* 사진 : </label>
			<div class="row my-3">
				<div class="col">					
					<input type="file" name="file1" class="form-control">					
				</div>
			</div>
			<div class="row mb-3">
				<div class="col">
					<input type="checkbox" name="defaultImg" class="btn-check" id="btn-check" autocomplete="off">
					<label class="btn btn-outline-warning" for="btn-check">기본 이미지로 변경</label>								
				</div>
			</div>			
			<label>* 생년월일 : </label>
			<div class="row my-3">
				<div class="col-3">
					<select class="form-select" name="birth1" id="birth1">
						<option ${p.birth.substring(0,4)==1980 ? "selected" : ""}>1980</option>
						<option ${p.birth.substring(0,4)==1981 ? "selected" : ""}>1981</option>
						<option ${p.birth.substring(0,4)==1982 ? "selected" : ""}>1982</option>
						<option ${p.birth.substring(0,4)==1983 ? "selected" : ""}>1983</option>
						<option ${p.birth.substring(0,4)==1984 ? "selected" : ""}>1984</option>
						<option ${p.birth.substring(0,4)==1985 ? "selected" : ""}>1985</option>
						<option ${p.birth.substring(0,4)==1986 ? "selected" : ""}>1986</option>
						<option ${p.birth.substring(0,4)==1987 ? "selected" : ""}>1987</option>
						<option ${p.birth.substring(0,4)==1988 ? "selected" : ""}>1988</option>
						<option ${p.birth.substring(0,4)==1989 ? "selected" : ""}>1989</option>
						<option ${p.birth.substring(0,4)==1990 ? "selected" : ""}>1990</option>
						<option ${p.birth.substring(0,4)==1991 ? "selected" : ""}>1991</option>
						<option ${p.birth.substring(0,4)==1992 ? "selected" : ""}>1992</option>
						<option ${p.birth.substring(0,4)==1993 ? "selected" : ""}>1993</option>
						<option ${p.birth.substring(0,4)==1994 ? "selected" : ""}>1994</option>
						<option ${p.birth.substring(0,4)==1995 ? "selected" : ""}>1995</option>
						<option ${p.birth.substring(0,4)==1996 ? "selected" : ""}>1996</option>
						<option ${p.birth.substring(0,4)==1997 ? "selected" : ""}>1997</option>
						<option ${p.birth.substring(0,4)==1998 ? "selected" : ""}>1998</option>
						<option ${p.birth.substring(0,4)==1999 ? "selected" : ""}>1999</option>
						<option ${p.birth.substring(0,4)==2000 ? "selected" : ""}>2000</option>
						<option ${p.birth.substring(0,4)==2001 ? "selected" : ""}>2001</option>
						<option ${p.birth.substring(0,4)==2002 ? "selected" : ""}>2002</option>
						<option ${p.birth.substring(0,4)==2003 ? "selected" : ""}>2003</option>
						<option ${p.birth.substring(0,4)==2004 ? "selected" : ""}>2004</option>								
					</select>
				</div>년
				<div class="col-2">
					<select class="form-select" name="birth2" id="birth2">
						<option ${p.birth.substring(6,8)==01 ? "selected" : ""}>01</option>
						<option ${p.birth.substring(6,8)==02 ? "selected" : ""}>02</option>
						<option ${p.birth.substring(6,8)==03 ? "selected" : ""}>03</option>
						<option ${p.birth.substring(6,8)==04 ? "selected" : ""}>04</option>
						<option ${p.birth.substring(6,8)==05 ? "selected" : ""}>05</option>
						<option ${p.birth.substring(6,8)==06 ? "selected" : ""}>06</option>
						<option ${p.birth.substring(6,8)==07 ? "selected" : ""}>07</option>
						<option ${p.birth.substring(6,8)==08 ? "selected" : ""}>08</option>
						<option ${p.birth.substring(6,8)==09 ? "selected" : ""}>09</option>
						<option ${p.birth.substring(6,8)==10 ? "selected" : ""}>10</option>
						<option ${p.birth.substring(6,8)==11 ? "selected" : ""}>11</option>
						<option ${p.birth.substring(6,8)==12 ? "selected" : ""}>12</option>
					</select>
				</div>월
				<div class="col-2">
					<select class="form-select" name="birth3" id="birth3">
						<option ${p.birth.substring(10,12)==01 ? "selected" : ""}>01</option>
						<option ${p.birth.substring(10,12)==02 ? "selected" : ""}>02</option>
						<option ${p.birth.substring(10,12)==03 ? "selected" : ""}>03</option>
						<option ${p.birth.substring(10,12)==04 ? "selected" : ""}>04</option>
						<option ${p.birth.substring(10,12)==05 ? "selected" : ""}>05</option>
						<option ${p.birth.substring(10,12)==06 ? "selected" : ""}>06</option>
						<option ${p.birth.substring(10,12)==07 ? "selected" : ""}>07</option>
						<option ${p.birth.substring(10,12)==08 ? "selected" : ""}>08</option>
						<option ${p.birth.substring(10,12)==09 ? "selected" : ""}>09</option>
						<option ${p.birth.substring(10,12)==10 ? "selected" : ""}>10</option>
						<option ${p.birth.substring(10,12)==11 ? "selected" : ""}>11</option>
						<option ${p.birth.substring(10,12)==12 ? "selected" : ""}>12</option>
						<option ${p.birth.substring(10,12)==13 ? "selected" : ""}>13</option>
						<option ${p.birth.substring(10,12)==14 ? "selected" : ""}>14</option>
						<option ${p.birth.substring(10,12)==15 ? "selected" : ""}>15</option>
						<option ${p.birth.substring(10,12)==16 ? "selected" : ""}>16</option>
						<option ${p.birth.substring(10,12)==17 ? "selected" : ""}>17</option>
						<option ${p.birth.substring(10,12)==18 ? "selected" : ""}>18</option>
						<option ${p.birth.substring(10,12)==19 ? "selected" : ""}>19</option>
						<option ${p.birth.substring(10,12)==20 ? "selected" : ""}>20</option>
						<option ${p.birth.substring(10,12)==21 ? "selected" : ""}>21</option>
						<option ${p.birth.substring(10,12)==22 ? "selected" : ""}>22</option>
						<option ${p.birth.substring(10,12)==23 ? "selected" : ""}>23</option>
						<option ${p.birth.substring(10,12)==24 ? "selected" : ""}>24</option>
						<option ${p.birth.substring(10,12)==25 ? "selected" : ""}>25</option>
						<option ${p.birth.substring(10,12)==26 ? "selected" : ""}>26</option>
						<option ${p.birth.substring(10,12)==27 ? "selected" : ""}>27</option>
						<option ${p.birth.substring(10,12)==28 ? "selected" : ""}>28</option>
						<option ${p.birth.substring(10,12)==29 ? "selected" : ""}>29</option>
						<option ${p.birth.substring(10,12)==30 ? "selected" : ""}>30</option>
						<option ${p.birth.substring(10,12)==31 ? "selected" : ""}>31</option>
					</select>
				</div>일
			</div>
			<label>* 성 별 : </label>
			<div class="row my-3">
				<div class="col">
					<input type="radio" ${p.gender=='남성' ? "checked" : ""} class="btn-check" name="gender" id="option1" autocomplete="off" value="남성">
					<label class="btn btn-outline-success" for="option1">남성</label>&nbsp;&nbsp;&nbsp;
					<input type="radio" ${p.gender=='여성' ? "checked" : ""} class="btn-check" name="gender" id="option2" autocomplete="off" value="여성">
					<label class="btn btn-outline-success" for="option2">여성</label>	
				</div>
			</div>
			<label>* 포지션 : </label>
			<div class="row my-3">
				<div class="col-3">
					<select class="form-select" name="position" id="position">
						<option ${p.position=='센터' ? "selected" : ""}>센터</option>
						<option ${p.position=='포워드' ? "selected" : ""}>포워드</option>
						<option ${p.position=='슈팅가드' ? "selected" : ""}>슈팅가드</option>
						<option ${p.position=='스몰포워드' ? "selected" : ""}>스몰포워드</option>
						<option ${p.position=='포인트가드' ? "selected" : ""}>포인트가드</option>
						<option ${p.position=='올라운드' ? "selected" : ""}>올라운드</option>
					</select>
				</div>
			</div>
			<label>* 선호지역 : </label>
			<div class="row my-3">
				<div class="col-3">
					<select class="form-select" name="preferredArea" id="preferredArea">
						<option ${p.preferredArea=='강남구' ? "selected" : ""}>강남구</option>
						<option ${p.preferredArea=='강동구' ? "selected" : ""}>강동구</option>
						<option ${p.preferredArea=='강북구' ? "selected" : ""}>강북구</option>
						<option ${p.preferredArea=='강서구' ? "selected" : ""}>강서구</option>
						<option ${p.preferredArea=='관악구' ? "selected" : ""}>관악구</option>
						<option ${p.preferredArea=='광진구' ? "selected" : ""}>광진구</option>
						<option ${p.preferredArea=='구로구' ? "selected" : ""}>구로구</option>
						<option ${p.preferredArea=='금천구' ? "selected" : ""}>금천구</option>
						<option ${p.preferredArea=='노원구' ? "selected" : ""}>노원구</option>
						<option ${p.preferredArea=='도봉구' ? "selected" : ""}>도봉구</option>
						<option ${p.preferredArea=='동대문구' ? "selected" : ""}>동대문구</option>
						<option ${p.preferredArea=='동작구' ? "selected" : ""}>동작구</option>
						<option ${p.preferredArea=='마포구' ? "selected" : ""}>마포구</option>
						<option ${p.preferredArea=='서대문구' ? "selected" : ""}>서대문구</option>
						<option ${p.preferredArea=='서초구' ? "selected" : ""}>서초구</option>
						<option ${p.preferredArea=='성동구' ? "selected" : ""}>성동구</option>
						<option ${p.preferredArea=='성북구' ? "selected" : ""}>성북구</option>
						<option ${p.preferredArea=='송파구' ? "selected" : ""}>송파구</option>
						<option ${p.preferredArea=='양천구' ? "selected" : ""}>양천구</option>
						<option ${p.preferredArea=='영등포구' ? "selected" : ""}>영등포구</option>
						<option ${p.preferredArea=='용산구' ? "selected" : ""}>용산구</option>
						<option ${p.preferredArea=='은평구' ? "selected" : ""}>은평구</option>
						<option ${p.preferredArea=='종로구' ? "selected" : ""}>종로구</option>
						<option ${p.preferredArea=='중구' ? "selected" : ""}>중구</option>
						<option ${p.preferredArea=='중랑구' ? "selected" : ""}>중랑구</option>								
					</select>
				</div>
			</div>	
			<label>* 소 개 : </label>
			<div class="row my-3">
				<div class="col">
					<textarea name="introduction" class="form-control" rows="4">${p.introduction}</textarea>
				</div>
			</div>
			<label>* 프로필 공개 : </label>
			<div class="row my-3">
				<div class="col">
					<input type="radio" class="btn-check" name="openProfile" id="option3" autocomplete="off" value="공개" ${p.openProfile=='공개' ? "checked" : ""}>
					<label class="btn btn-outline-warning" for="option3">공개</label>&nbsp;&nbsp;&nbsp;
					<input type="radio" class="btn-check" name="openProfile" id="option4" autocomplete="off" value="비공개" ${p.openProfile=='비공개' ? "checked" : ""}>
					<label class="btn btn-outline-warning" for="option4">비공개</label>	
				</div>
			</div>
			<div class="row mt-5 text-center">
				<div class="col">
					<input type="submit" class="btn btn-dark" value="수정완료">&nbsp;&nbsp;
					<input type="button" class="btn btn-dark" value="취소하기" onclick="location.href='eventList'">						
				</div>
			</div>
		</form>
	</div>
</div>