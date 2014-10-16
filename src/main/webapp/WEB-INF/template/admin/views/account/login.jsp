<%@ page contentType="text/html;charset=UTF-8" %>
<%@ page import="org.apache.shiro.web.filter.authc.FormAuthenticationFilter"%>
<%@ page import="org.apache.shiro.authc.ExcessiveAttemptsException"%>
<%@ page import="org.apache.shiro.authc.IncorrectCredentialsException"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="ctx" value="${pageContext.request.contextPath}"/>

<html>
<head>
	<title>登录页</title>
	<style>

	body {
		padding-top: 20px;
	}

	.margin-base-vertical {
		margin: 40px 0;
	}

	</style>
</head>

<body>
	<div class="container">
		<div class="row">
			<div class="col-md-6 col-md-offset-3">
				<form id="loginForm" action="${ctx}/admin/login" method="post" class="form-horizontal margin-base-vertical">
					<%
					String error = (String) request.getAttribute(FormAuthenticationFilter.DEFAULT_ERROR_KEY_ATTRIBUTE_NAME);
					if(error != null){
					%>
					<div class="alert alert-error input-medium controls">
						<button class="close" data-dismiss="alert">×</button>登录失败，请重试.
					</div>
					<%
					}
					%>
				
					<p class="input-group">
						<span for="username" class="input-group-addon">名称:</span>
						<input type="text" id="username" name="username"  value="${username}" class="form-control input-lg"/>
					</p>
					
					<!-- 
					<p class="input-group">
						<span class="input-group-addon">@</span>
						<input type="text" class="form-control input-lg" name="email" placeholder="jonsnow@knowsnothi.ng" />
					</p>
					 -->
					
					<p class="input-group">
						<span for="password" class="input-group-addon">密码:</span>
						<input type="password" id="password" name="password" class="form-control input-lg"/>
					</p>
							
					<p class="input-group">
						<label class="help-block" for="rememberMe"><input type="checkbox" id="rememberMe" name="rememberMe"/> 记住我</label>
					</p>
					
					<p class="input-group">
						<input id="submit_btn" class="btn btn-success btn-lg" type="submit" value="登录"/> 
						<a class="btn btn-lg" href="${ctx}/admin/register">注册</a>
					 	<span class="help-block">(管理员: <b>admin/admin</b>, 普通用户: <b>user/user</b>)</span>
					</p>
				</form>
			</div>
		</div>
	</div>

	<script>
		$(document).ready(function() {
			$("#loginForm").validate();
		});
	</script>
</body>
</html>
