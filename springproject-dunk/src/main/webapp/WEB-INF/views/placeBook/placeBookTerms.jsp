<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<script src="resources/js/formcheck-ch.js"></script>	
	<form name="placeCheckForm" id="placeCheckForm">
			<input type="hidden" name="no" id="no" value="${b1.no}" />
			
	</form>
	

	
		<h2 class="text-center mx-auto mt-5"><b>경기장 예약 약관 동의</b></h2>
	<div class="text-center mx-auto" id="">
	
		<div class="" id="">
			<div id="">
				<h5 class="mt-5"><b>개인정보 제 3자 제공 방침 및 시설 이용 약관</b></h5>
				<div class="mt-3">				
				<textarea id="" disabled="" cols="50" rows="10">대관 서비스 개인정보 제3자 제공 방침

1. 수집 항목 : 실명, 휴대전화번호, 이메일, 주소, 생년월일, ID 등
2. 수집 목적 : 시설 대관 관리
3. 보관 기간 : 대관 일시로부터 1년
4. 제공 받는 자 : 해당 체육시설

대관 서비스 개인정보 제3자 제공 방침에 동의하지 않을 수 있습니다. 본 방침에 동의하지 않을 시 해당 시설과 대관 서비스를 이용 하실 수 없습니다.
				</textarea>
				</div>
				<div class="check-box-holder agree-fac">
					<input type="checkbox" id="agreeFac1" value="1" name="agreeFac">
					
					<div class="text-holder" style="display: inline-block;">위의 개인정보 취급방침에 동의합니다.</div>
				</div>
				
				<div class="mt-3">				
				<textarea id="" disabled="" cols="50" rows="10">
시설 이용 약관
 
1. 건물 내부 및 근처에서 절대 금연입니다.
2. 체육시설 내 음식물, 주류, 음료 반입 금지합니다.
3. 시설 이용 중 시설물 및 기물 파손은 즉각 담당자에게 보고해야하며, 대관 신청자가 원상복구 혹은 변상해야 합니다.
4. 시설물 및 기물의 용도와 위치의 변경, 광고물(현수막 등) 설치 등은 반드시 관리자에게 사전 승인을 받아야합니다.
5. 해당 시설을 이용한 상업 행위, 유료 강습, 이윤추구는 엄격하게 금지되어 있습니다.
6. 시설 이용 후 폐기물, 오물 등 뒷정리 및 원상복구 해주셔야 합니다.
7. 대관 확정 후 시설의 급한 사정으로 인해 대관이 취소 될 수 있으며, 이점 협조 부탁드립니다.
8. 과도한 소음 및 소란 행위는 금지되어 있습니다.
9. 체육 경기 외 목적(행사 진행 등)으로 이용 시 담당자에게 사전 승인을 받아야합니다.
10. 미풍양속을 해치는 행위, 풍기문란 행위, 노상방뇨 등은 금지되어 있습니다.
11. 본 시설은 시설 이용 시 발생 할 수 있는 부상 및 사고 발생 등 모든 재해에 책임지지 않습니다.
12. 본 시설을 대관 한 후 타인에게 무단 양도하는 행위는 엄격히 금지되어 있습니다.
13. 본 내용을 위반 하였을 시, 이용 취소 및 제재가 가해지며 이로 인한 손해는 전적으로 책임자 및 해당 팀에게 있습니다.
14. 시설 물 이용 중 모든 이용자에게 선량한 관리자의 의무가 부여됩니다. 허가받지 않은 제 3자의 무단이용, 홍보행위, 기물 파손, 소음 발생 등의 행위를 제지해주십시오.
15. 본 시설은 애완동물 출입 및 바퀴달린 운동기구 이용이 금지되어 있습니다.
16. 대관 신청자는 시설의 공지 사항, 환불규정, 이용규칙 등 모든 안내 내용을 숙지해야하며 해당 내용을 준수하는 것에 동의 합니다. 내용 미숙지로 인한 책임은 이용자 본인에게 있습니다.
17. 본 내용에 대한 동의 서명은 생략하며, 서비스 내 동의 버튼으로 이를 대체합니다.</textarea>
				</div>
				<div class="check-box-holder agree-fac">
					<input type="checkbox" id="agreeFac2" name="agreeFac">
					
					<div class="text-holder" style="display: inline-block;">위의 시설 이용 약관에 동의합니다.</div>
				</div>
				<!-- 여기까지 수정 ok  -->

				<div class="check-box-holder agree-All">
					<br> <label for="resvAll"><input type="checkbox" id="" name="resvAll"
						onclick="$(this).is(':checked')?$('input:checkbox[name=agreeResv],input:checkbox[name=agreeFac]').prop('checked',true):
    	 					 $('input:checkbox[name=agreeResv],input:checkbox[name=agreeFac]').prop('checked',false);">
						전체동의 대관 약관에 모두 동의합니다.
					</label>
				</div>

				<div class="law-alert" style="padding-top: 10px;">
					<h6 style="color: #878787; color: #878787; font-size: 10px; font-weight: 300; margin: 5px -5px;">
						덩크는 통신판매중개자이며 통신판매의 당사자가 아닙니다.</h6>

					<h6 style="color: #878787; color: #878787; font-size: 10px; font-weight: 300; margin: 5px -5px;">
						따라서 덩크는 등록된 예약정보 및 거래에 대해 책임을 지지 않습니다.</h6>
				</div>
			
			<div class="col-sm-12 mt-5" id="">
				<input type="button" class="btn btn-primary" id="placeBookTimeBtn" value="날짜 선택"/>&nbsp;&nbsp;
			</div>
			</div>
			<!-- "location.href='placeBookTerms?no=${b1.no}&pageNum=${pageNum}'" -->
			<!--<button ID="goBack" type="button" class="btn-white" onclick="RESV.view.overlay.genResvStep1();">
        <span class="glyphicon glyphicon-menu-left" aria-hidden="true">
        </span>뒤로
      </button>-->
		</div>

	</div>

