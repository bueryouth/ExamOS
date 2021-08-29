function alertSet(e) {
	document.getElementById("js-alert-box").style.display = "block",
		document.getElementById("js-alert-head").innerHTML = e;
	var t = 5, n = document.getElementById("js-sec-circle");
	document.getElementById("js-sec-text").innerHTML = t,
		setInterval(
			function() {
				if (0 == t);
				else {
					t -= 1,
						document.getElementById("js-sec-text").innerHTML = t;
					var e = Math.round(t / 5 * 735);
					n.style.strokeDashoffset = e - 735
				}
			}, 970)
}
alertSet("页面加载中,请稍候...");