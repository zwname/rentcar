<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<%
        pageContext.setAttribute("path",request.getContextPath());
    %>
<title>汽车租赁</title>
	<meta name="description" content="">
	<meta name="author" content="">
	<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
  	<link rel="stylesheet" href="${path}/resources/front_resources/css/zerogrid.css">
	<link rel="stylesheet" href="${path}/resources/front_resources/css/style.css">
	<link rel="stylesheet" href="${path}/resources/front_resources/css/responsiveslides.css">
	
	<script src="${path }/resources/front_resources/js/jquery-latest.min.js"></script>
	<script src="${path }/resources/front_resources/js/script.js"></script>
    <script src="${path }/resources/front_resources/js/jquery183.min.js"></script>
    <script src="${path }/resources/front_resources/js/responsiveslides.min.js"></script>
</head>
  <script>
		// You can also use "$(window).load(function() {"
		$(function () {
		  // Slideshow 
		  $("#slider").responsiveSlides({
			auto: true,
			pager: false,
			nav: true,
			speed: 500,
			namespace: "callbacks",
			before: function () {
			  $('.events').append("<li>before event fired.</li>");
			},
			after: function () {
			  $('.events').append("<li>after event fired.</li>");
			}
		  });
		});
	</script>
<body>

<div class="slider">
	<!-- Slideshow -->
	<div class="callbacks_container">
		<ul class="rslides" id="slider">
			<li>
				<img src="${path}/resources/front_resources/images/slideshow-image1.jpg" alt="">
			</li>
			<li>
				<img src="${path}/resources/front_resources/images/slideshow-image2.jpg" alt="">
			</li>
			<li>
				<img src="${path}/resources/front_resources/images/slideshow-image3.jpg" alt="">
			</li>
		</ul>
	</div>
	<div class="clear"></div>
</div>



<!--////////////////////////////////////Container-->
<section id="container">
	<div class="wrap-container clearfix">
		<div id="main-content">
			<div class="wrap-box"><!--Start Box-->
				<div class="zerogrid">
					<div class="header">
						<h2>推荐车辆</h2>
					</div>	
					<div class="row">
						<div class="col-1-3">
							<div class="wrap-col">
								<div class="item t-center">
									<div class="item-container">
										<a href="single.html">
											<img src="${path}/resources/front_resources/images/car1.jpg" />
										</a>
									</div>
									<div class="item-info">
										<a href="single.html"><h3>宝马X1 </h3></a>
										<p>32,000 km €78,400</p>
									</div>
								</div>
								<div class="item t-center">
									<div class="item-container">
										<a href="single.html">
											<img src="${path}/resources/front_resources/images/car5.jpg" />
										</a>
									</div>
									<div class="item-info">
										<a href="single.html"><h3>奔驰600s</h3></a>
										<p>32,000 km €78,400</p>
									</div>
								</div>
							</div>
						</div>
						<div class="col-1-3">
							<div class="wrap-col">
								<div class="item t-center">
									<div class="item-container">
										<a href="single.html">
											<img src="${path}/resources/front_resources/images/car2.jpg" />
										</a>
									</div>
									<div class="item-info">
										<a href="single.html"><h3>布加迪威龙</h3></a>
										<p>32,000 km €78,400</p>
									</div>
								</div>
								<div class="item t-center">
									<div class="item-container">
										<a href="single.html">
											<img src="${path}/resources/front_resources/images/car4.jpg" />
										</a>
									</div>
									<div class="item-info">
										<a href="single.html"><h3>劳斯莱斯</h3></a>
										<p>32,000 km €78,400</p>
									</div>
								</div>
							</div>
						</div>
						<div class="col-1-3">
							<div class="wrap-col">
								<div class="item t-center">
									<div class="item-container">
										<a href="single.html">
											<img src="${path}/resources/front_resources/images/car3.jpg" />
										</a>
									</div>
									<div class="item-info">
										<a href="single.html"><h3>奥迪Q12</h3></a>
										<p>32,000 km €78,400</p>
									</div>
								</div>
								<div class="item t-center">
									<div class="item-container">
										<a href="single.html">
											<img src="${path}/resources/front_resources/images/car1.jpg" />
										</a>
									</div>
									<div class="item-info">
										<a href="single.html"><h3>宾利</h3></a>
										<p>32,000 km €78,400</p>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="wrap-box" >
				<div class="zerogrid">
					<div class="header">
						<h2>特价车辆</h2>
					</div>
					<div class="row">
						<div class="col-2-3">
							<div class="wrap-col">
								<div class="row">
									<div class="item">
										<div class="col-1-3">
											<div class="item-container">
												<a href="single.html">
													<img src="${path}/resources/front_resources/images/car7.jpg" />
												</a>
											</div>
										</div>
										<div class="col-2-3">
											<div class="wrap-col">
												<div class="item-info">
													<a href="single.html"><h3>LAMBORGHINI GALLARDO</h3></a>
													<p>32,000 km €78,400</p>
													<p>ABS, Leather seats, Power Assisted Steering, Electric heated seats, New HU and AU, Xenon headlights</p>
												</div>
											</div>
										</div>
										<div class="clear"></div>
									</div>
								</div>
								<div class="row">
									<div class="item">
										<div class="col-1-3">
											<div class="item-container">
												<a href="single.html">
													<img src="${path}/resources/front_resources/images/car8.jpg" />
												</a>
											</div>
										</div>
										<div class="col-2-3">
											<div class="wrap-col">
												<div class="item-info">
													<a href="single.html"><h3>LAMBORGHINI GALLARDO</h3></a>
													<p>32,000 km €78,400</p>
													<p>ABS, Leather seats, Power Assisted Steering, Electric heated seats, New HU and AU, Xenon headlights</p>
												</div>
											</div>
										</div>
										<div class="clear"></div>
									</div>
								</div>
								<div class="row">
									<div class="item">
										<div class="col-1-3">
											<div class="item-container">
												<a href="single.html">
													<img src="${path}/resources/front_resources/images/car9.jpg" />
												</a>
											</div>
										</div>
										<div class="col-2-3">
											<div class="wrap-col">
												<div class="item-info">
													<a href="single.html"><h3>LAMBORGHINI GALLARDO</h3></a>
													<p>32,000 km €78,400</p>
													<p>ABS, Leather seats, Power Assisted Steering, Electric heated seats, New HU and AU, Xenon headlights</p>
												</div>
											</div>
										</div>
										<div class="clear"></div>
									</div>
								</div>
								<div class="row">
									<div class="item">
										<div class="col-1-3">
											<div class="item-container">
												<a href="single.html">
													<img src="${path}/resources/front_resources/images/car10.jpg" />
												</a>
											</div>
										</div>
										<div class="col-2-3">
											<div class="wrap-col">
												<div class="item-info">
													<a href="single.html"><h3>LAMBORGHINI GALLARDO</h3></a>
													<p>32,000 km €78,400</p>
													<p>ABS, Leather seats, Power Assisted Steering, Electric heated seats, New HU and AU, Xenon headlights</p>
												</div>
											</div>
										</div>
										<div class="clear"></div>
									</div>
								</div>
								<div class="row">
									<div class="item">
										<div class="col-1-3">
											<div class="item-container">
												<a href="single.html">
													<img src="${path}/resources/front_resources/images/car7.jpg" />
												</a>
											</div>
										</div>
										<div class="col-2-3">
											<div class="wrap-col">
												<div class="item-info">
													<a href="single.html"><h3>LAMBORGHINI GALLARDO</h3></a>
													<p>32,000 km €78,400</p>
													<p>ABS, Leather seats, Power Assisted Steering, Electric heated seats, New HU and AU, Xenon headlights</p>
												</div>
											</div>
										</div>
										<div class="clear"></div>
									</div>
								</div>
							</div>
						</div>
						<div id="sidebar" class="col-1-3">
							<div class="wrap-col">
								<div class="widget wid-post">
									<div class="wid-header">
										<h5>新闻公告</h5>
									</div>
									<div class="wid-content">
										<div class="post">
											<a href="#"><img src="${path}/resources/front_resources/images/car8.jpg"/></a>
											<div class="wrapper">
											  <h5><a href="#">Lorem ipsum dolor</a></h5>
											   <span>$25 - $26</span>
											</div>
										</div>
										<div class="post">
											<a href="#"><img src="${path}/resources/front_resources/images/car9.jpg"/></a>
											<div class="wrapper">
											  <h5><a href="#">Lorem ipsum dolor</a></h5>
											  <span>$25 - $26</span>
											</div>
										</div>
										<div class="post">
											<a href="#"><img src="${path}/resources/front_resources/images/car10.jpg"/></a>
											<div class="wrapper">
											  <h5><a href="#">Lorem ipsum dolor</a></h5>
											   <span>$25 - $26</span>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</section>



</body>
</html>