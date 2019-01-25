<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <jsp:include page="../static.jsp"></jsp:include>
    <%
    String path=request.getContextPath();
    %>
</head>
<body>
<div class="main">
    <div>
        <h4 class="page-title" style="display: inline-block">车辆品牌新增</h4>
    </div>
    <div class="panel">
        <div class="panel-body">
            <form class="form-horizontal" enctype="multipart/form-data">
                <div class="form-group">
                    <label for="title" class="col-sm-2 control-label">品牌名称</label>
                    <div class="col-sm-5">
                        <input type="text" class="form-control" id="title" >
                    </div>
                </div>
                <div class="form-group">
                    <label for="pic" class="col-sm-2 control-label">品牌图标</label>
                    <div class="col-sm-5">
                        <input type="file" class="form-control" id="pic">
                    </div>
                </div>
                <div class="form-group">
                    <div class="col-sm-offset-2 col-sm-10">
                        <button type="button" class="btn btn-info" onclick="addBrand()">保存</button>
                        <button type="reset" class="btn btn-danger">重置</button>
                    </div>
                </div>
            </form>
        </div>
    </div>

</div>
</body>
<script >
 function addBrand(){
	 layer.confirm('确定要保存？', {
         btn: ['确定','取消'], //按钮
         icon:0
     }, function(){ 
    	 // 点击确定后执行的功能
    	 var brandname=$("#title").val();
         var image=$("#pic").get(0).files[0];
         var formDate=new  FormData();
         formDate.append("brandname",brandname);
         formDate.append("file",image);
			$.ajax({
				url:"<%=path%>/addBrand",
				cache: false,
 	           type:'post',
 	           contentType: false, //不设置内容类型
 	           processData: false, //不处理数据
 	           data: formDate,
 	           success:function(result){
 	        		  if(result.code==1){
     	                 layer.alert(result.sss,{icon:1},function(){
     	                	 window.setTimeout("javascript:location.href='<%=path%>/brandsList'",1000);
     	                 });
     	               }else{
     	                  layer.alert(data.sss,{icon:2},function(){
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
