<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title></title>
<%
	pageContext.setAttribute("path", request.getContextPath());
%>
<link rel="stylesheet" href="${path}/resources/front_resources/css/userinfo.css">
<link rel="stylesheet" href="${path}/resources/front_resources/css/zerogrid.css">
<link rel="stylesheet" href="${path}/resources/front_resources/css/style.css">
<link rel="stylesheet" href="${path}/resources/front_resources/css/responsiveslides.css">
<link rel="stylesheet" href="${path}/resources/back_resources/assets/vendor/bootstrap/css/bootstrap.min.css">


</head>
<jsp:include page="../back/static.jsp"></jsp:include>
<body>
<input type="hidden" id="usersid" value="${users.usersid }">
<input type="hidden" id="carsid" value="${oneCar.carsid }">
<section id="container">
		<div class="wrap-container clearfix">
			<div id="main-content">
				<div class="wrap-box" style="background: #fff; box-shadow: 2px 2px 5px 0px rgba(0,0,0,0.3);"><!--Start Box-->
					<div class="zerogrid">
						<div class="header">
							<h1 class="price">汽车详情</h1>
						</div>	
						<div class="row">
							<div class="col-2-3">
								<div class="wrap-col">
									<div class="slider">
										<!-- Slideshow -->
										<div class="callbacks_container">
											<ul class="rslides" id="slider">
													<img src="${path }/${oneCar.image}" alt="">
											</ul>
										</div>
										<div class="clear"></div>
									</div>
								</div>
							</div>
							<div class="col-1-3">
								<div class="wrap-col">
									<ul class="specs">
										<li><strong>车牌号</strong> <span>${oneCar.carno}</span></li>
										<li><strong>车辆类型</strong> <span>${oneCar.catename}</span></li>
										<li><strong>车辆品牌</strong> <span>${oneCar.brandname}</span></li>
										<li><strong>颜色</strong> <span>${oneCar.colour}</span></li>
										<li><strong>成色</strong> <span>${oneCar.degree}</span></li>
										<li><strong>排量</strong> <span>${oneCar.displacement}</span></li>
										<li><strong>租金/天</strong> <span>${oneCar.price}&nbsp;RMB</span></li>
									</ul>
								</div>
								<div class="clear"></div>
								<h4 class="price"><strong>简介</strong></h4>
									<p>${oneCar.contents}</p>
									<button type="button" class="btn btn-success" onclick="add();">预定</button>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
</section>
<!--下单窗口  -->
<div class="modal fade" id="orderadd" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
    <div class="modal-dialog" style="width: 720px; height: 450px;">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">
                    &times;
                </button>
                <h4 class="modal-title" id="myModalLabel">
                    	用户下单
                </h4>
            </div>
            <form method="post">
            <div class="modal-body" >
                        
                        <table class="table-edit">
                            <tbody>
                                <tr>
                                <td class="t-edit-title">开始时间</td>
                                    <td>
                                        <div class="form-box">
                                            <input type="text" class="form-input form-input-ms input-block form-input-radius" id="kaishi" readonly="readonly"/>
                                        </div>
                                    </td>
                                    <td class="t-edit-title">结束时间</td>
                                    <td>
                                        <div class="form-box">
                                            <input type="text" class="form-input form-input-ms input-block form-input-radius" id="jieshu" readonly="readonly"/>
                                        </div>
                                    </td>
                                </tr>
                                <tr>
                                <td class="t-edit-title">取车地点</td>
                                    <td>
                                        <div class="form-box">
                                            <input type="text" class="form-input form-input-ms input-block form-input-radius" id="place" />
                                        </div>
                                    </td>
                                    <td class="t-edit-title">还车地点</td>
                                    <td>
                                        <div class="form-box">
                                            <input type="text" class="form-input form-input-ms input-block form-input-radius" id="address" />
                                        </div>
                                    </td>
                                </tr>
                            </tbody>
                        </table>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-success btn-ms" id="save">保存</button>
                <button type="button" class="btn btn-warning btn-ms" data-dismiss="modal">关闭</button>
            </div>
            </form>
        </div><!-- /.modal-content -->
    </div><!-- /.modal -->
</div>
<script>
function add(){
	if(${null == users.usersid}){
		 layer.alert("请你先登录！", {icon: 2},function(){
			 window.location.href="<%=request.getContextPath()%>/touserlogin";
			 });
	}else{ 
		$("#orderadd").modal("show");
	 }
}


</script>
</body>
<script type="text/javascript">
$("#save").click(function(){
	layer.confirm("确定下单吗？",
			{
		     title:"提示",
			 btn:["确定","取消"],
			 icon:0
			},function(){
				$.ajax({
					url:"<%=request.getContextPath()%>/saveorder",
					type:"POST",
					data:{
						place:$("#place").val(),
						address:$("#address").val(),
						thestart:$("#kaishi").val(),
						theend:$("#jieshu").val(),
						carsid:$("#carsid").val(),
						usersid:$("#usersid").val()
					},
					success:function(result){
						if(result.code==1){
							layer.alert(result.sss, {icon: 1},function(){
	            				 window.location.href="<%=request.getContextPath()%>/touserinfo?usersid="+$("#usersid").val();
	            			 });
						}else{
							layer.alert(result.sss, {icon: 2},function(){
								window.location.reload();
							});
						}
					}
				});
			},function(){});
	
});


$("#kaishi").datetimepicker({
	autoclose: true,//选中之后自动隐藏日期选择框 
todayBtn: true,//今日按钮 
bootcssVer:3,//显示左右箭头
startView:2, 
maxView: 3,
minView:2,
forceParse: 0,
format: "yyyy-mm-dd",
todayHighlight: 1,
viewSelect:"decade",
language: "zh-CN",
});
$("#jieshu").datetimepicker({
	autoclose: true,//选中之后自动隐藏日期选择框 
todayBtn: true,//今日按钮 
bootcssVer:3,//显示左右箭头
startView:2, 
maxView: 3,
minView:2,
forceParse: 0,
format: "yyyy-mm-dd",
todayHighlight: 1,
viewSelect:"decade",
language: "zh-CN",
});

</script>
</html>