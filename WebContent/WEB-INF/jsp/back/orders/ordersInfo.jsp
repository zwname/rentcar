<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<jsp:include page="../static.jsp"></jsp:include>
</head>
<body>
<ul id="myTab" class="nav nav-tabs">
	<li class="active"><a href="#order" data-toggle="tab"> 订单信息</a></li>
	<li><a href="#user" data-toggle="tab">用户信息</a></li>
	<li><a href="#car" data-toggle="tab">车辆信息</a></li>
</ul>
<div id="myTabContent" class="tab-content">
	<div class="tab-pane fade in active" id="order">
		<table class="table">
		<tr><td>订单号</td><td>${ordersDto.ordercode}</td></tr>
		<tr><td>开始日期</td><td>${ordersDto.thestart}</td></tr>
		<tr><td>结束日期</td><td>${ordersDto.theend}</td></tr>
		<tr><td>取车地点</td><td>${ordersDto.place}</td></tr>
		<tr><td>还车地点</td><td>${ordersDto.address}</td></tr>
		<tr><td>预定日期</td><td>${ordersDto.addtime}</td></tr>
		<tr><td>订单状态</td><td>${ordersDto.status}</td></tr>
		<tr><td>总金额(RMB)</td><td></td></tr>
		</table>
	</div>
	<div class="tab-pane fade" id="user">
		<table class="table">
		<tr><td>用户名</td><td>${ordersDto.username}</td></tr>
		<tr><td>真实姓名</td><td>${ordersDto.realname}</td></tr>
		<tr><td>证件号</td><td>${ordersDto.idcard}</td></tr>
		<tr><td>性别</td><td>${ordersDto.sex}</td></tr>
		<tr><td>住址</td><td></td></tr>
		<tr><td>联系方式</td><td>${ordersDto.contact}</td></tr>
		</table>
	</div>
	<div class="tab-pane fade" id="car">
		<table class="table">
		<tr><td>车辆图标</td><td></td></tr>
		<tr><td>车牌号</td><td>${ordersDto.carno}</td></tr>
		<tr><td>出租价格(RMB/天)</td><td>${ordersDto.price}</td></tr>
		<tr><td>排量</td><td>${ordersDto.displacement}</td></tr>
		</table>
	</div>
	
</div>
</body>
</html>