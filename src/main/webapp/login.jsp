<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="zh-cn">
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/css/bootstrap.css">
</head>
<body>
<form role="form" action="${pageContext.request.contextPath }/account/login" method="post">
  <div class="form-group">
    <label for="">Email address</label>
    <input type="email" class="form-control" id="" placeholder="Enter email" width="100">
  </div>
  <div class="form-group">
    <label for="">Password</label>
    <input type="password" class="form-control" id="" placeholder="Password">
  </div>
  <button type="submit" class="btn btn-default">Submit</button>
  <button type="reset" class="btn btn-default">Reset</button>
</form>
</body>
</html>