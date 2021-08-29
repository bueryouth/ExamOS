/*设置渐变背景数组*/
var Arraycolor = new Array(
	"linear-gradient(to right, #e66465, #9198e0)",
	"linear-gradient(to right, #9198e0, #69DEDB)",
	"linear-gradient(to right, #69DEDB, #EDF892)",
	"linear-gradient(to right, #EDF892, #DCB2C6)",
	"linear-gradient(to right, #DCB2C6, #e66465)");
var n = 0;
function turncolors() {
	n++;
	if (n == (Arraycolor.length - 1)) n = 0;
	document.getElementById("bg").style.backgroundImage = Arraycolor[n]
	setTimeout("turncolors()", 3000); //可以设置自动变换时间
}
turncolors();