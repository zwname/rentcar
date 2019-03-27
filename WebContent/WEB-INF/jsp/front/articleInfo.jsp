<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<jsp:include page="../back/static.jsp"></jsp:include>
</head>
<body>
<ul id="myTab" class="nav nav-tabs">
	<li class="active"><a href="#article" data-toggle="tab"> 公告信息</a></li>
	<!-- <li><a href="#user" data-toggle="tab">用户信息</a></li>
	<li><a href="#car" data-toggle="tab">车辆信息</a></li> -->
</ul>
<div id="myTabContent" class="tab-content">
	<div class="tab-pane fade in active" id="article">
		<table class="table">
		<tr><td>标题</td><td>${article.title}</td></tr>
		<tr><td>内容</td><td>${article.contents}</td></tr>
		<tr><td>添加时间</td><td>${article.addtime}</td></tr>
		
		
		</table>
	</div>
	<%-- <div class="tab-pane fade" id="user">
		<table class="table">
		<tr><td>用户名</td><td>${ordersDto.username}</td></tr>
		<tr><td>真实姓名</td><td>${ordersDto.realname}</td></tr>
		<tr><td>证件号</td><td>${ordersDto.idcard}</td></tr>
		<tr><td>性别</td><td>${ordersDto.sex}</td></tr>
		<tr><td>住址</td><td>${ordersDto.address2}</td></tr>
		<tr><td>联系方式</td><td>${ordersDto.contact}</td></tr>
		</table>
	</div>
	<div class="tab-pane fade" id="car">
		<table class="table">
		<tr><td>车辆图标</td><td><img src="<%=request.getContextPath() %>/${ordersDto.image }" style="height:35px;width:35px"/></td></tr>
		<tr><td>车牌号</td><td>${ordersDto.carno}</td></tr>
		<tr><td>出租价格(RMB/天)</td><td>${ordersDto.price}</td></tr>
		<tr><td>排量</td><td>${ordersDto.displacement}</td></tr>
		</table>
	</div> --%>
	
</div>
</body>
</html>