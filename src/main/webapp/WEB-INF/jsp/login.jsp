<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!doctype html>
<html lang="zh-cn">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>登陆页面</title>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/css/bootstrap.css">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/css/login.css">
</head>
<body>
<div class="main">
	<div class="login-form">
		<h1>后台登录</h1>
		<div class="head"><img src="${pageContext.request.contextPath }/img/user.png" alt=""/></div>
		<form action="${pageContext.request.contextPath }/account/login" method="post">
			<input type="text" class="text" placeholder="账号" />
			<input type="password" placeholder="密码"/>
			<div class="submit"><input type="submit" onClick="" value="登录" ></div>	
			<p><a href="#">忘记密码?</a></p>
		</form>
	</div>
	<div class="copy-right"><p>&copy;2015版权 公司名称保留所有权利</p> </div>
</div>
</body>
</html>