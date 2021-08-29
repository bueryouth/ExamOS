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
	<div class="container text-center">
		<h2>考试学习记录</h2>
		<div class="table-responsive-md">
			<table class="table table-hover ">
				<thead>
					<tr>
						<td>所属课程</td>
						<td>试题类型</td>
						<td>练习时间</td>
						<td>最后得分</td>
					</tr>
				</thead>
				<tbody>
					<%
					ResultSet rs = (ResultSet) request.getAttribute("rs");
					while (rs.next()) {
					%>
					<tr>
						<td><%=rs.getString("result_lesson") %></td>
						<td><%=rs.getString("result_type") %></td>
						<td><%=rs.getString("result_time") %></td>
						<td><%=rs.getString("result_grade") %></td>
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
