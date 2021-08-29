$(function() {
	$(window).scroll(function() {
		if ($(this).scrollTop() > 300) {
			$(".top").fadeIn();
		} else {
			$(".top").fadeOut();
		}
	});
	$(".top").click(function() {
		if ($(window).scrollTop() > 0) {
			$("html,body").stop().animate({
				scrollTop: 0
			}, 1314);
		}
	});
})