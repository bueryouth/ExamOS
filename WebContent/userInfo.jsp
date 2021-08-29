<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>在线考试学习系统</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://cdn.staticfile.org/twitter-bootstrap/4.3.1/css/bootstrap.min.css">
<link rel="stylesheet"
	href="https://cdn.staticfile.org/font-awesome/4.7.0/css/font-awesome.css">
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
</style>
</head>
<body id="bg">
	<script src="js/background.js"></script>
	<div class="alert alert-warning"
		style="position: fixed; right: 0px; bottom: 50px; z-index: 99;">
		<a href="#" class="close" data-dismiss="alert"> &times; </a> <strong>提示：</strong>请按照自身信息确认，如信息有误请联系后台管理员修改
	</div>
	<div class="container text-center">
		<h2>个人信息确认</h2>
		<div class="table-responsive-md">
			<table class="table table-striped table-bordered">
				<tbody>
					<%
					ResultSet rs = (ResultSet) request.getAttribute("rs");
					while (rs.next()) {
					%>

					<tr>
						<td>姓名</td>
						<td><%=rs.getString("user_name")%></td>
						<td>性别</td>
						<td><%=rs.getString("user_sex")%></td>
						<td>民族</td>
						<td><%=rs.getString("user_nation")%></td>
						<td>个人照片</td>
					</tr>
					<tr>
						<td>出生日期</td>
						<td><%=rs.getString("user_birth")%></td>
						<td>籍贯</td>
						<td><%=rs.getString("user_address")%></td>
						<td>政治面貌</td>
						<td><%=rs.getString("user_political")%></td>
						<td rowspan="3"><i class="fa fa-user-circle-o"
							style="font-size: 150px; color: #777777;"></i></td>
					</tr>
					<tr>
						<td>教育水平</td>
						<td><%=rs.getString("user_edu")%></td>
						<td>所在学校</td>
						<td><%=rs.getString("user_school")%></td>
						<td>所在专业</td>
						<td><%=rs.getString("user_profession")%></td>
					</tr>
					<tr>
						<td>学生学号</td>
						<td><%=rs.getString("user_card")%></td>
						<td>家庭住址</td>
						<td><%=rs.getString("user_home")%></td>
						<td>现居住地</td>
						<td><%=rs.getString("user_living")%></td>
					</tr>
					<tr>
						<td rowspan="5">考生须知</td>
						<td rowspan="5" colspan="6" class="text-left"><%=rs.getString("tip")%></td>
					</tr>
					<%
					}
					%>
				</tbody>
			</table>
		</div>
	</div>
</body>
</html>
