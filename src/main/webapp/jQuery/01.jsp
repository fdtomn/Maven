<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>

</head>
<body>

</body>
</html>
<script type="text/javascript" src="//code.jquery.com/jquery-1.11.0.min.js"></script>
<script>
window.jQuery || document.write('<script src="${pageContext.request.contextPath }/js/jquery-1.11.2.min.js" type="text/javascript"><\/script>')
</script>

<script type="text/javascript">
	
	$(function(){
		//true		返回jQuery对象
		console.info($('body') instanceof jQuery);
		
		console.info($("body"));
	});
	
</script>