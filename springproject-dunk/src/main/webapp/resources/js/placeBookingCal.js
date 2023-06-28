window.onload = function () {
    buildCalendar();  // 웹 페이지가 로드되면 buildCalendar 실행
    autoClickToday();
}    

        let nowMonth = new Date();  // 현재 달을 페이지를 로드한 날의 달로 초기화
        let today = new Date();     // 페이지를 로드한 날짜를 저장
        today.setHours(0,0,0,0);    // 비교 편의를 위해 today의 시간을 초기화

        // 달력 생성 : 해당 달에 맞춰 테이블을 만들고, 날짜를 채워 넣는다.
        function buildCalendar() {       

            let firstDate = new Date(nowMonth.getFullYear(), nowMonth.getMonth(), 1);     // 이번달 1일
            let lastDate = new Date(nowMonth.getFullYear(), nowMonth.getMonth() + 1, 0);  // 이번달 마지막날

            let tbody_Calendar = document.querySelector(".Calendar > tbody");
            document.getElementById("calYear").innerText = nowMonth.getFullYear();             // 연도 숫자 갱신
            document.getElementById("calMonth").innerText = leftPad(nowMonth.getMonth() + 1);  // 월 숫자 갱신

            while (tbody_Calendar.rows.length > 0) {                        // 이전 출력결과가 남아있는 경우 초기화
                tbody_Calendar.deleteRow(tbody_Calendar.rows.length - 1);
            }

            let nowRow = tbody_Calendar.insertRow();        // 첫번째 행 추가           

            for (let j = 0; j < firstDate.getDay(); j++) {  // 이번달 1일의 요일만큼
                let nowColumn = nowRow.insertCell();        // 열 추가
            }

            for (let nowDay = firstDate; nowDay <= lastDate; nowDay.setDate(nowDay.getDate() + 1)) {   // day는 날짜를 저장하는 변수, 이번달 마지막날까지 증가시키며 반복  

                let nowColumn = nowRow.insertCell();        // 새 열을 추가하고
                nowColumn.innerText = leftPad(nowDay.getDate());      // 추가한 열에 날짜 입력

            
                if (nowDay.getDay() == 0) {                 // 일요일인 경우 글자색 빨강으로
                    nowColumn.style.color = "#DC143C";
                }
                if (nowDay.getDay() == 6) {                 // 토요일인 경우 글자색 파랑으로 하고
                    nowColumn.style.color = "#0000CD";
                    nowRow = tbody_Calendar.insertRow();    // 새로운 행 추가
                }

                if (nowDay < today) {                       // 지난날인 경우
                    nowColumn.className = "pastDay";
                }
                else if (nowDay.getFullYear() == today.getFullYear() && nowDay.getMonth() == today.getMonth() && nowDay.getDate() == today.getDate()) { // 오늘인 경우           
                    nowColumn.className = "today";
                    nowColumn.onclick = null;
                }
                else {                                      // 미래인 경우
                    nowColumn.className = "futureDay";
                    nowColumn.onclick = function () { 
                    choiceDate(this); 
                    }
                }
               
            }

        } // end function buildCalendar
        
        // 오늘 날짜 +1 자동으로 클릭
 		function autoClickToday(){
 			let tomorrow = new Date(today);
 			tomorrow.setDate(tomorrow.getDate()+1);
 			
 			let rows =document.querySelectorAll(".Calendar > tbody > tr");
 			for(let i = 0;i < rows.length; i++){
 				let columns= rows[i].cells;
 				for (let j = 0; j < columns.length; j++) {
 					let cellDate = parseInt(columns[j].innerText);
 					if((columns[j].className === "futureDay" || columns[j].className === "today")&&
 					nowMonth.getMonth() === tomorrow.getMonth() &&
 					cellDate === tomorrow.getDate()){
 					
 					columns[j].click();
 					break;
 					}
 				}
 			}
 			
 		}
        
    
        

        // 날짜 선택
        function choiceDate(nowColumn) {
        
            if (document.getElementsByClassName("choiceDay")[0]) {                              // 기존에 선택한 날짜가 있으면
                document.getElementsByClassName("choiceDay")[0].classList.remove("choiceDay");  // 해당 날짜의 "choiceDay" class 제거
                
            }
            
            nowColumn.classList.add("choiceDay");           // 선택된 날짜에 "choiceDay" class 추가
			
			//nowColumn.onclick = function() {
			// 클릭 이벤트 핸들러 함수 내용을 여기에 작성합니다.
			// 예시로 "클릭됨"을 콘솔에 출력하는 동작을 추가했습니다.
				//console.log("클릭됨");
			//};        
			
			// 선택된 날짜
    		var selectedDate = new Date(nowMonth.getFullYear(), nowMonth.getMonth(), parseInt(nowColumn.innerText));
				console.log("선택된 날짜 :", selectedDate);
						
			// 날짜 선택되면 placeBookTime.jsp에 출력하게 하는 코드
			var selectedDateElement = document.getElementById("selectedDate");
			
			var year = selectedDate.getFullYear();
			var month = selectedDate.getMonth() + 1;
			var day = selectedDate.getDate();
			var weekdays = ['일', '월', '화', '수', '목', '금', '토'];
			var weekday = weekdays[selectedDate.getDay()];
			var formattedDate = year + "년 " + (month < 10 ? '0' + month : month) + "월 " + (day < 10 ? '0' + day : day) + "일 (" + weekday + ")";
			var paramDate = year + "-" + (month < 10 ? '0' + month : month) + "-" + (day < 10 ? '0' + day : day);
			
			// 예약 날짜 출력	
			console.log(formattedDate)
			//document.getElementById("formattedDate").innerHTML = formattedDate; 
			//selectedDateElement.textContent = "예약 날짜 : " + formattedDate;		
			$("#formattedDate").text(formattedDate);
			
			$("#selectedDate").val(paramDate);			
			var reqData = $("#placeCheckForm").serialize();
			//  { "no": no, "selectedDate": selectedDate }
			console.log(reqData);
				

			//
			$.ajax({
			  url: "placeBookingList",
			  type: "POST",
			  data: reqData,
			  success: function(response) {
			    console.log("서버 응답:", response);
			    
			    // response[i] 값과 timeBtn[i] 값이 같으면 해당 버튼을 화면에 출력하지 않음
				var timeBtns = document.querySelectorAll("[id^=timeBtn]");
				$(".timeBtnClass").css("background-color", "white");				
				
			    for (var i = 0; i < timeBtns.length; i++) {
			      var btnValue = timeBtns[i].value;
			      if (response.includes(btnValue)) {
			        //timeBtns[i].style.display  = "none"; //pointerEvents //display				        
			        timeBtns[i].disabled = true;	//버튼 비활성화		
			        timeBtns[i].style.backgroundColor = "#8C8C8C";  
			        //$(timeBtns[i]).attr("disabled", true);
			      } else {
			        timeBtns[i].disabled = false;	// 버튼 활성화
			      }
			    }
			},
			error: function(xhr, status, error) {
			    console.error("오류:", error);
			}			  
		});
								
			// 날짜 선택되면 시간 버튼 활성화
			document.getElementById("timeBtn1").style.display = "block";
			document.getElementById("timeBtn2").style.display = "block";
			document.getElementById("timeBtn3").style.display = "block";
			document.getElementById("timeBtn4").style.display = "block";
			document.getElementById("timeBtn5").style.display = "block";
			document.getElementById("timeBtn6").style.display = "block";			
			document.getElementById("placeBookBtn").style.display = "block";
			
			// 시간 선택 시 색상 변경 
			var timeBtns = document.querySelectorAll("[id^=timeBtn]");
			
			for(var i = 0; i<timeBtns.length; i++){
				timeBtns[i].onclick =function(){
					
					$(".timeBtnClass").each(function(i, v){
						$(this).css("background-color", "white");						
						
						if($(this).is(":disabled")) {
							$(this).css("background-color", "#8C8C8C");	
						}
					});
						
					this.style.backgroundColor = "#fa9300";					
					var selectedTime = this.value; // 선택된 버튼의 값 가져오기
					document.getElementById("selectedTime").value = selectedTime; // 선택 된 시간 버튼 벨류 값 jsp 페이지에 출력하기 위한 작업
					
					
					
					
					console.log(selectedTime);	 // 선택 된 시간 버튼 벨류 값 콘솔 출력
			
				}
				//clearBtns(); // 시간 버튼 초기화 시키기
			}
			
			function clearBtns(){
				for(var i = 0; i<timeBtns.length; i++){
				timeBtns[i].style.backgroundColor = "";
				}
			}	
			
			// 장소 시간 → 장소 예약 
			$("#placeBookBtn").on("click", function() {	
			
				var selectedValue = "";
				 
				for(var i = 0; i < timeBtns.length; i++) {
					if(timeBtns[i].style.backgroundColor=== "rgb(250, 147, 0)"){
					selectedValue = timeBtns[i].value;
					break;
					}
				}
				
				if(selectedValue === "") {
			      	// 선택된 버튼의 값이 없을 경우 예외 처리
					alert("선택된 시간이 없습니다.");
					$(this).off(); // alert 창이 계속 나오는 경우가 발생해서 추가한 코드 
					return false;
			    }
		
				$("#placeCheckForm").attr("action", "placeBook");
				$("#placeCheckForm").attr("method", "post");
				$("#placeCheckForm").submit();
			});
		
		}  // end function choiceDate
        
        
        
        // 이전달 버튼 클릭
        function prevCalendar() {
            nowMonth = new Date(nowMonth.getFullYear(), nowMonth.getMonth() - 1, nowMonth.getDate());   // 현재 달을 1 감소
            buildCalendar();    // 달력 다시 생성
        }
        // 다음달 버튼 클릭
        function nextCalendar() {
            nowMonth = new Date(nowMonth.getFullYear(), nowMonth.getMonth() + 1, nowMonth.getDate());   // 현재 달을 1 증가
            buildCalendar();    // 달력 다시 생성
        }
		
		
		
        // input값이 한자리 숫자인 경우 앞에 '0' 붙혀주는 함수
        function leftPad(value) {
            if (value < 10) {
                value = "0" + value;
                return value;  
            }
            return value;
        }
       

       
      


        
        
        