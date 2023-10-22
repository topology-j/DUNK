/**
 * 
 */
 
 $(function() {
 
 	$("#btnOverlapNick").on("click", function() {
 		
 		var nickname=$("#nickname").val();
 		
 		if(nickname.length==0) {
 			alert("닉네임을 입력해 주세요.");
 			$("#nickname").focus();
 			return false;
 		} 		
 		
 		var url="overlapNickCheck?nickname="+nickname;
		
		window.open(url, "nickCheck", "toolbar=no, location=no, status=no, munubar=no, width=400, height=250");		
 		
 	});
 
 	$("#btnOverlapId").on("click", function() {
 		
 		var id=$("#id").val();
 		
 		if(id.length==0) {
 			alert("아이디를 입력해 주세요.");
 			$("#id").focus();
 			return false;
 		}
 		
 		if(id.length<4) {
 			alert("아이디는 4자 이상입니다.");
 			$("#id").focus();
 			return false;
 		}
 		
 		var url="overlapIdCheck?id="+id;
		
		window.open(url, "idCheck", "toolbar=no, location=no, status=no, munubar=no, width=400, height=250");		
 		
 	});
 	
 	$("#btnNickCheckClose").on("click", function() {
	
		var nickname=$(this).attr("data-nick-value");
		opener.document.joinForm.nickname.value=nickname;
		opener.document.joinForm.isNickCheck.value=true;
		window.close();	
	});		
 	
 	$("#btnIdCheckClose").on("click", function() {
	
		var id=$(this).attr("data-id-value");
		opener.document.joinForm.id.value=id;
		opener.document.joinForm.isIdCheck.value=true;
		window.close();	
	});	
	
	$("#btnNickCheckClose2").on("click", function() {		
		window.close();	
	});
	
	$("#btnIdCheckClose2").on("click", function() {		
		window.close();	
	});	
	
	$("#btnOverlapNick2").on("click", function() {
 		
 		var nickname=$("#nickname").val();
 		
 		if(nickname.length==0) {
 			alert("닉네임을 입력해 주세요.");
 			$("#nickname").focus();
 			return false;
 		} 		
 		
 		var url="overlapNickCheck2?nickname="+nickname;
		
		window.open(url, "nickCheck", "toolbar=no, location=no, status=no, munubar=no, width=400, height=250");		
 		
 	});
	
	$("#btnNickCheckClose3").on("click", function() {
	
		var nickname=$(this).attr("data-nick-value");
		opener.document.updateUserForm.nickname.value=nickname;
		opener.document.updateUserForm.isNickCheck.value=true;
		window.close();	
	});		
			
	
	$("#joinForm").on("submit", function() {
		return joinFormCheck();
	});
	
	$("#selectDomain").on("change", function() {
	
		var str=$(this).val();
		
		if(str=="직접입력") {
			$("#emailDomain").val("");
			$("#emailDomain").attr("readonly", false);
			
		} else if(str=="naver.com") {
			$("#emailDomain").val("naver.com");
			$("#emailDomain").attr("readonly", true);				
		
		} else if(str=="hanmail.net") {
			$("#emailDomain").val("hanmail.net");
			$("#emailDomain").attr("readonly", true);				
		
		} else if(str=="gmail.com") {
			$("#emailDomain").val("gmail.com");
			$("#emailDomain").attr("readonly", true);				
		
		}
	
	});
	
	$("#id").on("keyup", function() {	
		
		let regExp = /[^A-Za-z0-9]/gi;
		
		if(regExp.test($(this).val())) {
			alert("영문 대소문자와 숫자만 입력 가능합니다.");
			$(this).val($(this).val().replace(regExp, ""))
		}
		
	});
		
	$("#pass1").on("keyup", inputCharReplace);
	$("#pass2").on("keyup", inputCharReplace);
	$("#emailId").on("keyup", inputCharReplace);
	$("#emailDomain").on("keyup", inputEmailDomainReplace);
	
	$("#btnZipcode").on("click", findZipcode);
	
	$("#updateUserForm").on("submit", function() {
		
		var pass=$("#pass").val();
		
		if(pass.length==0) {
			alert("비밀번호를 입력해 주세요.");
			$("#pass").focus();
			return false;
		}		
		
	});
	
 });
 
function joinFormCheck() {

	let isIdCheck=$("isIdCheck").val();	
	let name = $("#name").val();
	let nickname = $("#nickname").val();
	let id = $("#id").val();
	let pass1 = $("#pass1").val();
	let pass2 = $("#pass2").val();
	let mobile2 = $("#mobile2").val();
	let mobile3 = $("#mobile3").val();
	let zipcode = $("#zipcode").val();
	let emailId = $("#emailId").val();
	let emailDomain = $("#emailDomain").val();
	let address1 = $("#address1").val();
	
	
	if(isIdCheck=="false") {
		alert("아이디 중복 확인을 해 주세요.");
		return false;
	}
	if(name.length == 0) {
		alert("이름을 입력해 주세요.");
		$("#name").focus();
		return false;
	}
	if(nickname.length == 0) {
		alert("닉네임을 입력해 주세요.");
		$("#nickname").focus();
		return false;
	}
	if(id.length == 0) {
		alert("아이디를 입력해 주세요.");
		$("#id").focus();
		return false;
	}
	if(pass1.length == 0) {
		alert("비밀번호를 입력해주세요.");
		$("#pass1").focus();
		return false;
	}
	if(pass2.length == 0) {
		alert("비밀번호 확인을 입력해주세요.");
		$("#pass2").focus();
		return false;
	}
	if(pass1 != pass2) {
		alert("비밀번호와 비밀번호 확인이 다릅니다.");
	}
	if(mobile2.length==0 || mobile3.length==0) {
		alert("핸드폰 번호를 입력해 주세요.");
		return false;
	}
	
	if(emailId.length==0 || emailDomain.length==0) {
		alert("이메일을 입력해 주세요.");
		return false;
	}
	if(zipcode.length == 0) {
		alert("우편번호를 입력해주세요");
		$("#zipcode").focus();
		return false;
	}	
}

function inputCharReplace() {
	let regExp = /[^A-Za-z0-9]/gi;
	
	if(regExp.test($(this).val())) {
		alert("영문 대소문자와 숫자만 입력 가능합니다.");
		$(this).val($(this).val().replace(regExp, ""))
	}
}

function inputEmailDomainReplace() {
	let regExp = /[^A-Za-z0-9\.]/gi;
	
	if(regExp.test($(this).val())) {
		alert("이메일 도메인은 영문 대소문자와 숫자, 점(.)만 입력 가능합니다.");
		$(this).val($(this).val().replace(regExp, ""))
	}
}


function findZipcode() {
	new daum.Postcode({
        oncomplete: function(data) {            
           
            var addr = '';
            var extraAddr = ''; 
         
            if (data.userSelectedType === 'R') { 
                addr = data.roadAddress;
                
            } else { 
                addr = data.roadAddress;
            }
           
            if(data.userSelectedType === 'J'){
             
                if(data.bname !== '' && /[동|로|가]$/g.test(data.bname)){
                    extraAddr += data.bname;
                }
               
                if(data.buildingName !== '' && data.apartment === 'Y'){
                    extraAddr += (extraAddr !== '' ? ', ' + data.buildingName : data.buildingName);
                }
             
                if(extraAddr !== ''){
                    extraAddr = ' (' + extraAddr + ')';
                }                
              
                addr += extraAddr;            
            }
        
            $("#zipcode").val(data.zonecode);
            $("#address1").val(addr);            
            
            $("#address2").focus();
        }
	}).open();
}