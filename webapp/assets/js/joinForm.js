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


// gnb 드롭다운
// $(document).ready(function(){
//     $('.gnb').children('li').children('a').mouseover(function(){
//         $('.gnb').find('.depth2').slideUp(300);
//         $(this).next('.depth2').slideDown(300);
//     });
//     $('.header_wrapper').mouseleave(function(){
//         $('.gnb').find('.depth2').slideUp(300);
//     });
// });

// '출생 연도' 셀렉트 박스 option 목록 동적 생성
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