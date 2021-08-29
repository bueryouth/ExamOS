<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width,initial-scale=1.0" />
<script src="https://cdn.staticfile.org/jquery/3.2.1/jquery.min.js"></script>
<script
	src="https://cdn.staticfile.org/popper.js/1.15.0/umd/popper.min.js"></script>
<script
	src="https://cdn.staticfile.org/twitter-bootstrap/4.3.1/js/bootstrap.min.js"></script>
<link rel="stylesheet"
	href="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/css/bootstrap.min.css">
<title>在线考试学习系统</title>
</head>
<body>
	<nav class="navbar navbar-default" role="navigation"
		style="margin: 0px;">
		<div class="container-fluid">
			<div class="navbar-header">
				<button type="button" class="navbar-toggle" data-toggle="collapse"
					data-target="#example-navbar-collapse">
					<span class="sr-only">切换导航</span> <span class="icon-bar"></span> <span
						class="icon-bar"></span> <span class="icon-bar"></span>
				</button>
				<span class="navbar-brand glyphicon glyphicon-cloud"
					style="font-size: 40px;"></span> <a class="navbar-brand"
					href="examHome.jsp">在线考试学习系统</a>
			</div>
			<div class="collapse navbar-collapse" id="example-navbar-collapse">
				<ul class="nav navbar-nav navbar-right">
					<li><a href="examMain.jsp" target="botton"> <span
							class="glyphicon glyphicon-home"></span> 系统主页
					</a></li>
					<li><a href="info" target="botton"><span
							class="glyphicon glyphicon-user"></span> 个人信息</a></li>
					<li><a href="examInto.jsp" target="botton"><span
							class="glyphicon glyphicon-pencil"></span> 进入考试</a></li>
					<li><a href="mark" target="botton"><span
							class="glyphicon glyphicon-file"></span> 成绩查询</a></li>
					<li><a href="examInsert.jsp" target="botton"> <span
							class="glyphicon glyphicon-send"></span> 添加试题
					</a></li>
					<li><a href="userquestions" target="botton"><span
							class="glyphicon glyphicon-trash"></span> 题库删除</a></li>
					<li><a href="userLogin.jsp"><span
							class="glyphicon glyphicon-log-in"></span> 退出登录</a></li>
				</ul>
			</div>
		</div>
	</nav>
	<iframe src="examMain.jsp" name="botton" id="test"
		onload="this.height=100" width="100%" frameborder="0"
		style="display: block; height: 557px;" scrolling="auto"></iframe>
	<script type="text/javascript">
			/* window.onload=function reinitIframe() {
				var iframe = document.getElementById("test");
				iframe.height = document.documentElement.clientHeight;
			} */
			function reinitIframe() {
				var iframe = document.getElementById("test");
				iframe.height = document.documentElement.clientHeight;
			}
			window.setInterval("reinitIframe()", 50); //重复调用，消耗资源？
		</script>
</body>
</html>

