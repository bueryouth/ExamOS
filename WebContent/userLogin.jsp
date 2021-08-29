<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="zh">
<head>
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<meta http-equiv="Content-Type" content="text/html" charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet" href="css/login.css" />
<title>在线考试学习系统登录</title>
</head>
<body id="bg">
	<script src="js/background.js"></script>
	<div id="login-container">
		<div class="login-title">
			<strong>系统登录</strong>
		</div>
		<table width=50% border="0" align="center" height="240"
			style="margin-top: 50px;">
			<form action="input" method="post">
				<tr>
					<td height="37">
						<table class="table">
							<tr>
								<td height="37" style="font-family: Arial; font-weight: bold">
									<div align="right">
										用户考号         <input class="input" type="text" name="user_id"
											placeholder="请输入考号">
									</div>
								</td>
							</tr>
						</table>
					</td>
				</tr>
				<tr>
					<td height="70">
						<table class="table">
							<tr>
								<td height="37" style="font-family: Arial; font-weight: bold">
									<div align="right">
										用户密码          <input class="input" type="password"
											name="user_passwd" placeholder="请输入密码">
									</div>
								</td>
							</tr>
						</table>
					</td>
				</tr>
				<tr>
					<td>
						<div align="center">
							<input class="testbutton_login" type="submit" value="登录" /> <input
								class="testbutton_clear" type="reset" value="重置" />
						</div>
					</td>
				</tr>
			</form>
		</table>
	</div>
</body>
</HTML>