<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<%
        pageContext.setAttribute("path",request.getContextPath());
    %>
<title>Insert title here</title>
 	<link rel="stylesheet" href="${path}/resources/front_resources/css/zerogrid.css">
	<link rel="stylesheet" href="${path}/resources/front_resources/css/style.css">
	<link rel="stylesheet" href="${path}/resources/front_resources/css/responsiveslides.css">
	
	<script src="${path}/resources/front_resources/js/jquery-latest.min.js"></script>
	<script src="${path}/resources/front_resources/js/script.js"></script>
    <script src="${path}/resources/front_resources/js/jquery183.min.js"></script>
    <script src="${path}/resources/front_resources/js/responsiveslides.min.js"></script>
</head>
<body>
<div class="bg-theme">
	<div class="wrap-header zerogrid">
		<div class="row">
			<div id="cssmenu">
				<ul>
				   <li class='active'><a href="index.html">首页</a></li>
				   <li><a href="${path}/allCars">全部汽车</a></li>
				   <li class="dropdown">
			          <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">车辆类型 <span class="caret"></span></a>
			          <ul class="dropdown-menu">
			            <li><a href="#">Action</a></li>
			            <li><a href="#">Another action</a></li>
			          </ul>
			        </li>
			        <li class="dropdown">
			          <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">车辆品牌 <span class="caret"></span></a>
			          <ul class="dropdown-menu">
			            <li><a href="#">Action</a></li>
			            <li><a href="#">Another action</a></li>
			          </ul>	
			        </li>
				   <li><a href="single.html">用户登录</a></li>
				   <li><a href="${path}/toBackLogin">后台系统</a></li>
				</ul>
			</div>
			<a href='index.html' class="logo"><img src="${path}/resources/front_resources/images/logo.png" /></a>
		</div>
	</div>
</div>
</body>
</html>