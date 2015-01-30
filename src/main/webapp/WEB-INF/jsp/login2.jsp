<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="zh-cn">
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/css/login2.css">
</head>
<body>
<div class="lg">
<form action="${pageContext.request.contextPath }/account/login" method="POST">
    <div class="lg_top"></div>
    <div class="lg_main">
        <div class="lg_m_1">
        
        <input name="username" placeholder="用户名" value="" class="ur" />
        <input name="password" placeholder="密码" type="password" value="" class="pw" />
        
        </div>
    </div>
    <div class="lg_foot">
    <input type="submit" value="登录" class="bn" /></div>
</form>
</div>

</body>
</html>