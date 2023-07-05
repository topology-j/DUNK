$(document).ready(function() {
	
    //장소 상세 → 장소 약관 동의 창
	$("#placeBookTermsBtn").on("click", function() {
		$("#placeCheckForm").attr("action", "placeBookTerms");
		$("#placeCheckForm").attr("method", "post");
		$("#placeCheckForm").submit();
		console.log("placeBookTermsBtn!")
	});
	
	// 장소 예약 약관 동의 체크 해야지 페이지 넘길 수 있도록
	// 장소 약관 동의 창 → 장소 시간
    $("#placeBookTimeBtn").on("click", function() {

	    var agreeFac1 = $("#agreeFac1").is(":checked");
	    var agreeFac2 = $("#agreeFac2").is(":checked");
	
	    if (!agreeFac1) {
	        alert("위의 개인정보 취급방침 이용 약관에 동의해주세요.");
	        return false;
	    }
		else if(!agreeFac2){
		 	alert("위의 시설 이용 약관에 동의해주세요.");
	        return false;
	    }
	    
	   	$("#placeCheckForm").attr("action", "placeBookTime");
		$("#placeCheckForm").attr("method", "post");
		$("#placeCheckForm").submit();
		console.log("placeBookTimeBtn!")

	});
	
});

// placeBook.jsp 모달 창
$(document).ready(function() {
		
		// 모달 열기 클릭 시 이벤트 핸들러
	$('#payModalOpen').on('click', function() {
		   		
	  	var pointText = $('#currentPoint').text();
	    var placePayText = $('#placePay').text();
	
	    var point = Number(pointText.match(/\d+/g).join(''));
	    var placePay = Number(placePayText.match(/\d+/g).join(''));
			
			if (point < placePay) {
				alert("포인트가 부족합니다.\n포인트를 충전해주세요.")
				return false;
			}
			
		$('#payModal').fadeIn(400);
		
		});
 
		// 닫기 버튼 클릭 시 이벤트 핸들러
		$('#modalClose').on('click', function() {
			$('#payModal').fadeOut(400);
		});
		
});

