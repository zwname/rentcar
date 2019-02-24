<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<%
	pageContext.setAttribute("path", request.getContextPath());
%>
<link rel="stylesheet" href="${path}/resources/front_resources/css/zerogrid.css">
<link rel="stylesheet" href="${path}/resources/front_resources/css/style.css">
<link rel="stylesheet" href="${path}/resources/front_resources/css/responsiveslides.css">

<script src="${path}/resources/front_resources/js/jquery-latest.min.js"></script>
<script src="${path}/resources/front_resources/js/script.js"></script>
<script src="${path}/resources/front_resources/js/jquery183.min.js"></script>
<script src="${path}/resources/front_resources/js/responsiveslides.min.js"></script>
</head>
<body>
<section id="container">
	<div class="wrap-container clearfix">
		<div id="main-content">
				<div class="zerogrid">
					<div class="header">
						<h2>全部车辆</h2>
					</div>
					<c:forEach var="cars" items="${findByBrandid}">
						<div class="col-1-4">
							<div class="wrap-col">
								<div class="item t-center">
									<div class="item-container">
										<a href="${path}/findOneCarById?carsid=${cars.carsid}"  target="mainFrame"> <img src="${path}/${cars.image}" style="height: 210px" /></a>
									</div>
									<div class="item-info">
										<a href="${path}/findOneCarById?carsid=${cars.carsid}"  target="mainFrame"><h3><c:out value="${cars.brandname }  ${cars.catename}"/></h3></a>
										<p style="font-size: 15px">
											<c:out value="${cars.price }" />&nbsp;RMB
										</p>
									</div>
								</div>
							</div>
						</div>
					</c:forEach>
				</div>
		</div>
	</div>
</section>
</body>
</html>