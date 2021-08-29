<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.io.*,java.util.*,java.sql.*,exam.Control.*"%>
<!DOCTYPE html>

<html>
<head>
<meta charset="utf-8">
<title>在线考试学习系统</title>
<link rel="stylesheet"
	href="https://cdn.staticfile.org/font-awesome/4.7.0/css/font-awesome.css">
<link rel="stylesheet"
	href="https://cdn.staticfile.org/twitter-bootstrap/4.3.1/css/bootstrap.min.css">
<script src="https://cdn.bootcss.com/jquery/3.3.1/jquery.js"></script>
<script src="https://cdn.staticfile.org/jquery/3.2.1/jquery.min.js"></script>
<script
	src="https://cdn.staticfile.org/popper.js/1.15.0/umd/popper.min.js"></script>
<script
	src="https://cdn.staticfile.org/twitter-bootstrap/4.3.1/js/bootstrap.min.js"></script>
<link rel="stylesheet" href="css/top.css" />
<link rel="stylesheet" href="css/list.css" />
<script src="js/clock.js"></script>
<script>
	if (!sessionStorage.getItem("isReload")) {
		alert("开始答题了,请注意时间!\n提示：页面不可刷新，不要随意操作！");
	}
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
					scrollTop : 0
				}, 2013);
			}
		});
	})
</script>
</head>

<body
	style="background-image: linear-gradient(to right, #9198e0, #DCB2C6);"
	data-spy="scroll">
	<div class="top">
		<i class="fa fa-chevron-up" style="font-size: 18PX"></i>
		<p>TOP</p>
	</div>
	<nav class="navbar navbar-expand-md  bg-light navbar-light fixed-top"
		role="navigation" style="margin: 0px;">
		<a class="navbar-brand"><i class="fa fa-hourglass-2"></i>&nbsp;<strong><i
				id="timer" style="color: #212529"></i></strong></a>
		<button class="navbar-toggler" type="button" data-toggle="collapse"
			data-target="#collapsibleNavbar">
			<span class="navbar-toggler-icon"></span>
		</button>
		<div class="collapse navbar-collapse" id="collapsibleNavbar">
			<ul class="navbar-nav">
				<li class="nav-item"><a class="navbar-brand"><i
						class="fa fa-user-circle-o"></i>&nbsp;姓名：<%= session.getAttribute("user_name").toString() %>&nbsp;&nbsp;</a>
				</li>
				<li class="nav-item"><a class="navbar-brand"><i
						class="fa fa-mortar-board"></i>&nbsp;学号：<%= session.getAttribute("user_card").toString() %>&nbsp;&nbsp;</a>
				</li>
				<li class="nav-item"><a class="navbar-brand"><i
						class="fa fa-paper-plane-o"></i>&nbsp;班级：<%= session.getAttribute("user_id").toString() %>&nbsp;&nbsp;</a>
				</li>
			</ul>
		</div>
	</nav>
	<div style="margin-top: 30px; height: 30px"></div>
	<form action="userResult" method="post" id="frm">
		<%
		ResultSet rs = (ResultSet) request.getAttribute("rs");
		int i=1;
		for (;rs.next();i++) {
		%>
		<div class="chunk">
			<p id="t<%=i%>"><%=i%>.<%=rs.getString("subject")%></p>
			<p>
				<input type="radio" name="<%=rs.getInt("questions_id")%>" value="A"><%=rs.getString("optionA")%>
				<br> <input type="radio" name="<%=rs.getInt("questions_id")%>"
					value="B"><%=rs.getString("optionB")%>
				<br> <input type="radio" name="<%=rs.getInt("questions_id")%>"
					value="C"><%=rs.getString("optionC")%>
				<br> <input type="radio" name="<%=rs.getInt("questions_id")%>"
					value="D"><%=rs.getString("optionD")%>
				<br>
			</p>
		</div>
		<%
		}
		%>
		<div align="center">
			<input type="submit" class="btn btn-outline-primary "
				style="margin: 10px;" value="确认交卷" />
		</div>
	</form>

	<nav class="col-sm-3 col-0" id="myScrollspy">
		<ul class="nav nav-pills flex-column ">
			<li class="nav-item i"><a class="nav-link active" href="#t1">1</a>
				<%
		for (int j=2;j<i;j++) {
		%>
			<li class="nav-item i"><a class="nav-link" href="#t<%=j%>"><%=j%></a></li>
			<%} %>
		</ul>
	</nav>
</body>
</html>