<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link href="${pageContext.request.contextPath }/css/totop.css" type="text/css" rel="stylesheet" />
<script type="text/javascript" src="${pageContext.request.contextPath }/js/jquery-1.8.3.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath }/js/plugin/jquery-scrolltotop.1.0.js"></script>
<script type="text/javascript">
$(function (){
    $(window).manhuatoTop({
        showHeight : 100,//设置滚动高度时显示
        speed : 500 //返回顶部的速度以毫秒为单位
    });
});
</script>
</head>
<body>

</body>
</html>