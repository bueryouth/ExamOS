<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>在线考试学习系统</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://cdn.staticfile.org/twitter-bootstrap/4.3.1/css/bootstrap.min.css">
<style>
.container {
	width: 90%;
	padding: 10px;
	margin-top: 15px;
	margin-bottom: 10px;
	border-radius: 15px;
	background: rgba(255, 255, 255, 0.5);
	box-shadow: #333333 0px 0px 10px
}
</style>
</head>
<body id="bg">
	<script src="js/background.js"></script>
	<div class="container">
		<form action="insert" method="post">
			<div align="center">
				<textarea class="form-control" rows="18" autoHeight="true"
					name="comment" id="comment" placeholder='请复制粘贴带有答案的试题'></textarea>
				<br /> <input type="submit" class="btn btn-outline-primary"
					value="提交试题" />
			</div>
		</form>
	</div>
</body>
</html>
