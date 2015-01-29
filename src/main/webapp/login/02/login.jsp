<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="zh-cn">
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="css/style.css" rel="stylesheet" type="text/css" media="all" />
<script type="text/javascript" src="jquery-1.9.1.min.js"></script>
<style>

</style>
<script type="text/javascript">
$(document).ready(function(c) {
	$('.alert-close').on('click', function(c){
		$('.message').fadeOut('slow', function(c){
	  		$('.message').remove();
		});
	});	  
});
</script>

</head>
<body>
<div class="message warning">
	<div class="inset">
		<div class="login-head">
			<h1>用户登录</h1>
			<div class="alert-close"></div> 			
		</div>
		
		<form>
			<ul>
				<li><input type="text" class="text" value="用户名" onFocus="this.value = '';" onBlur="if (this.value == '') {this.value = '用户名';}"><a href="#" class=" icon user"></a></li>
				<li><input type="password" value="" /> <a href="#" class="icon lock"></a></li>
			</ul>
			
			<div class="submit">
				<input type="submit" onClick="myFunction()" value="登录" >
				<h4><a href="#">忘记密码?</a></h4>
				<div class="clear">  </div>	
			</div>
		</form>
	</div>					
</div>

<!--- footer --->
<div class="footer">
	<p>Copyright &copy; 2014.</p>
</div>

</body>
</html>