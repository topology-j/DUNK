$(document).ready(function() {
	

    
    	//장소 상세 → 장소 약관 동의 창
	$("#placeBookTermsBtn").on("click", function() {
		$("#placeCheckForm").attr("action", "placeBookTerms");
		$("#placeCheckForm").attr("method", "post");
		$("#placeCheckForm").submit();
		console.log("placeBookTermsBtn!")
	});
	
	// 장소 예약 약관 동의 체크
	// 장소 약관 동의 창 → 장소 시간
    $("#placeBookTimeBtn").on("click", function() {

	    var agreeFac1 = $("#agreeFac1").is(":checked");
	    var agreeFac2 = $("#agreeFac2").is(":checked");
	
	    if (!agreeFac1) {
	        alert("위의 개인정보 취급방침 이용 약관에 동의해주세요.");
	        return false;
	        }
		if(!agreeFac2){
		 	alert("위의 시설 이용 약관에 동의해주세요.");
	        return false;
	    }
	    
	   	$("#placeCheckForm").attr("action", "placeBookTime");
		$("#placeCheckForm").attr("method", "post");
		$("#placeCheckForm").submit();
		console.log("placeBookTimeBtn!")

	});
	
	
});

