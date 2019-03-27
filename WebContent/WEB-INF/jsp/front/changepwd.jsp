<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<%
        pageContext.setAttribute("path",request.getContextPath());
String path1=request.getContextPath();
    %>
<jsp:include page="../back/static.jsp"></jsp:include>

<link rel="stylesheet" href="${path}/resources/front_resources/css/userinfo.css">
</head>
<body>
<center>
<form method="post" >
            <div class="modal-body" >
                        <table class="table-edit">
                            <tbody>
                                <tr>
                                <td class="t-edit-title">用户名</td>
                                    <td>
                                        <div class="form-box">
                                        <input type="hidden" value="${userss.usersid }" id="uId">
                                            <input type="text" class="form-input form-input-ms input-block form-input-radius" id="uName" value="${userss.username}" disabled="disabled"/>
                                        </div>
                                    </td>
                                    <td class="t-edit-title">原始密码</td>
                                    <td>
                                        <div class="form-box">
                                            <input type="password" class="form-input form-input-ms input-block form-input-radius" id="oldPwd" onblur="checkoldpwd()"/>
                                        <span id="message1" style="color: red;size: 10px"></span>
                                        </div>
                                    </td>
                                </tr>
                                <tr>
                                <td class="t-edit-title">新密码</td>
                                    <td>
                                        <div class="form-box">
                                            <input type="password" class="form-input form-input-ms input-block form-input-radius" id="newPwd" onchange="checkpwd1()"/>
                                        <span id="message2" style="color: red;size: 10px"></span>
                                        </div>
                                    </td>
                                </tr>
                            </tbody>
                        </table>
            </div>
            <div class="row" style="margin-left: 20px">
                <button type="button" class="btn btn-success btn-ms" id="saveup">提交</button>
                <button type="reset" class="btn btn-warning btn-ms" >重置</button>
            </div>
           </form>
</center>
<script type="text/javascript">


// 检查原始密码
function checkoldpwd(){
	 var usersid=$("#uId").val();
	 var password=$("#oldPwd").val();
	 if(password==""){
		 document.getElementById("message1").innerHTML="密码不能为空";
		 $("#oldPwd").focus();
		 document.getElementById("saveup").disabled=true;
	 }else{
		 $.ajax({
				url:"<%=request.getContextPath()%>/checkOldPwd",
				type:"post",
				data:{
					usersid:usersid,
					password:password
				},
				success:function(data){
					if(data.code==1){
						document.getElementById("message1").innerHTML=data.sss;
						document.getElementById("saveup").disabled=false;
					}else{
						document.getElementById("message1").innerHTML=data.sss;
						 $("#oldPwd").focus();
						 document.getElementById("saveup").disabled=true;
						
					}
				}
			
			}) 
	 }
	
}
// 检查两次输入的新密码是否一致
function checkpwd1(){
  var one=$("#newPwd").val();
  
   if(""==one ){
	  document.getElementById("message2").innerHTML="新密码不能为空";
	  $("#newPwd").focus();
	   document.getElementById("saveup").disabled=true;
	   
  }else if(one.length<=6){
	  document.getElementById("message2").innerHTML="新密码长度不能少于6位";
	  $("#newPwd").focus();
	  document.getElementById("saveup").disabled=true;
  }else{
	  document.getElementById("message2").innerHTML="";
	  document.getElementById("saveup").disabled=false;
  }
  
} 

$("#saveup").click(function(){
	/* checkoldpwd();
	checkpwd1(); */
	var usersid=$("#uId").val();
	 var password=$("#newPwd").val();
	if(""==$("#oldPwd").val() ){
		document.getElementById("message1").innerHTML="密码不能为空";
		//document.getElementById("message2").innerHTML="新密码不能为空";
		document.getElementById("saveup").disabled=true;
	}else{
		document.getElementById("saveup").disabled=false;
		$.ajax({
			url:"<%=request.getContextPath()%>/changePwd",
			type:"post",
			data:{
				usersid:usersid,
				password:password
			},
			success:function(result){
				if(result.code==1){
					layer.alert(result.sss, {icon: 1},function(){
	    				 window.location.href="<%=request.getContextPath()%>/touserinfo?usersid="+usersid;
	    			 });
				}else{
					layer.alert(result.sss, {icon: 2},function(){
	    				// window.location.href="<%=request.getContextPath()%>/touserinfo?usersid="+usersid;
						window.location.reload();
					});
				}
			}
		})
	}
			
	
})
</script>
</body>
</html>