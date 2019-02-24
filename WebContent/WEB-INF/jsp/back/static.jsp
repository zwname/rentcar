<%@ page pageEncoding="UTF-8" contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <%
        String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+request.getContextPath()+"/";

        pageContext.setAttribute("path",request.getContextPath());

    %>
</head>

<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0">
<link rel="stylesheet" href="<%=basePath%>resources/back_resources/assets/vendor/bootstrap/css/bootstrap.min.css">
<link rel="stylesheet" href="<%=basePath%>resources/back_resources/assets/vendor/font-awesome/css/font-awesome.min.css">
<link rel="stylesheet" href="<%=basePath%>resources/back_resources/assets/vendor/linearicons/style.css">
<link rel="stylesheet" href="<%=basePath%>resources/back_resources/assets/css/main.css">
<link rel="stylesheet" href="<%=basePath%>resources/back_resources/assets/css/demo.css">
<link rel="stylesheet" href="<%=basePath%>resources/back_resources/assets/bootstrap-table/bootstrap-table.css">
<link rel="stylesheet" href="<%=basePath%>resources/back_resources/bootstrap-datetimepicker/bootstrap-datetimepicker.min.css">
<%--
<link href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,600,700" rel="stylesheet">
--%>


<script src="<%=basePath%>resources/back_resources/assets/vendor/jquery/jquery.min.js" type="text/javascript"></script>
<script src="<%=basePath%>resources/back_resources/assets/vendor/bootstrap/js/bootstrap.min.js" type="text/javascript"></script>
<script src="<%=basePath%>resources/back_resources/assets/vendor/jquery-slimscroll/jquery.slimscroll.min.js" type="text/javascript"></script>
<script src="<%=basePath%>resources/back_resources/assets/scripts/klorofil-common.js" type="text/javascript"></script>
<script src="<%=basePath%>resources/back_resources/assets/layer/layer.js" type="text/javascript" ></script>
<script src="<%=basePath%>resources/back_resources/assets/bootstrap-table/bootstrap-table.js" type="text/javascript" ></script>
<script src="<%=basePath%>resources/back_resources/assets/bootstrap-table/bootstrap-table-zh-CN.js" type="text/javascript" ></script>
<script src="<%=basePath%>resources/back_resources/bootstrap-datetimepicker/bootstrap-datetimepicker.min.js" ></script>
<script src="<%=basePath%>resources/back_resources/bootstrap-datetimepicker/bootstrap-datetimepicker.zh-CN.js" ></script>

<body>
</body>
</html>
