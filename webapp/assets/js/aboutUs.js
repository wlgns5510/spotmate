/*
-------------------------------------------------
-------------------------------------------------
Content Java Script Jquery
Version : 1.0
Author : JYJ
First update : 2022. 08. 26.
-------------------------------------------------
-------------------------------------------------
*/

//scroll
$(document).ready(function () {
	
	$(window).scroll(function () {
		var h_top = $(this).scrollTop();
		if (h_top >= 100) {
			$(".bc2").css("opacity", "1").animate({ right: "100px" }, 1000, function () { $(".bc1_text").css("opacity", "1").animate({ left: "100px" }, 1000); });
		}
	});
});
