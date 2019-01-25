<%--
  Created by IntelliJ IDEA.
  User: zw-pc
  Date: 2019/1/11
  Time: 12:50
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <%
        String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+request.getContextPath()+"/";
        pageContext.setAttribute("path",request.getContextPath());

    %>
    <meta charset="utf-8"/>
    <title>后台登录</title>
    <link rel="stylesheet" href="<%=basePath%>/resources/back_resources/login/css/login.css" />
    <jsp:include page="../static.jsp"></jsp:include>
</head>
<style>
    #content {
        background-image: url(${path}/resources/back_resources/login/img/login.jpg);

    }
</style>
<body>

<div id="header">
    <div class="header_title">
        <span class="title_con">汽车租赁后台</span>
    </div>
</div>

<div id="content">
<center>
        <div class="con">
            <div class="con_title">
                <span class="con_title_sp">欢迎登录</span>
            </div>
            <div class="con_panel">
                <div class="con_input">
                    <span>用户名：</span><input id="username" type="text" placeholder="用户名"/>
                </div>
                <div class="con_input">
                    <span>密&nbsp;&nbsp;&nbsp;&nbsp;码：</span><input id="password" type="password" placeholder="密码"/>
                </div>
                <input id="login" type="submit" value="登    录" class="submit-btn"/>
            </div>
        </div>
</center>
</div>
</body>
<script>
 $("#login").click(function () {

     var username=$("#username").val();
     var password=$("#password").val();
         $.ajax({
             url:"${path}/adminLogin",
             type:"GET",
             contentType:"text/text/html;charset=UTF-8",
             data:{
                 username:username,
                 password:password
             },
             success:function (data) {
                 if(data.code==1){
                     layer.msg(data.sss,{icon:6},1500);
                     window.setTimeout("javascript:location.href='${path}/toIndex'",1500);
                     //alert(data.msg);
                 }else {
                     layer.msg(data.sss,{icon:5},1500);
                     window.setTimeout("javascript:location.reload()",1500);
                 }
             }
         });

 });
</script>
</html>
