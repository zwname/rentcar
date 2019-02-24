<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<%
	pageContext.setAttribute("path", request.getContextPath());
%>
<link rel="stylesheet" href="${path}/resources/back_resources/login/css/login.css" />
</head>
 <jsp:include page="../back/static.jsp"></jsp:include>
<body>
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
</body>
<script type="text/javascript">

$("#login").click(function(){
	var username=$("#username").val();
	var password=$("#password").val();
	if(null==username){
		layer.msg("用户名不能为空",{icon:5},1500);
		return false;
	}
	if(null==password){
		layer.msg("密码不能为空",{icon:5},1500);
		return false;
	}
	
	$.ajax({
		url:"<%=request.getContextPath()%>/userlogin",
		type:"POST",
		data:{
			username,
			password
		},
		success:function(data){
			if(data.code==1){
                layer.msg(data.sss,{icon:6},1500);
                if(window!=top){
                	//top.location.href="${path}/toheader";
                	window.setTimeout("javascript:top.location.href='${path}/toheader'",1500);
                }
            }else {
                layer.msg(data.sss,{icon:5},1500);
                window.setTimeout("javascript:location.reload()",1500);
            }
		}
	})
})

</script>
</html>