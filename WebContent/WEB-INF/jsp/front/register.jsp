<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<%
	pageContext.setAttribute("path", request.getContextPath());
String path1=request.getContextPath();
%>
<link rel="stylesheet" href="${path}/resources/back_resources/login/css/login.css" />
<jsp:include page="../back/static.jsp"></jsp:include>
</head>
<style >
	.input{
	font-family: "微软雅黑";
		font-size: 2em;
		width: 2em;
	}
	.denglu{
	margin-top: -11px;
	margin-left: 20px;
	}

</style>
<body>
<div id="header">
	<div class="header_title">
		<span class="title_con">汽车租赁系统</span>
		<button type="button" class="btn btn-info denglu" id="goLogin">登陆</button>
	</div>
</div>

<div id="content">
	<center>
		<div class="con">
		<div class="con_title">
			<span class="con_title_sp">欢迎注册</span>
			
		</div>
		<div class="con_panel">
			<div class="con_input">
				<span>用户名：</span><input type="text" id="username" placeholder="用户名"/>
			</div>
			<div class="con_input">
				<span>密&nbsp;&nbsp;&nbsp;&nbsp;码：</span><input type="password" id="password" placeholder="密码"/>
			</div>
			<div class="con_input">
				<span>手机号：</span><input type="text" id="tel" placeholder="手机号"/>
			</div>
			<div >
				<span class="span">性&nbsp;&nbsp;&nbsp;别：</span>
				      <span>男</span><input class="input" name="sex" type="radio" id="nan" value="男" checked="checked" />
				       <span>女</span><input class="input" name="sex" type="radio" id="nv" value="女" />   
			</div>
			<input type="button" value="注   册" class="submit-btn" id="registerBtn"/>
		</div>
	</div>
	</center>
</div>
</body>

<script type="text/javascript">
$("#goLogin").click(function(){
	window.location.href="<%=path1%>/touserlogin";
})
$("#registerBtn").click(function(){
	$.ajax({
		url:"userRegister",
		type:"post",
		data:{
			username:$("#username").val(),
			password:$("#password").val(),
			contact:$("#tel").val(),
			sex:$("input[name='sex']:checked").val()
		},
		success:function(result){
			if(result.code==1){
   			 layer.alert(result.sss, {icon: 1},function(){
   				 window.location.href="<%=request.getContextPath()%>/touserlogin";
   			 });
   		}else{
   			 layer.alert(result.sss, {icon: 2},function(){
   				window.location.reload();
   			 });
   		}
		}
	})
	
})
</script>
</html>