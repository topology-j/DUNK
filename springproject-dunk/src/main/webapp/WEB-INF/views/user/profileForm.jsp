<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 

<div class="row mt-5">
	<div class="col-3">	
	</div>
	<div class="col-6">	
		<div class="row text-center mb-3">
			<div class="col">
				<p class="fw-bold fs-4">프로필 설정</p>
			</div>
		</div>
		<form action="writeProfile" method="post" enctype="multipart/form-data">
			<input type="hidden" name="userId" value="${id}">
			<label>* 사진 : </label>
			<div class="row my-3">
				<div class="col">					
					<input type="file" name="file1" class="form-control">
				</div>
			</div>
			<label>* 생년월일 : </label>
			<div class="row my-3">
				<div class="col-3">
					<select class="form-select" name="birth1" id="birth1">
						<option>1980</option>
						<option>1981</option>
						<option>1982</option>
						<option>1983</option>
						<option>1984</option>
						<option>1985</option>
						<option>1986</option>
						<option>1987</option>
						<option>1988</option>
						<option>1989</option>
						<option>1990</option>
						<option>1991</option>
						<option>1992</option>
						<option>1993</option>
						<option>1994</option>
						<option>1995</option>
						<option>1996</option>
						<option>1997</option>
						<option>1998</option>
						<option>1999</option>
						<option>2000</option>
						<option>2001</option>
						<option>2002</option>
						<option>2003</option>
						<option>2004</option>								
					</select>
				</div>년
				<div class="col-2">
					<select class="form-select" name="birth2" id="birth2">
						<option>01</option>
						<option>02</option>
						<option>03</option>
						<option>04</option>
						<option>05</option>
						<option>06</option>
						<option>07</option>
						<option>08</option>
						<option>09</option>
						<option>10</option>
						<option>11</option>
						<option>12</option>
					</select>
				</div>월
				<div class="col-2">
					<select class="form-select" name="birth3" id="birth3">
						<option>01</option>
						<option>02</option>
						<option>03</option>
						<option>04</option>
						<option>05</option>
						<option>06</option>
						<option>07</option>
						<option>08</option>
						<option>09</option>
						<option>10</option>
						<option>11</option>
						<option>12</option>
						<option>13</option>
						<option>14</option>
						<option>15</option>
						<option>16</option>
						<option>17</option>
						<option>18</option>
						<option>19</option>
						<option>20</option>
						<option>21</option>
						<option>22</option>
						<option>23</option>
						<option>24</option>
						<option>25</option>
						<option>26</option>
						<option>27</option>
						<option>28</option>
						<option>29</option>
						<option>30</option>
						<option>31</option>
					</select>
				</div>일
			</div>
			<label>* 성 별 : </label>
			<div class="row my-3">
				<div class="col">
					<input type="radio" class="btn-check" name="gender" id="option1" autocomplete="off" checked value="남성">
					<label class="btn btn-outline-success" for="option1">남성</label>&nbsp;&nbsp;&nbsp;
					<input type="radio" class="btn-check" name="gender" id="option2" autocomplete="off" value="여성">
					<label class="btn btn-outline-success" for="option2">여성</label>	
				</div>
			</div>
			<label>* 포지션 : </label>
			<div class="row my-3">
				<div class="col-3">
					<select class="form-select" name="position" id="position">
						<option>센터</option>
						<option>포워드</option>
						<option>슈팅가드</option>
						<option>스몰포워드</option>
						<option>포인트가드</option>
						<option>올라운드</option>
					</select>
				</div>
			</div>
			<label>* 선호지역 : </label>
			<div class="row my-3">
				<div class="col-3">
					<select class="form-select" name="preferredArea" id="preferredArea">
						<option>강남구</option>
						<option>강동구</option>
						<option>강북구</option>
						<option>강서구</option>
						<option>관악구</option>
						<option>광진구</option>
						<option>구로구</option>
						<option>금천구</option>
						<option>노원구</option>
						<option>도봉구</option>
						<option>동대문구</option>
						<option>동작구</option>
						<option>마포구</option>
						<option>서대문구</option>
						<option>서초구</option>
						<option>성동구</option>
						<option>성북구</option>
						<option>송파구</option>
						<option>양천구</option>
						<option>영등포구</option>
						<option>용산구</option>
						<option>은평구</option>
						<option>종로구</option>
						<option>중구</option>
						<option>중랑구</option>								
					</select>
				</div>
			</div>	
			<label>* 소 개 : </label>
			<div class="row my-3">
				<div class="col">
					<textarea name="introduction" class="form-control" rows="4"></textarea>
				</div>
			</div>
			<label>* 프로필 공개 : </label>
			<div class="row my-3">
				<div class="col">
					<input type="radio" class="btn-check" name="openProfile" id="option3" autocomplete="off" checked value="공개">
					<label class="btn btn-outline-warning" for="option3">공개</label>&nbsp;&nbsp;&nbsp;
					<input type="radio" class="btn-check" name="openProfile" id="option4" autocomplete="off" value="비공개">
					<label class="btn btn-outline-warning" for="option4">비공개</label>	
				</div>
			</div>
			<div class="row mt-5 text-center">
				<div class="col">
					<input type="submit" class="btn btn-dark" value="설정완료">&nbsp;&nbsp;
					<input type="button" class="btn btn-dark" value="취소하기" onclick="location.href='mypage?id=${id}'">						
				</div>
			</div>
		</form>
	</div>
</div>