<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<%
        pageContext.setAttribute("path",request.getContextPath());
    %>
<jsp:include page="../back/static.jsp"></jsp:include>

<link rel="stylesheet" href="${path}/resources/front_resources/css/userinfo.css">
</head>
<body>
<ul id="myTab" class="nav nav-tabs">
	<li class="active"><a href="#userinfo" data-toggle="tab"> 用户基本信息</a></li>
	<li><a href="#orderin" data-toggle="tab">未完成的订单</a></li>
	<li><a href="#orderout" data-toggle="tab">已完成的订单</a></li>
	<li><a href="#topic" data-toggle="tab">我的评价</a></li>
	<li class="active"><a href="#password" data-toggle="tab"> 修改密码</a></li>
</ul>
<div id="myTabContent" class="tab-content">
	<div class="tab-pane fade in active" id="userinfo">
		<form  method="post">
					<div class="modal-body">
								<table class="table-edit">
									<tbody>
										<tr>
											<td class="t-edit-title">用户名</td>
											<td>
											 <div class="form-box">
											 <input id="usersid" type="hidden" value="${userinfo.usersid }">
													<input id="username" class="form-input form-input-ms input-block form-input-radius"  value="${userinfo.username }" />
		                                        </div>
												</td>
											<td class="t-edit-title">真实姓名</td>
											<td>
												<div class="">
													<input id="realname" class="form-input form-input-ms input-block  form-input-radius"  value="${userinfo.realname }" />
		                                        </div>
											</td>
										</tr>

										<tr>

											<td class="t-edit-title">性别</td>
											<td>
												<div class="form-box">
	                                            <select id="sex"  class="form-input form-input-ms input-block form-input-radius " >
	                                                <option value="">请选择</option>
	                                                <option value="男" ${userinfo.sex =="男"?"selected":"" }>男</option>
	                                                <option value="女" ${userinfo.sex =="女"?"selected":"" }>女</option>
	                                            </select>
	                                        </div>
											</td>
											<td class="t-edit-title">出生日期</td>
											<td>
												<div class="form-box">
													<input id="birthday" class="form-input form-input-ms input-block form-input-radius"  value="${userinfo.birthday } " readonly="readonly"/>
												</div>
											</td>
										</tr>
										<tr>
											<td class="t-edit-title">证件号</td>
											<td>
												<div class="form-box">
													<input id="idcard" class="form-input form-input-ms input-block form-input-radius"  value=" ${userinfo.idcard }"/>
												</div>
											</td>
											<td class="t-edit-title">联系方式</td>
											<td>
												<div class="form-box">
													<input id="contact" class="form-input form-input-ms input-block form-input-radius"  value="${userinfo.contact } "/>
												</div>
											</td>

										</tr>
										<tr>
											<td class="t-edit-title">住址</td>
											<td colspan="3">
											<textarea id="address2" class="form-input form-input-ms input-block form-input-radius" >${userinfo.address2 } </textarea>
											</td>
										</tr>
									</tbody>
								</table>
							</div>
						
					<div style="width:auto;text-align:center">
						<button id="saveuser" type="submit" class="btn btn-success btn-ms">保存</button>
					</div>
				</form>
		
	</div>
	<div class="tab-pane fade" id="orderin">
		 <table id="order1">
    </table>
	</div>
	<div class="tab-pane fade" id="orderout">
		<table class="table" id="order2">
		</table>
	</div>
	<div class="tab-pane fade" id="topic">
		<table class="table">
		<tr><td>车辆图标</td><td></td></tr>
		<tr><td>车牌号</td><td></td></tr>
		<tr><td>出租价格(RMB/天)</td><td></td></tr>
		<tr><td>排量</td><td></td></tr>
		</table>
	</div>
	
	<div class="tab-pane fade" id="password">
		
	</div>
	
</div>
	<div class="modal fade" id="relet" tabindex="-1" role="dialog"
		aria-labelledby="myModalLabel" aria-hidden="true">
		<div class="modal-dialog" style="width: 1024px; height: 450px;">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal"
						aria-hidden="true">&times;</button>
					<h4 class="modal-title" id="myModalLabel">续租窗口</h4>
				</div>
				<form class="form-horizontal" >
					<input type="hidden" id="ordersid"> 
					<input type="hidden" id="theend">
						<div class="form-group">
								<label for="relettime" class="col-sm-2 control-label">续租日期</label>
								<div class="col-sm-6">
									<input type="text" class="form-control"  id="relettime" placeholder="选择日期">
								</div>
						</div>
					<div class="modal-footer">
						<button type="button" class="btn btn-success btn-ms" onclick="relet()">保存</button>
					</div>
				</form>
			</div>
			<!-- /.modal-content -->
		</div>
		<!-- /.modal -->
	</div>
</body>
<script>

$(function () {
	order1();
	order2();
});

function order1() {
    $("#order1").bootstrapTable({
        url: "<%=request.getContextPath()%>/findOrders1PageByusersid",
							method : 'get',
							striped : true, //是否显示行间隔色
							cache : false, //是否使用缓存，默认为true，所以一般情况下需要设置一下这个属性（*）
							pagination : true, //是否显示分页（*）
							sortable : false, //是否启用排序
							queryParams : function(params) {
								return {
									limit : params.limit, // 每页要显示的数据条数
									offset : params.offset, // 每页显示数据的开始行号
									usersid : $("#usersid").val()
								}
							},
							sidePagination : "server", //分页方式：client客户端分页，server服务端分页（*）
							pageNumber : 1, //初始化加载第一页，默认第一页
							pageSize : 5, //每页的记录行数（*）
							pageList : [ 1, 5, 10 ], //可供选择的每页的行数（*）
							strictSearch : true,
							columns : [
									{
										field : 'ordercode',
										title : '订单号',
										align : 'center'
									},
									{
										field : 'carno',
										title : '车牌号',
										align : 'center'
									},
									{
										field : 'username',
										title : '订单用户',
										align : 'center'
									},
									{
										field : 'thestart',
										title : '开始日期',
										align : 'center'

									},
									{
										field : 'theend',
										title : '结束日期',
										align : 'center'

									},
									{
										field : 'place',
										title : '取车地点',
										align : 'center'

									},
									{
										field : 'address',
										title : '还车地点',
										align : 'center'

									},
									{
										field : 'addtime',
										title : '预定日期',
										align : 'center'

									},
									{
										field : 'turnback',
										title : '是否还车',
										align : 'center',
										formatter : function(value, row) {
											if (row.turnback == "-1") {
												return "未还车";
											} else if (row.turnback == "1") {
												return "已还车";
											}
										}

									},
									{
										field : 'pay',
										title : '是否支付',
										align : 'center',
										formatter : function(value, row) {
											if (row.status == "-1") {
												return "未支付";
											} else if (row.status == "1") {
												return "已支付";
											}
										}

									},
									{
										title : '总价格(RMB)',
										align : 'center',
										formatter : function(value, row) {
											// 计算出租天数及价格
											var beginTime = new Date(
													(row.thestart).replace(
															/-/g, "/"));
											var endTime = new Date((row.theend)
													.replace(/-/g, "/"));
											var days = (endTime.getTime() - beginTime
													.getTime())
													/ (3600 * 24 * 1000);
											return days * (row.price);
										}

									},
									{
										title : '操作',
										align : "center",
										formatter : function(value, row) {
											if (row.turnback == '-1') {
												if (row.pay == '-1') {
													return '<button class="btn btn-info btn-sm" onclick="backcar(\''
															+ row.ordersid
															+ '\',\''
															+ row.address
															+ '\')">还车</button>'
															+ '<button class="btn btn-info btn-sm" onclick="torelet(\''
															+ row.ordersid
															+ '\',\''
															+ row.theend
															+ '\')">续租</button>';
												}
											} else if (row.turnback == '1') {
												if (row.pay == '-1') {
													return '<button class="btn btn-info btn-sm" onclick="showInfo(\''
															+ row.ordersid
															+ '\')">结算</button>';
												}
											}
										}
									} ]
						});
	}

	//还车功能

	function backcar(ordersid, address) {
		var usersid = $('#usersid').val();
		layer.confirm('确定在[-' + address + '-]还车？',
						{
			            btn : [ '确定', '取消' ], //按钮
						icon : 0
						},function() { // 点击确定后执行的功能
							// 发送ajax请求
							$.ajax({
								url : "<%=request.getContextPath()%>/backcar?ordersid="+ordersid,
	            	            type:"post",
				            	success:function(result){
				            		if(result.code==1){
				            			 layer.alert(result.sss, {icon: 1},function(){
				            				 window.location.href="<%=request.getContextPath()%>/touserinfo?usersid="+usersid;
				            			 });
				            		}else{
				            			 layer.alert(result.sss, {icon: 2},function(){
				            				 window.location.href="<%=request.getContextPath()%>/touserinfo?usersid="+usersid;

				            			 });
				            		}
				            	}
				            })
				        });
		
		
	}
	
	function torelet(ordersid,theend){
		$("#relet").modal("show");
		$("#ordersid").val(ordersid);
		$("#theend").val(theend);
		
	}
	
	function relet(){
		var usersid = $('#usersid').val();
		var ordersid=$("#ordersid").val();
		var relettime=$("#relettime").val();
		layer.confirm('确定续租？',
				{
	            btn : [ '确定', '取消' ], //按钮
				icon : 0
				},function() { // 点击确定后执行的功能
					// 发送ajax请求
					$.ajax({
						url : "<%=request.getContextPath()%>/relet",
        	            type:"post",
        	            data:{
        	            	ordersid:ordersid,
        	            	theend:relettime
        	            },
		            	success:function(result){
		            		if(result.code==1){
		            			 layer.alert(result.sss, {icon: 1},function(){
		            				 window.location.href="<%=request.getContextPath()%>/touserinfo?usersid="+usersid;
		            			 });
		            		}else{
		            			 layer.alert(result.sss, {icon: 2},function(){
		            				 //window.location.href="<%=request.getContextPath()%>/touserinfo?usersid="+usersid;
		            				$("#relet").modal("hide");
		            				window.location.reload();
		            			 });
		            		}
		            	}
		            })
		        },function(){
		        	
		        });
	}

function order2() {
    $("#order2").bootstrapTable({
        url: "<%=request.getContextPath()%>/findOrders2PageByusersid",
        method: 'get',
        striped: true,                      //是否显示行间隔色
        cache: false,                       //是否使用缓存，默认为true，所以一般情况下需要设置一下这个属性（*）
        pagination: true,                   //是否显示分页（*）
        sortable: false,                     //是否启用排序
        queryParams: function (params) {
            return {
                limit: params.limit, // 每页要显示的数据条数
                offset: params.offset, // 每页显示数据的开始行号
           		usersid:$("#usersid").val()
            }
        },
        sidePagination: "server",           //分页方式：client客户端分页，server服务端分页（*）
        pageNumber: 1,                       //初始化加载第一页，默认第一页
        pageSize: 5,                       //每页的记录行数（*）
        pageList: [1,5,10],        //可供选择的每页的行数（*）
        strictSearch: true,
        columns: [
        	{
            field: 'ordercode',
            title: '订单号',
            align: 'center'
        }, {
            field: 'carno',
            title: '车牌号',
            align: 'center'
        }, {
            field: 'username',
            title: '订单用户',
            align: 'center'
        }, {
            field: 'thestart',
            title: '开始日期',
            align: 'center'

        }, {
            field: 'theend',
            title: '结束日期',
            align: 'center'

        }, {
            field: 'place',
            title: '取车地点',
            align: 'center'

            }, {
            field: 'address',
            title: '还车地点',
            align: 'center'

        },{
            field: 'addtime',
            title: '预定日期',
            align: 'center'
            	  
        },{
            field: 'turnback',
            title: '是否还车',
            align: 'center',
            formatter:function(value,row){
      		   if(row.turnback=="1"){
      			return "已还车";
      		   }
      	  }

        },{
            field: 'pay',
            title: '是否支付',
            align: 'center',
            formatter:function(value,row){
      		 if(row.status=="1"){
      			return "已支付";
      		  }
      	  }

        },{
            title: '总价格(RMB)',
            align: 'center',
            formatter:function(value,row){
            	// 计算出租天数及价格
            	var beginTime = new Date((row.thestart).replace(/-/g, "/"));
        		var endTime=new Date((row.theend).replace(/-/g,"/"));
        		var days = (endTime.getTime() - beginTime.getTime())/(3600*24*1000);
        		return days*(row.price);
            }

        }]
    });
}


$("#saveuser").click(function () {
	var usersid=$('#usersid').val();
	$.ajax({
		url:"${path}/frontupdateuser",
		type:"post",
		data:{
			usersid:$("#usersid").val(),
			username:$("#username").val(),
			realname:$("#realname").val(),
			sex:$("#sex").val(),
			birthday:$("#birthday").val(),
			idcard:$("#idcard").val(),
			contact:$("#contact").val(),
			address2:$("#address2").val()
		},
		success:function(result){
			if(result.code==1){
				alert(result.sss);
               window.setTimeout("javascript:location.href='<%=request.getContextPath()%>/touserinfo?usersid='+usersid ",1500);
            }else {
                alert(result.sss);
                window.setTimeout("javascript:location.href='<%=request.getContextPath()%>/touserinfo?usersid='+usersid ",1500);
            }
		}
		
	})
})


$("#birthday").datetimepicker({
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
$("#relettime").datetimepicker({
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