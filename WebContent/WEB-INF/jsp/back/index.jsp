<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <%
        pageContext.setAttribute("path",request.getContextPath());
    %>
    <title>Title</title>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0">

    <link rel="stylesheet" href="${path}/resources/back_resources/assets/vendor/bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" href="${path}/resources/back_resources/assets/vendor/font-awesome/css/font-awesome.min.css">
    <link rel="stylesheet" href="${path}/resources/back_resources/assets/vendor/linearicons/style.css">
    <link rel="stylesheet" href="${path}/resources//back_resources/assets/vendor/chartist/css/chartist-custom.css">
    <link rel="stylesheet" href="${path}/resources/back_resources/assets/css/main.css">
    <link rel="stylesheet" href="${path}/resources/back_resources/assets/css/demo.css">
    <link rel="apple-touch-icon" sizes="76x76" href="${path}/resources/back_resources/assets/img/apple-icon.png">
    <link rel="icon" type="image/png" sizes="96x96" href="${path}/resources/back_resources/assets/img/favicon.png">


    <script src="${path}/resources/back_resources/assets/vendor/jquery/jquery.min.js"></script>
    <script src="${path}/resources/back_resources/assets/vendor/bootstrap/js/bootstrap.min.js"></script>
    <script src="${path}/resources/back_resources/assets/vendor/jquery-slimscroll/jquery.slimscroll.min.js"></script>
    <script src="${path}/resources/back_resources/assets/vendor/jquery.easy-pie-chart/jquery.easypiechart.min.js"></script>
    <script src="${path}/resources/back_resources/assets/vendor/chartist/js/chartist.min.js"></script>
    <script src="${path}/resources/back_resources/assets/scripts/klorofil-common.js"></script>
</head>
<body>
<div id="wrapper">
    <!-- NAVBAR -->
    <nav class="navbar navbar-default navbar-fixed-top">
        <div class="brand">
            <a href="${path}/toIndex"><img src="${path}/resources/back_resources/assets/img/hh.png" class="img-responsive logo"></a>
        </div>
        <div class="container-fluid">
            <div id="navbar-menu">
                <ul class="nav navbar-nav navbar-right">
                    <li class="dropdown">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown"><img src="${path}/resources/back_resources/assets/img/user.png" class="img-circle" alt="Avatar"> <span>admin</span> <i class="icon-submenu lnr lnr-chevron-down"></i></a>
                        <ul class="dropdown-menu">
                            <li><a href="${path}/person" target="mainFrame"><i class="lnr lnr-user"></i> <span>个人中心</span></a></li>
                            <li><a href="${path}/changePassword" target="mainFrame"><i class="lnr lnr-envelope"></i> <span>修改密码</span></a></li>
                            <li><a href="#"><i class="lnr lnr-exit"></i> <span>注销</span></a></li>
                        </ul>
                    </li>
                </ul>
            </div>
        </div>
    </nav>
    <div id="sidebar-nav" class="sidebar">
        <div class="sidebar-scroll">
            <nav>
                <ul class="nav">
                    <li>
                        <a href="#subPages1" data-toggle="collapse" class="collapsed"><i class="lnr lnr-file-empty"></i> <span>新闻公告管理</span> <i class="icon-submenu lnr lnr-chevron-left"></i></a>
                        <div id="subPages1" class="collapse ">
                            <ul class="nav">
                                <li><a href="${path}/newsList" class="" target="mainFrame">新闻公告列表</a></li>
                                <li><a href="${path}/newsAdd" class="" target="mainFrame">新闻公告新增</a></li>
                            </ul>
                        </div>
                    </li>
                    <li>
                        <a href="#subPages2" data-toggle="collapse" class="collapsed"><i class="lnr lnr-file-empty"></i> <span>注册用户管理</span> <i class="icon-submenu lnr lnr-chevron-left"></i></a>
                        <div id="subPages2" class="collapse ">
                            <ul class="nav">
                                <li><a href="${path}/usersList" class="" target="mainFrame">注册用户列表</a></li>
                            </ul>
                        </div>
                    </li>
                    <li>
                        <a href="#subPages3" data-toggle="collapse" class="collapsed"><i class="lnr lnr-file-empty"></i> <span>车辆类型管理</span> <i class="icon-submenu lnr lnr-chevron-left"></i></a>
                        <div id="subPages3" class="collapse ">
                            <ul class="nav">
                                <li><a href="${path}/catesList" class="" target="mainFrame">车辆类型列表</a></li>
                                <li><a href="${path}/catesAdd" class="" target="mainFrame">车辆类型新增</a></li>
                            </ul>
                        </div>
                    </li>
                    <li>
                        <a href="#subPages4" data-toggle="collapse" class="collapsed"><i class="lnr lnr-file-empty"></i> <span>车辆品牌管理</span> <i class="icon-submenu lnr lnr-chevron-left"></i></a>
                        <div id="subPages4" class="collapse ">
                            <ul class="nav">
                                <li><a href="${path}/brandsList" class="" target="mainFrame">车辆品牌列表</a></li>
                                <li><a href="${path}/brandsAdd" class="" target="mainFrame">车辆品牌新增</a></li>
                            </ul>
                        </div>
                    </li>
                    <li>
                        <a href="#subPages5" data-toggle="collapse" class="collapsed"><i class="lnr lnr-file-empty"></i> <span>车辆管理</span> <i class="icon-submenu lnr lnr-chevron-left"></i></a>
                        <div id="subPages5" class="collapse ">
                            <ul class="nav">
                                <li><a href="${path}/carsList" class="" target="mainFrame">车辆列表</a></li>
                                <li><a href="${path}/carsAdd" class="" target="mainFrame">车辆新增</a></li>
                            </ul>
                        </div>
                    </li>
                    <li>
                        <a href="#subPages6" data-toggle="collapse" class="collapsed"><i class="lnr lnr-file-empty"></i> <span>车辆订单管理</span> <i class="icon-submenu lnr lnr-chevron-left"></i></a>
                        <div id="subPages6" class="collapse ">
                            <ul class="nav">
                                <li><a href="${path}/orderList" class="" target="mainFrame">车辆订单列表</a></li>
                            </ul>
                        </div>
                    </li>
                    <li>
                        <a href="#subPages7" data-toggle="collapse" class="collapsed"><i class="lnr lnr-file-empty"></i> <span>车辆评价管理</span> <i class="icon-submenu lnr lnr-chevron-left"></i></a>
                        <div id="subPages7" class="collapse ">
                            <ul class="nav">
                                <li><a href="${path}/topicList" class="" target="mainFrame">车辆评价列表</a></li>
                            </ul>
                        </div>
                    </li>
                </ul>
            </nav>
        </div>
    </div>
    <div class="main">
        <!-- MAIN CONTENT -->
        <div class="main-content">
            <iframe id="mainFrame" name="mainFrame" src="${path}/newsList.do" frameborder="0" width="100%"  height="540px" frameBorder="0"></iframe>
        </div>
        <jsp:include page="footer.jsp"></jsp:include>
    </div>
</div>
</body>
</html>
