<%@ page language="java" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="shiro" uri="http://shiro.apache.org/tags" %>
<c:set var="ctx" value="${pageContext.request.contextPath}"/>
<div id="header" class="container">
	<div id="title" class="row">
		<div class="col-md-6 col-md-offset-3">
		    <h1 class="text-center margin-base-vertical"><a href="${ctx}">Pladin Garden</a><small>--游戏制作爱好者平台</small>
			    <shiro:user>
					<div class="btn-group pull-right">
						<a class="btn dropdown-toggle" data-toggle="dropdown" href="#">
							<i class="icon-user"></i> <shiro:principal property="name"/>
							<span class="caret"></span>
						</a>
					
						<ul class="dropdown-menu">
							<shiro:hasRole name="admin">
								<li><a href="${ctx}/admin/user">Admin Users</a></li>
								<li class="divider"></li>
							</shiro:hasRole>
							<li><a href="${ctx}/api">APIs</a></li>
							<li><a href="${ctx}/profile">Edit Profile</a></li>
							<li><a href="${ctx}/logout">Logout</a></li>
						</ul>
					</div>
				</shiro:user>
			</h1>
		</div>
	</div>
</div>