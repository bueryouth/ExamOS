<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>在线考试学习系统</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://cdn.staticfile.org/font-awesome/4.7.0/css/font-awesome.css">
<link rel="stylesheet"
	href="https://cdn.staticfile.org/twitter-bootstrap/4.3.1/css/bootstrap.min.css">
<script src="https://cdn.staticfile.org/jquery/3.2.1/jquery.min.js"></script>
<script
	src="https://cdn.staticfile.org/popper.js/1.15.0/umd/popper.min.js"></script>
<script
	src="https://cdn.staticfile.org/twitter-bootstrap/4.3.1/js/bootstrap.min.js"></script>
<style>
.container {
	width: 90%;
	padding: 10px;
	margin-top: 15px;
	margin-bottom: 15px;
	border-radius: 15px;
	background: rgba(255, 255, 255, 0.5);
	box-shadow: #333333 0px 0px 10px
}

.card {
	background: rgba(231, 231, 231, 0.4);
}

.card:hover {
	padding: 4px;
	background: rgba(231, 231, 231, 0.5);
	box-shadow: #333333 0px 0px 5px;
}
</style>
</head>
<body id="bg">
	<script src="js/background.js"></script>
	<div class="container ">
		<div>
			<h2 align="center">系统考试模块</h2>
		</div>
		<div class="d-flex justify-content-around text-center ">
			<div class="p-2 flex-fill">
				<div class="card">
					<img class="img-fluid" src="img/paper.png" style="width: 100%;"
						height="100px">
					<div class="card-body ">
						<h5>
							<i class="fa fa-file-o"></i> 单选题测试
						</h5>
					</div>
					<a href="adminExam" class="btn btn-primary">进入考试</a>
				</div>
			</div>
			<div class="p-2 flex-fill">
				<div class="card">
					<img class="img-fluid" src="img/paper.png" style="width: 100%;"
						height="100px">
					<div class="card-body ">
						<h5>
							<i class="fa fa-files-o"></i> 多选题测试
						</h5>
					</div>
					<a href="404.jsp" class="btn btn-primary">进入考试</a>
				</div>
			</div>
			<div class="p-2 flex-fill">
				<div class="card">
					<img class="img-fluid" src="img/paper.png" style="width: 100%;"
						height="100px">
					<div class="card-body ">
						<h5>
							<i class="fa fa-columns"></i> 判断题测试
						</h5>
					</div>
					<a href="404.jsp" class="btn btn-primary btn-block">进入考试</a>
				</div>
			</div>
		</div>
	</div>
	<div class="container ">
		<div>
			<h2 align="center">模拟练习模块</h2>
		</div>
		<div class="d-flex justify-content-around text-center ">
			<div class="p-2 flex-fill">
				<div class="card">
					<img class="img-fluid" src="img/paper.png" style="width: 100%;"
						height="100px">
					<div class="card-body ">
						<h5>
							<i class="fa fa-file-o"></i> 单选题测试
						</h5>
					</div>
					<a href="userExam" class="btn btn-primary">进入考试</a>
				</div>
			</div>
			<div class="p-2 flex-fill">
				<div class="card">
					<img class="img-fluid" src="img/paper.png" style="width: 100%;"
						height="100px">
					<div class="card-body ">
						<h5>
							<i class="fa fa-files-o"></i> 多选题测试
						</h5>
					</div>
					<a href="404.jsp" class="btn btn-primary">进入考试</a>
				</div>
			</div>
			<div class="p-2 flex-fill">
				<div class="card">
					<img class="img-fluid" src="img/paper.png" style="width: 100%;"
						height="100px">
					<div class="card-body ">
						<h5>
							<i class="fa fa-columns"></i> 判断题测试
						</h5>
					</div>
					<a href="404.jsp" class="btn btn-primary btn-block">进入考试</a>
				</div>
			</div>
		</div>
	</div>
</body>
</html>
