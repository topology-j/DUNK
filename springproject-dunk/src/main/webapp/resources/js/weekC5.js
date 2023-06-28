/**
 * 매칭 주간달력...
 */
 
$(function(){
    const today = new Date();
    //const weekCalendar = new Date(today.getFullYear(), today.getMonth(), today.getDate() + 7);

		// 목록감싸는 ul만들었음 맨 나중에 만들어짐...!
		const ulElement = document.createElement("ul");
		
		ulElement.classList.add("list-unstyled", "d-flex", "justify-content-between");
		
		//임시...toDay+7 더해서 출력	
		for (let i = 0; i < 7; i++) {
		  const today = new Date();
		  const day = new Date(today.getFullYear(), today.getMonth(), today.getDate() + i);
		  const dateOptions = { weekday: 'long', day: 'numeric' };
		
		  // li : 목록만들기
		  const liElement = document.createElement("li");
		
		  // div: 만들고 마진
		  const parentElement = document.createElement("div");
		  parentElement.style.margin = "10px";
		
		  // 00일 (p)
		  const dayElement = document.createElement("p");
		  dayElement.textContent = day.toLocaleDateString(undefined, { day: 'numeric' });
		  parentElement.appendChild(dayElement);
		  
		  // 요일 (span)
		  const weekdayElement = document.createElement("span");
		  weekdayElement.textContent = day.toLocaleDateString(undefined, { weekday: 'long' });
		  parentElement.appendChild(weekdayElement);
		
		  // div<- li 집어넣기
		  liElement.appendChild(parentElement);
		  
		  //날짜 감싼 div에 아이디 할당하기
		  parentElement.setAttribute("id", "datewrap");
		  parentElement.setAttribute("style", "cursor: pointer;");
		  
		  // 일요일인 경우 .text-danger 클래스 추가
		        if (day.getDay() === 0) {
		            parentElement.classList.add("text-danger");
		        }

	       // 토요일인 경우 .text-primary 클래스 추가
		        if (day.getDay() === 6) {
		            parentElement.classList.add("text-primary");
		        }
		  
		  //datewrap 클릭.
		  parentElement.addEventListener("click", function() {
            const clickedDate = day; // Get the clicked date

            const year = clickedDate.getFullYear();
            const month = String(clickedDate.getMonth() + 1).padStart(2, '0');
            const date = String(clickedDate.getDate()).padStart(2, '0');
            const selectedDate = `${year}-${month}-${date}`;

            console.log(selectedDate);
            
            const selectedElements = document.getElementsByClassName("selected");
            
            for (let j = 0; j < selectedElements.length; j++) {
                selectedElements[j].classList.remove("selected");
            }
            parentElement.classList.add("selected");

            // SELECTED 추가 
            $('.datewrap').removeClass('SELECTED');
            $(this).addClass('SELECTED');

            $(".datewrap").each(function() {
              $(this).css("border-color", "");
            });
            
            $(this).css({"border": "2px solid #fa9300", "border-radius": "5px"});
            
            //선택한날짜 matchingList 받아오기
            $("#selectedDate").val(selectedDate);
			$("#matchingForm").attr("action", "matchingList")											
											.submit();
            
            });
		
		  // ul <- li집어넣기
		  ulElement.appendChild(liElement);
		}
		
		// ul을 캘린더 아이디찾아서 집어넣는다......
		document.getElementById("calendar").appendChild(ulElement);
		
});
