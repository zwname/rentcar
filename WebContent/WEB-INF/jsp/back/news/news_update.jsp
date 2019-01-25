<%--
  Created by IntelliJ IDEA.
  User: zw-pc
  Date: 2019/1/11
  Time: 12:39
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <jsp:include page="../static.jsp"></jsp:include>
</head>
<body>
<div class="main">
    <div>
        <h4 class="page-title" >新闻公告修改</h4>
    </div>
        <div class="panel">
        <div class="panel-body">
            <form class="form-horizontal">
                <div class="form-group">
                    <label for="title" class="col-sm-2 control-label">标题</label>
                    <div class="col-sm-5">
                    <input type="hidden" id="articleid" value="${article.articleid }">
                        <input type="text" class="form-control" id="title" value="${article.title }">
                    </div>
                </div>
                <div class="form-group">
                    <label for="content" class="col-sm-2 control-label">内容</label>
                    <div class="col-sm-5">
                        <textarea  class="form-control" id="content" rows="4" >${article.contents }</textarea>
                    </div>
                </div>
                <div class="form-group">
                    <div class="col-sm-offset-2 col-sm-10">
                        <button type="button"  class="btn btn-info" onclick="updateArticle()">提交</button>
                        <button type="reset" class="btn btn-danger">重置</button>
                    </div>
                </div>
            </form>
        </div>
    </div>
    </div>
</body>
<script >
	function updateArticle(){
		//alert("hbdchjbsjb");
		 layer.confirm('确定要提交？', {
	         btn: ['确定','取消'], //按钮
	         icon:0
	     }, function(){ // 点击确定后执行的功能
				$.ajax({
					url:"<%=request.getContextPath()%>/updateArticle",
					type:"POST",
					data:{
						articleid:$("#articleid").val(),
						title:$("#title").val(),
						contents:$("#content").val(),
					},
					success:function(result){
						if(result.code==1){
							 layer.alert(result.sss, {icon: 1},function(){
								 window.setTimeout("javascript:location.href='<%=request.getContextPath()%>/newsList'",1000);
							 });
						}else{
							layer.alert(result.sss,{icon:2},function(){
								window.setTimeout("javascript:location.reload()",1000);
							});
						}
					}
				});
	      }, function(){ // 点击取消后后执行的函数
	    	  window.setTimeout("javascript:location.reload()",1000);
	     }); 
	}
</script>
</html>
