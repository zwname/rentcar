<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
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
	<jsp:include page="../back/static.jsp"></jsp:include>
	<%-- <script src="${path }/resources/front_resources/js/jquery-latest.min.js"></script>
	<script src="${path }/resources/front_resources/js/script.js"></script>
    <script src="${path }/resources/front_resources/js/jquery183.min.js"></script> --%>
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
	<style>
	.ms{
	margin-left: 30px;
	margin-top: -10px;
	}
	
	</style>
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
					<c:forEach var="recars" items="${recommendCars}">
						<div class="col-1-4">
							<div class="wrap-col">
								<div class="item t-center">
									<div class="item-container">
										<a href="${path}/findOneCarById?carsid=${recars.carsid}"  target="mainFrame"> <img src="${path}/${recars.image}" style="height: 210px" /></a>
									</div>
									<div class="item-info">
										<a href="${path}/findOneCarById?carsid=${recars.carsid}"  target="mainFrame"><h3><c:out value="${recars.brandname }  ${recars.catename}"/></h3></a>
										<p style="font-size: 15px">
											<c:out value="${recars.price }" />&nbsp;RMB
										</p>
									</div>
								</div>
								
							</div>
						</div>
					</c:forEach>
				</div>
			</div>
			<div class="wrap-box" >
				<div class="zerogrid">
					<div class="header">
						<h2>特价车辆</h2>
					</div>
					<div class="row" >
					
						<div class="col-2-3">
							<div class="wrap-col">
							<c:forEach var="spcars" items="${specialCars}">
								<div class="row">
									<div class="item">
										<div class="col-1-3">
											<div class="item-container">
											<a href="${path}/findOneCarById?carsid=${spcars.carsid}"  target="mainFrame"> <img src="${path}/${spcars.image}" style="height: 210px" /></a>
											</div>
										</div>
										<div class="col-2-3">
											<div class="wrap-col">
												<div class="item-info">
													<a href="${path}/findOneCarById?carsid=${spcars.carsid}"  target="mainFrame"><h3><c:out value="${spcars.brandname }  ${spcars.catename}"/></h3></a>
													<p><c:out value="${spcars.price }" />&nbsp;RMB</p>
													<p><c:out value="${spcars.contents }" /></p>
												</div>
											</div>
										</div>
										<div class="clear"></div>
									</div>
								</div>
								</c:forEach>
							</div>
						</div>
						<div id="sidebar" class="col-1-3">
							<div class="wrap-col">
								<div class="widget wid-post">
									<div class="wid-header">
										<h5>新闻公告</h5>
									</div>
									<c:forEach var="article" items="${indexArticle}">
									<div class="wid-content">
										<div class="post">
											<div class="wrapper">
											
											  <h5 style="display: inline"><a href="#"><c:out value="${article.title }"></c:out></a></h5>
											  <button type="button" class="btn btn-info ms" onclick="showinfo('${article.articleid}')">详情</button>
											 
											  <p><c:out value="${article.contents }"></c:out></p>
											  <span style="color: red;size: 10px"><c:out value="${article.addtime }"></c:out></span>
											</div>
										</div>
										
									</div>
									</c:forEach>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</section>

<script type="text/javascript">
function showinfo(articleid){
	layer.open({
		  type: 2, //Layer提供了5种层类型。可传入的值有：0（信息框，默认）1（页面层）2（iframe层）3（加载层）4（tips层）,
		  closeBtn: 1, //关闭按钮是否显示 1显示0不显示
		  shade:0.1, //遮罩层透明度
		  shadeClose:true,
		  area:['850px','500px'], //弹出层宽高
		  title:'公告详情',//弹出层标题
		  content:'<%=request.getContextPath()%>/findByArticleid?articleid='+articleid //这里content是一个URL，如果你不想让iframe出现滚动条，你还可以content: ['http://sentsin.com', 'no']
		});
	}


</script>

</body>
</html>