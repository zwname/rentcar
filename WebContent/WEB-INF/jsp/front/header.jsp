<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<%
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+request.getContextPath()+"/";
        pageContext.setAttribute("path",request.getContextPath());
    %>
<title>汽车租赁系统--Home</title>
 	<link rel="stylesheet" href="<%=basePath%>resources/front_resources/css/zerogrid.css">
	<link rel="stylesheet" href="<%=basePath%>resources/front_resources/css/style.css">
	<link rel="stylesheet" href="<%=basePath%>resources/front_resources/css/responsiveslides.css">
	
	<script src="<%=basePath%>resources/front_resources/js/jquery-latest.min.js"></script>
	<script src="<%=basePath%>resources/front_resources/js/script.js"></script>
    <script src="<%=basePath%>resources/front_resources/js/jquery183.min.js"></script>
    <script src="<%=basePath%>resources/front_resources/js/responsiveslides.min.js"></script>
</head>
<body>
<div class="wrap-body">
<div class="bg-theme">
	<div class="wrap-header zerogrid">
		<div class="row">
			<div id="cssmenu">
				<ul>
				   <li class='active'><a href="${path}/toheader">首页</a></li>
				   <li><a href="${path}/allCars" target="mainFrame">全部汽车</a></li>
				   <li class="dropdown">
			          <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">车辆类型 <span class="caret"></span></a>
			          <ul class="dropdown-menu" id="cate">
			          </ul>
			        </li>
			        <li class="dropdown">
			          <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">车辆品牌 <span class="caret"></span></a>
			          <ul class="dropdown-menu" id="brands">
			          </ul>	
			        </li>
			        <c:if test="${null == users.usersid}">
				   <li><a href="${path}/touserlogin" target="mainFrame">[ 登录 ]</a></li>
				   <li><a href="${path}/touserRegister" target="mainFrame">[ 注册 ]</a></li> 
				   </c:if>
				   <c:if test="${null != users.usersid }">
				     <li><a href="${path}/touserinfo?usersid=${users.usersid}" target="mainFrame">欢迎您:&nbsp;<b style="color:red">[ ${users.username} ]</b></a></li>
				    
				     <li class="dropdown">
			          <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">选项 <span class="caret"></span></a>
			          <ul class="dropdown-menu" >
			          <li><a href="${path}/tochangepwd?usersid=${users.usersid}" target="mainFrame"><b >[修改密码]</b></a></li>
			           <li><a href="${path}/loginout" ><b style="color:red">[ 注销 ]</b></a></li>
			          </ul>	
			        </li>
				     </c:if>
				   <li><a href="${path}/toBackLogin">后台系统</a></li>
				</ul> 	
			</div>	
			<a href='${path}/toheader' class="logo"><img src="${path}/resources/front_resources/images/logo.png" /></a>
		</div>
	</div>
</div>
            <iframe id="mainFrame" name="mainFrame" src="${path}/toindex" frameborder="0" width="100%"  height="700px" scrolling="auto"></iframe>
<jsp:include page="footer.jsp"></jsp:include>
</div>
</body>
<script type="text/javascript">

$(function(){
	 brand();
	 cate() ;
})

// 加载车辆品牌数据
function brand() {
    var add = document.getElementById("brands");
    var selectStr ="";
    $.get("<%=request.getContextPath()%>/AllBrandName",
        function (data) {
           // var jsonArray = $.parseJSON(data);
            for(var temp in data)
            {
                selectStr+='<li><a href="<%=request.getContextPath()%>/findByBrandid?brandid='+data[temp].brandid+'" target="mainFrame">'+data[temp].brandname+'</a></li>';
            }
            add.innerHTML=selectStr;

        });
}
	// 加载车辆类型数据
function cate() {
    var add = document.getElementById("cate");

    var selectStr ="";
    $.get("<%=request.getContextPath()%>/AllCateName",
        function (data) {
             for(var temp in data)
            {
                selectStr+='<li><a href="<%=request.getContextPath()%>/findByCateid?cateid='+ data[temp].cateid+ '" target="mainFrame">'+ data[temp].catename + '</a></li>';
			}
				add.innerHTML = selectStr;

			});
	}
</script>
</html>