<%--
  Created by IntelliJ IDEA.
  User: zw-pc
  Date: 2019/1/11
  Time: 12:47
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
        <h4 class="page-title" style="display: inline-block">车辆类型新增</h4>
    </div>
    <div class="panel">
        <div class="panel-body">
            <form class="form-horizontal" enctype="multipart/form-data">
                <div class="form-group">
                    <label for="type" class="col-sm-2 control-label">类型名称</label>
                    <div class="col-sm-5">
                        <input type="text" class="form-control" id="type" >
                    </div>
                </div>
                <div class="form-group">
                    <div class="col-sm-offset-2 col-sm-10">
                        <button type="button" class="btn btn-info" onclick=" addCate()">保存</button>
                        <button type="reset" class="btn btn-danger">重置</button>
                    </div>
                </div>
            </form>
        </div>
    </div>

</div>
</body>
<script >
function addCate(){
	layer.confirm('确定要保存？', {
        btn: ['确定','取消'], //按钮
        icon:0
    }, function(){ 
   	 // 点击确定后执行的功能
			$.ajax({
				url:"<%=request.getContextPath()%>/addCate",
				cache: false,
	           type:'post',
	           data: {
	        	   catename:$("#type").val()
	           },
	           success:function(result){
	        		  if(result.code==1){
    	                 layer.alert(result.sss,{icon:1},function(){
    	                	 window.setTimeout("javascript:location.href='<%=request.getContextPath()%>/catesList'",1000);
    	                 });
    	               }else{
    	                  layer.alert(result.sss,{icon:2},function(){
    	                	  window.setTimeout("javascript:location.reload()",1000);
    	                  });
    	               }
	           }
			});
    }, function(){ 
   	 // 点击取消后后执行的函数
    });
}
</script>
</html>
