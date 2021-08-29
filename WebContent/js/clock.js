var maxtime = 6 * 60; //一个小时，按秒计算，自己调整!   
function CountDown() {
	if (maxtime >= 0) {
		minutes = Math.floor(maxtime / 60);
		seconds = Math.floor(maxtime % 60);
		msg = "剩余时间：" + (minutes > 9 ? " " : "0") + minutes + ":"
			+ (seconds > 9 ? " " : "0") + seconds;
		document.all["timer"].innerHTML = msg;
		--maxtime;
	} else {
		alert("时间到，答题已结束!");
		clearInterval(timer);/*停止计时·*/
		document.getElementById("frm").submit(); /*提交表单*/
	}
}
timer = setInterval("CountDown()", 1000);