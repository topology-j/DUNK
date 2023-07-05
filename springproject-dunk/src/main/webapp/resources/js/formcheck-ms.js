$(document).ready(function() {

	//리스트에서 정렬할때
	$(".placeListSelect").change(function() {
		console.log($(this).attr("id"));
				
		$("#formArea").val($("#area").val());
		$("#formOrderBy").val($("#orderBy").val());
		$("#placeSearchForm").attr("action", "placeList")
										.attr("method", "post").submit();									
	});

	 // 리스트에서 검색어 검색시
    $(".placeKeywordForm").on("submit", function() {
    
    	 var keyword=$("#keyword").val();
    	$(this).attr("keyword", "keyword");
        $(this).attr("method", "post");
        $(this).attr("action", "placeList").submit();
    });
	
    // 장소 입력 submit 눌렀을 때
    $("#placeWriteForm").on("submit", function(event) {
     
        event.preventDefault(); // 기본 동작인 form submit을 막습니다.
        var name = $("#name").val();
       
        if (name.length <= 0) {
            alert("장소가 입력되지 않았습니다. 장소를 입력해주세요");
            return;
        }
		var zipcode = $("#zipcode").val();
        
        if (zipcode.length <= 0) {
            alert("주소를 입력해주세요");
            return;
        }
		var area = $("#area").val();
        
        if (area.length <= 0) {
            alert("지역선택을 해주세요");
            return;
        }

        $(this).attr("action", "placeWriteProcess");
        $(this).attr("method", "post");
        this.submit(); // 폼을 서버로 제출합니다.
	});

    // 수정폼 요청 버튼 눌렀을 때
    $("#updatebtn").on("click", function() {
        $("#placeCheckForm").attr("enctype", "multipart/form-data");
        $("#placeCheckForm").attr("action", "getPlaceUpdateForm");
        $("#placeCheckForm").attr("method", "post");
        $("#placeCheckForm").submit();
    });
    
    
    
    // 마이페이지에서 나의장소를 눌렀을때 장소상세보기로이동
    $("#myPlaceDetailbtn").on("click", function() {
        $("#userIdCheckForm").attr("enctype", "multipart/form-data");
        $("#userIdCheckForm").attr("action", "placeDetail");
        $("#userIdCheckForm").attr("method", "get");
        $("#userIdCheckForm").submit();
    });
    

    // 삭제 버튼 눌렀을 때
    $("#placeDetaildeletebtn").on("click", function() {
        $("#placeCheckForm").attr("action", "placeDeleteProcess");
        $("#placeCheckForm").attr("method", "post");
        $("#placeCheckForm").submit();
        console.log("Button clicked!");
    });

	// 우편번호 찾기 버튼 클릭 시
    $("#btnZipcode").on("click", function() {
        findZipcode();
    });
   	
    /* 우편번호 찾기 - daum 우편번소 찾기 API 이용 */
    function findZipcode() {
        new daum.Postcode({
            oncomplete: function(data) {
                // 우편번호 검색 결과 항목을 클릭했을때 실행할 코드를 여기에 작성한다.
                // 각 주소의 노출 규칙에 따라 주소를 조합한다.
                // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
                var addr = ''; // 주소 변수
                var extraAddr = ''; // 참고 항목 변수

                // 사용자가 선택한 주소 타입과 상관없이 모두 도로명 주소로 처리
                addr = data.roadAddress;

                // 법정동명이 있을 경우 추가한다. (법정리는 제외)
                // 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
                if (data.bname !== '' && /[동|로|가]$/g.test(data.bname)) {
                    extraAddr += data.bname;
                }
                // 건물명이 있고, 공동주택일 경우 추가한다.
                if (data.buildingName !== '' && data.apartment === 'Y') {
                    extraAddr += (extraAddr !== '' ?
                        ', ' + data.buildingName : data.buildingName);
                }

                // 표시할 참고 항목이 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
                if (extraAddr !== '') {
                    extraAddr = ' (' + extraAddr + ')';
                }

                // 조합된 참고 항목을 상세주소에 추가한다.
                addr += extraAddr;

                // 우편번호와 주소 정보를 해당 입력상자에 출력한다.
                $("#zipcode").val(data.zonecode);
                $("#address1").val(addr);

                // 커서를 상세주소 입력상자로 이동한다.
                $("#address2").focus();
            }
        }).open();
    }
	
	$(".PlaceRecommendbtn").click(function() {
	    var com = $(this).attr("id");
	    console.log("com: " + com);
	    
	    var no = $("#no").val(); // 게시물 번호
	    var recommend = com === "commend" ? 1 : 0;
	     
	    $.ajax({      
	      url: "placeRecommend.ajax",
	      type: "post",
	      data: { recommend: recommend, no: no },
	      dataType: "json",
	      success: function(data) {  
	        var msg = com == "commend" ? "추천이" : "땡큐가";
	        alert(msg + " 반영되었습니다.");
	        $("#commend > .recommend").text(" (" + data.recommend + ")");
	        $("#thank > .recommend").text(" (" + data.thank + ")");
	      },
	      error: function(xhr, status, error) {
	        alert("error: " + xhr.statusText + ", " + status + ", " + error);
	      }
		});
	});

	
	//URL복사하는 뤼튼
	 function copyUrl() {
	    var url = window.location.href;
	    var textarea = document.createElement("textarea");
	    document.body.appendChild(textarea);
	    textarea.value = url;
	    textarea.select();
	    document.execCommand("copy");
	    document.body.removeChild(textarea);
	    alert("링크가 복사되었습니다. 필요하신 곳에 붙여넣기 하세요!");
	 }
	  
	
	$("#explanationBtn").on("click", function() {
		$("#result").load("placeDescription");
	});
	
	$('#refundBtn').click(function() { 		
		$("#result").load("refundPolicy");	
	});
	
	
	// 1. 다시설명을 눌렀을때 > 설명이 나오는?
	/*
	$("#explanationBtn").on("click", function() {	   
		$("#result").empty();	   	
		var content=$("#${b1.content}").val();
		$("#result").append(content);	
	});
	*/
	
	//2
	/*
	$('#refundBtn').click(function() {
		$("#result").empty();
			
			let div = "<div class='row'>"
							+ "<div class='col-8'>"
							+ 		"<div>"
							+			"<span>💙💙💙💙 </span>"
							+ 		"</div>"
							+ "</div>"
							+ "<div class='col-4'>"
							+ 		"<div>"
							+			"<span>💙💙💙💙 </span>"
							+		"</div>"
							+ "</div>"
						"</div>"
						
			let refundrule = "<div>"
				+		                           	"<ul>"
				+		                           	"<li>💙7일 전 취소 시 100% 환불</li>"
				+		                           	"<li>💙5일 전 취소 시 80% 환불</li>"
				+		                           	"<li>💙3일 전 취소 시 50% 환불</li>"
				+		                           	"<li>💙2일 전 ~ 예약 당일 환불 불가</li>"
				+		                           	"<li>💙캐시는 규정에 따라 자동 환급되며 잔액 환불 희망 시 나의 충전 내역에서 신청바랍니다.</li>"
				+		                           	"</ul>"
				+		                           	"<ul>"
				+		                           	"<li>💙천재지변</li>"
				+		                           	"<li>💙당일 천재지변으로 인해 구장 이용이 불가한 경우 100% 환불</li>"
				+		                           	"<li>💙적용기준: 호우경보, 대설경보, 태풍주의보, 태풍경보</li>"
				+		                           	"<li>💙우천시 변경 기준</li>"
				+		                           	"<li>💙시간 당 5mm 이상 시 날짜 변경 가능</li>"
				+		                           	"<li>💙기준: 당일 이용 2시간 전 기상청 날씨누리 해당 주소지 기준</li>"
				+		                           	"<li>💙단순 변심에 의한 날짜 변경은 불가</li>"
				+		                           	"</ul>"
				                "</div>"		
				             
			$("#result").append(div);
			$("#result").append(refundrule);
		
	});
	*/
	
	
	
	
	
	
	
	
	

});