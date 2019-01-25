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
                        <input type="hidden" id="brandid" value="${brand.brandid}">
                        <input type="text"  class="form-control" id="brandname" value="${brand.brandname}">
                    </div>
                </div>
                <div class="form-group">
                    <label for="pic" class="col-sm-2 control-label">品牌图标</label>
                    <div class="col-sm-5">
                        <img alt="" id="portrait" src="<%=request.getContextPath()%>/${brand.image}" style="width: 180px;height: 140px" />
                        <input type="file" name="file" class="form-control" id="pic" onchange="showPreview(this)">
                    </div>
                </div>
                <div class="form-group">
                    <div class="col-sm-offset-2 col-sm-10">
                        <button type="button" class="btn btn-info" onclick="updatebrand()">保存</button>
                        <button type="reset" class="btn btn-danger">重置</button>
                    </div>
                </div>
            </form>
        </div>
    </div>

</div>
</body>
<script>
    // 图片预览功能
    function showPreview() {
        var file =  document.getElementById('pic').files[0];
        if(window.FileReader) {
            var fr = new FileReader();
            console.log(fr);
            var portrait = document.getElementById('portrait');
            fr.onloadend = function(e) {
                portrait.src = e.target.result;
            };
            fr.readAsDataURL(file);
            portrait.style.display = 'block';
        }
    }
  
    	
    	function updatebrand(){
    		 var brandid=$("#brandid").val();
    	       var brandname=$("#brandname").val();
    	       var image=$("#pic").get(0).files[0];
    	       var formDate=new FormData();
    	       formDate.append("brandid",brandid);
    	       formDate.append("brandname",brandname);
    	       formDate.append("file",image);
    	       $.ajax({
    	           url:'<%=request.getContextPath()%>/updateBrandById',
    	           cache: false,
    	           type:'post',
    	           contentType: false, //不设置内容类型
    	           processData: false, //不处理数据
    	           data: formDate,
    	           success:function (result) {
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
    	   
    	}
       
</script>
</html>
