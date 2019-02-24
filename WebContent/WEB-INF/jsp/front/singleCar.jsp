<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title></title>
<%
	pageContext.setAttribute("path", request.getContextPath());
%>
<link rel="stylesheet" href="${path}/resources/front_resources/css/zerogrid.css">
<link rel="stylesheet" href="${path}/resources/front_resources/css/style.css">
<link rel="stylesheet" href="${path}/resources/front_resources/css/responsiveslides.css">
<link rel="stylesheet" href="${path}/resources/back_resources/assets/vendor/bootstrap/css/bootstrap.min.css">


<script src="${path}/resources/front_resources/js/jquery-latest.min.js"></script>
<script src="${path}/resources/front_resources/js/script.js"></script>
<script src="${path}/resources/front_resources/js/jquery183.min.js"></script>
<script src="${path}/resources/front_resources/js/responsiveslides.min.js"></script>
 <script src="${path}/resources/back_resources/assets/vendor/bootstrap/js/bootstrap.min.js"></script>
</head>
<body>
<section id="container">
		<div class="wrap-container clearfix">
			<div id="main-content">
				<div class="wrap-box" style="background: #fff; box-shadow: 2px 2px 5px 0px rgba(0,0,0,0.3);"><!--Start Box-->
					<div class="zerogrid">
						<div class="header">
							<h1 class="price">汽车详情</h1>
						</div>	
						<div class="row">
							<div class="col-2-3">
								<div class="wrap-col">
									<div class="slider">
										<!-- Slideshow -->
										<div class="callbacks_container">
											<ul class="rslides" id="slider">
													<img src="${path }/${oneCar.image}" alt="">
											</ul>
										</div>
										<div class="clear"></div>
									</div>
								</div>
							</div>
							<div class="col-1-3">
								<div class="wrap-col">
									<ul class="specs">
										<li><strong>车牌号</strong> <span>${oneCar.carno}</span></li>
										<li><strong>车辆类型</strong> <span>${oneCar.catename}</span></li>
										<li><strong>车辆品牌</strong> <span>${oneCar.brandname}</span></li>
										<li><strong>颜色</strong> <span>${oneCar.colour}</span></li>
										<li><strong>成色</strong> <span>${oneCar.degree}</span></li>
										<li><strong>排量</strong> <span>${oneCar.displacement}</span></li>
										<li><strong>租金/天</strong> <span>${oneCar.price}&nbsp;RMB</span></li>
									</ul>
								</div>
								<div class="clear"></div>
								<h4 class="price"><strong>简介</strong></h4>
									<p>${oneCar.contents}</p>
									<button class="btn btn-success" onclick="" >预定</button>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
</section>
</body>
</html>