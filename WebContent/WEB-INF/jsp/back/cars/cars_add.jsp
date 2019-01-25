<%@ page pageEncoding="UTF-8" contentType="text/html;charset=UTF-8" language="java" %>
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
        <h4 class="page-title" >车辆新增</h4>
    </div>
    <div class="panel">
        <div class="panel-body">
            <form class="form-horizontal" method="post" enctype="multipart/form-data">
                <div class="form-group">
                    <label for="num" class="col-sm-2 control-label">车牌号</label>
                    <div class="col-sm-5">
                        <input type="text" class="form-control" id="num" >
                    </div>
                </div>
                <div class="form-group">
                    <label for="pic" class="col-sm-2 control-label">图标</label>
                    <div class="col-sm-5">
                        <img alt="" id="portrait" src="" style="display:none; width: 180px;height: 140px" />
                        <input type="file" class="form-control" name="file" id="pic" onchange="showPreview(this)">
                    </div>
                </div>
                <div class="form-group">
                    <label for="cate" class="col-sm-2 control-label">车辆类型</label>
                    <div class="col-sm-5">
                        <select id="cate"></select>
                    </div>
                </div>
                <div class="form-group">
                    <label for="brands" class="col-sm-2 control-label">车辆品牌</label>
                    <div class="col-sm-5">
                        <select id="brands"></select>
                    </div>
                </div>
                <div class="form-group">
                    <label for="price" class="col-sm-2 control-label">出租价位</label>
                    <div class="col-sm-5">
                        <input type="text" class="form-control" id="price">
                    </div>
                </div>
                <div class="form-group">
                    <label for="color" class="col-sm-2 control-label">车辆颜色</label>
                    <div class="col-sm-5">
                        <input type="text" class="form-control" id="color">
                    </div>
                </div>
                <div class="form-group">
                    <label for="degree" class="col-sm-2 control-label">新旧程度</label>
                    <div class="col-sm-5">
                        <input type="text" class="form-control" id="degree">
                    </div>
                </div>
                <div class="form-group">
                    <label for="pailiang" class="col-sm-2 control-label">排量</label>
                    <div class="col-sm-5">
                        <input type="text" class="form-control" id="pailiang">
                    </div>
                </div>
                <div class="form-group">
                    <label for="special" class="col-sm-2 control-label">是否特价</label>
                    <div class="col-sm-5">
                        <select id="special">
                            <option value="是" aria-checked="true">是</option>
                            <option value="否">否</option>
                        </select>
                    </div>
                </div>
                <div class="form-group">
                    <label for="recommend" class="col-sm-2 control-label">是否推荐</label>
                    <div class="col-sm-5">
                        <select id="recommend">
                            <option value="是" aria-checked="true">是</option>
                            <option value="否">否</option>
                        </select>
                    </div>
                </div>
                <div class="form-group">
                    <label for="content" class="col-sm-2 control-label">简单描述</label>
                    <div class="col-sm-5">
                        <textarea id="content" rows="4" style="width: 200px" cols="100" ></textarea>
                    </div>
                </div>
                <div class="form-group">
                    <div class="col-sm-offset-2 col-sm-10">
                        <button type="button" class="btn btn-info" onclick="save()">保存</button>
                        <button type="reset" class="btn btn-danger">重置</button>
                    </div>
                </div>
            </form>
        </div>
    </div>

</div>
</body>
<script>

    $(function () {
        cate();
        brand();
    });
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

    function save() {
        layer.confirm('确定要保存？', {
            btn: ['确定','取消'], //按钮
            icon:0
        }, function(){ // 点击确定后执行的功能

            var formData=new FormData();
            var carno=$("#num").val();
            var file=$("#pic").get(0).files[0];
            var cateid=$("#cate").val();
            var brandid=$("#brands").val();
            var colour=$("#color").val();
            var price =$("#price").val();
            var degree=$("#degree").val();
            var displacement=$("#pailiang").val();
            var special=$("#special").val();
            var recommend=$("#recommend").val();
            var contents=$("#content").val();

        formData.append("carno",carno);
        formData.append("file",file);
        formData.append("cateid",cateid);
        formData.append("brandid",brandid);
        formData.append("colour",colour);
        formData.append("price",price);
        formData.append("degree",degree);
        formData.append("displacement",displacement);
        formData.append("special",special);
        formData.append("recommend",recommend);
        formData.append("contents",contents);
            // 发送ajax请求
            $.ajax({
                url:"<%=path%>/addCars",
                type: "POST",
                cache: false,
                contentType: false, //不设置内容类型
                processData: false, //不处理数据
                data: formData,
                success:function (data) {
                    if(data.code==1){
                        layer.alert(data.sss,{icon:1},function(){
                        	window.setTimeout("javascript:location.href='<%=path%>/carsList'",1000);
                        });
                    }else{
                        layer.alert(data.sss,{icon:2},function(){
                        	 window.setTimeout("javascript:location.reload()",1000);
                        });
                    }
                }
            });
        },function () {
            // 点击取消后
        });
    }



    function cate() {
        var add = document.getElementById("cate");

        var selectStr ="<option value=''>全部</option>";
        $.get("<%=request.getContextPath()%>/AllCateName",
            function (data) {
                // var jsonArray = $.parseJSON(data);
                 for(var temp in data)
                {
                    selectStr+='<option value="'+data[temp].cateid+'">'+data[temp].catename+'</option>';
                }
                add.innerHTML=selectStr;

            });
    }
    function brand() {
        var add = document.getElementById("brands");

        var selectStr ="<option value=''>全部</option>";
        $.get("<%=request.getContextPath()%>/AllBrandName",
            function (data) {
               // var jsonArray = $.parseJSON(data);
                for(var temp in data)
                {
                    selectStr+='<option value="'+data[temp].brandid+'">'+data[temp].brandname+'</option>';
                }
                add.innerHTML=selectStr;

            });
    }


</script>
</html>
