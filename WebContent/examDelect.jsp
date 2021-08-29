<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<!DOCTYPE html>
<html>
<head>
<title>在线考试学习系统</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<script src="https://cdn.staticfile.org/jquery/3.2.1/jquery.min.js"></script>
<script
	src="https://cdn.staticfile.org/popper.js/1.15.0/umd/popper.min.js"></script>
<script
	src="https://cdn.staticfile.org/twitter-bootstrap/4.3.1/js/bootstrap.min.js"></script>
<link rel="stylesheet"
	href="https://cdn.staticfile.org/twitter-bootstrap/4.3.1/css/bootstrap.min.css">
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

td {
	white-space: pre-line;
	word-wrap: break-word;
	word-break: break-all;
}
</style>
</head>
<body id="bg">
	<script src="js/background.js"></script>
	<tr>
	</tr>
	<div class="container text-center">
		<h2>系统题库删除</h2>
		<div class="table-responsive-sm">
			<form action="delete" method="post">
				<table class="table table-hover table-bordered">
					<thead>
						<tr>
							<td>多项删除</td>
							<td>试卷题目</td>
							<td>题目答案</td>
							<td>创建时间</td>
							<td>试题类型</td>
						</tr>
					</thead>
					<%
					ResultSet rs = (ResultSet) request.getAttribute("rs");
					while (rs.next()) {
					%>
					<tr>
						<td><input type="checkbox" name="sel_id"
							value="<%=rs.getInt("questions_id")%>"></td>
						<td class="text-left"><%=rs.getString("subject")%></td>
						<td><%=rs.getString("answer")%></td>
						<td><%=rs.getString("jointime")%></td>
						<td><%=rs.getString("type")%></td>
					</tr>
					<%
					}
					%>
				</table>
				<input type="submit" class="btn btn-outline-primary" value="删除题目" />
			</form>
		</div>
	</div>
</body>
</html>
