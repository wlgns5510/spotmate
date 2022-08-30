/*
-------------------------------------------------
-------------------------------------------------
Content Java Script Jquery
Version : 1.0
Author : JYJ
First update : 2022. 08. 04.

-------------------------------------------------
-------------------------------------------------
*/


//'출생 연도' 셀렉트 박스 option 목록 동적 생성
$(document).ready(function(){
    const birthYearEl = document.querySelector('#birth-year')
    // option 목록 생성 여부 확인
    isYearOptionExisted = false;
    birthYearEl.addEventListener('focus', function () {
        // year 목록 생성되지 않았을 때 (최초 클릭 시)
        if(!isYearOptionExisted) {
            isYearOptionExisted = true
            for(var i = 1940; i <= 2022; i++) {
            // option element 생성
            const YearOption = document.createElement('option')
            YearOption.setAttribute('value', i)
            YearOption.innerText = i
            // birthYearEl의 자식 요소로 추가
            this.appendChild(YearOption);
            $("#birth-year").css("color", "#4454A1");
            }
        }

        // select된 option 확인
        // const selectedYearEl = document.querySelector('#print-date')
        // birthYearEl.addEventListener('change', (event) => {
        // selectedYearEl.textContent = `Year of birth : ${event.target.value}`
        // });

    });
});


// '월' 셀렉트 박스 option 목록 동적 생성
$(document).ready(function(){
    const birthMonthEl = document.querySelector('#birth-month')
    // option 목록 생성 여부 확인
    isMonthOptionExisted = false;
    birthMonthEl.addEventListener('focus', function () {
        // month 목록 생성되지 않았을 때 (최초 클릭 시)
        if(!isMonthOptionExisted) {
            isMonthOptionExisted = true
            for(var i = 1; i <= 12; i++) {
            // option element 생성
            const MonthOption = document.createElement('option')
            MonthOption.setAttribute('value', i)
            MonthOption.innerText = i
            // MonthOption.innerText = i + '월'
            // birthMonthEl의 자식 요소로 추가
            this.appendChild(MonthOption);
            $("#birth-month").css("color", "#4454A1");
            }
        }
    });
});

// '일' 셀렉트 박스 option 목록 동적 생성
$(document).ready(function(){
    const birthDayEl = document.querySelector('#birth-day')
    // option 목록 생성 여부 확인
    isDayOptionExisted = false;
    birthDayEl.addEventListener('focus', function () {
        // month 목록 생성되지 않았을 때 (최초 클릭 시)
        if(!isDayOptionExisted) {
            isDayOptionExisted = true
            for(var i = 1; i <= 12; i++) {
            // option element 생성
            const DayOption = document.createElement('option')
            DayOption.setAttribute('value', i)
            DayOption.innerText = i
            // MonthOption.innerText = i + '월'
            // birthMonthEl의 자식 요소로 추가
            this.appendChild(DayOption);
            $("#birth-day").css("color", "#4454A1");
            }
        }
    });
});

// 체크박스 선택시 스타일 변화
// $(document).ready(function () {
//     $("input:checkbox").on('click', function () {
//         if ($(this).prop('checked')) {
//             $(this).parent().addClass("selected");
//         } else {
//             $(this).parent().removeClass("selected");
//         }
//     });
// });

$(document).ready(function () {
    $("input:checkbox").on('click', function () {
        if ($(this).prop('checked')) {
            // $(this).parent().addClass("selected");
            //$(this).siblings().css({"color": "#4454a1"});
            $(this).siblings().addClass("selected");
            $(this).siblings().css({"color": "#4454a1"});
            $(this).siblings().css({"font-weight": "bold"});
        } else {
            $(this).siblings().removeClass("selected");
            $(this).siblings().css({"color": ""});
            $(this).siblings().css({"font-weight": ""});
        }
    });
});


//체크박스 전체 선택 및 해제
$(document).ready(function () {
    $('#allCk').click(function(){
		var checked = $('#allCk').is(':checked');
		
		if(checked){
            $('.oneCk').prop('checked',true);
        } else {
            $('.oneCk').prop('checked',false);
        }
	});
});

// 주소창 띄우기
$(document).ready(function () {
    document.getElementById("address_kakao").addEventListener("click", function(){ //주소입력칸을 클릭하면
        //카카오 지도 발생
        new daum.Postcode({
            oncomplete: function(data) { //선택시 입력값 세팅
                document.getElementById("address_kakao").value = data.address; // 주소 넣기
                document.querySelector("input[name=address_detail]").focus(); //상세입력 포커싱
            }
        }).open();
    });

});

//아이디 중복 확인하는 부분
$("#id_check").on("click", function() {
	if ( !/^[a-zA-Z0-9]{1,6}$/.test($("#join_uid").val()) ) {
		alert('ID는 숫자와 영문자 조합으로 1~6자리를 사용해야 합니다');
		return;
	}
	$.ajax({
		url : "${pageContext.request.contextPath}/idChk",		
		type : "post",
		contentType : "application/json",
		data : $("#join_uid").val(),
		dataType : "json",
		success : function(result){
			if(result == 1) {
				alert("중복된 아이디입니다");
				return;
			} else if (result == 0) {
				alert("사용가능한 아이디입니다.")
				$("#id_chk_status").val(0);
				return;
			}
		},
		error : function(XHR, status, error) {
			console.error(status + " : " + error);
		}
	});
})

//비밀번호 확인하는 부분
$("#join_pass").on("input", function() {
	if ( $("#join_pass").val().length == $("#join_passcheck").val().length && /^.*(?=^.{8,16}$)(?=.*\d)(?=.*[a-zA-Z])(?=.*[!@#$%^&+=]).*$/.test($("#join_pass").val()) ) {
		$("#chk_pw_p").remove();
		if ( $("#join_pass").val() == $("#join_passcheck").val() ) {
			$(".chk_pw").append("<div id='chk_pw_p'><p id='chk_pw_pass'>비밀번호가 일치합니다</p></div>");
		} else {
			$(".chk_pw").append("<div id='chk_pw_p'><p id='chk_pw_fail'>비밀번호가 일치하지않습니다</p></div>");
		}
	}
})

//비밀번호 확인하는 부분
$("#join_passcheck").on("input", function() {
	if ( $("#join_pass").val().length == $("#join_passcheck").val().length && /^.*(?=^.{8,16}$)(?=.*\d)(?=.*[a-zA-Z])(?=.*[!@#$%^&+=]).*$/.test($("#join_pass").val()) ) {
		$("#chk_pw_p").remove();
		if ( $("#join_pass").val() == $("#join_passcheck").val() ) {
			$(".chk_pw").append("<div id='chk_pw_p'><p id='chk_pw_pass'>비밀번호가 일치합니다</p></div>");
		} else {
			$(".chk_pw").append("<div id='chk_pw_p'><p id='chk_pw_fail'>비밀번호가 일치하지않습니다</p></div>");
		}
	}
})

//회원가입전 확인
$("#btn_submit").on("click", function() {
	if ( !/^[a-zA-Z0-9]{1,6}$/.test($("#join_uid").val()) ) {
		alert('ID는 숫자와 영문자 조합으로 1~6자리를 사용해야 합니다');
		return;
	} else if ( $("#id_chk_status").val() != 0 ) {
		alert("ID중복확인을 해 주세요");
		return;
	} else if(!/^.*(?=^.{8,16}$)(?=.*\d)(?=.*[a-zA-Z])(?=.*[!@#$%^&+=]).*$/.test($("#join_pass").val())) {
		alert('비밀번호는 숫자,영문자,특수문자를 포함하여 8~16자리를 사용해야 합니다');
		return;
	} else if( $("#join_pass").val() != $("#join_passcheck").val() ) {
		alert("비밀번호가 일치하지 않습니다");
		return;
	} else if ( $("#join_name").val() == "" ) {
		alert("이름을 입력 해 주세요");
		return;
	} else if ( !/^[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*.[a-zA-Z]{2,3}$/i.test($("#join_emil").val()) ) {
		alert("eMail 형식을 확인 해 주세요");
		return;
	} else if ( $("#join_phone").val() == '' || $("#join_phone").val().length < 10 || $("#join_phone").val().length > 11) {
		alert("전화번호를 입력 해 주세요")
		return;
	} else if ($("#address_kakao").val() == "" ){
		alert("주소를 입력 해 주세요")
		return;
	} else if (!$("#join_male").is(':checked') && !$("#join_female").is(':checked')) {
		alert("성별을 선택 해 주세요")
		return;
	} else if ( $("#birth-year").val() == null || $("#birth-month").val() == null || $("#birth-day").val() == null ) {
		alert("생년월일을 선택 해 주세요")
		return;
	} else if ( ! ($(".must1").is(':checked') && $(".must2").is(':checked') && $(".must3").is(':checked') && $(".must4").is(':checked'))  ) {
		alert("필수 항목에 모두 동의 해 주세요")
		return;
	}
	$("#btn_submit").attr("type", "submit");
})

