<%--
  Created by IntelliJ IDEA.
  User: zw-pc
  Date: 2019/1/11
  Time: 12:41
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<html>
<head>
<title>Title</title>
<jsp:include page="../static.jsp"></jsp:include>
</head>
<body>
	<div class="main">
		<div>
			<h4 class="page-title" style="display: inline-block">注册用户列表</h4>
		</div>
		
				<table class="table table-hover" id="tobody">
				</table>
		

		<div class="modal fade" tabindex="-1" id="updatewin" role="dialog"
			aria-labelledby="gridSystemModalLabel">
			<div class="modal-dialog" role="document">
				<div class="modal-content">
					<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal"
							aria-label="Close">
							<span aria-hidden="true">&times;</span>
						</button>
						<h4 class="modal-title" id="gridSystemModalLabel">Modal title</h4>
					</div>
					<div class="modal-body">
						<form class="form-horizontal">
							<div class="form-group">
								<label for="title" class="col-sm-2 control-label">标题</label>
								<div class="col-sm-8">
									<input type="text" class="form-control" id="title">
								</div>
							</div>
							<div class="form-group">
								<label for="content" class="col-sm-2 control-label">内容</label>
								<div class="col-sm-8">
									<textarea class="form-control" id="content" rows="4"></textarea>
								</div>
							</div>
						</form>
					</div>
					<div class="modal-footer">
						<button type="button" class="btn btn-primary" onclick="update()">保存</button>
						<button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
					</div>
				</div>
				<!-- /.modal-content -->
			</div>
			<!-- /.modal-dialog -->
		</div>
		<!-- /.modal -->

	</div>
</body>
<script>

		$(function(){
			init();
		});
		
			function init() {
		        $("#tobody").bootstrapTable({
		            url: "<%=request.getContextPath()%>/findAllUsersPage",
								method : 'get',
								striped : true, //是否显示行间隔色
								cache : false, //是否使用缓存，默认为true，所以一般情况下需要设置一下这个属性（*）
								pagination : true, //是否显示分页（*）
								sortable : false, //是否启用排序
								queryParams : function(params) {
									return {
										limit : params.limit, // 每页要显示的数据条数
										offset : params.offset
									// 每页显示数据的开始行号
									}
								},
								sidePagination : "server", //分页方式：client客户端分页，server服务端分页（*）
								pageNumber : 1, //初始化加载第一页，默认第一页
								pageSize : 5, //每页的记录行数（*）
								pageList : [ 1, 5, 10 ], //可供选择的每页的行数（*）
								strictSearch : true,
								//height:500,
								// showColumns: true,                  //是否显示所有的列
								// showRefresh: true,                  //是否显示刷新按钮
								// minimumCountColumns: 2,             //最少允许的列数
								// clickToSelect: true,                //是否启用点击选中行
								// cardView: false,
								columns : [
										{
											field : 'username',
											title : '用户名',
											align : 'center'

										},
										{
											field : 'realname',
											title : '真实姓名',
											align : 'center'

										},
										{
											field : 'sex',
											title : '性别',
											align : 'center'
										},
										{
											field : 'idcard',
											title : '证件号',
											align : 'center'

										},
										{
											field : 'contact',
											title : '联系方式',
											align : 'center'

										},
										{
											field : 'address2',
											title : '住址',
											align : 'center'
										},
										{
											title : '操作',
											align : 'center',
											formatter : function(value,row) {
												return  '<button class="btn btn-danger btn-sm" onclick="del(\''+ row.usersid+ '\')"><span class="glyphicon glyphicon-trash" aria-hidden="true"></span></button>';
											}
										} ]
							});
		}
	
		
	function updateWin() {

	}

	function del(usersid) {
		layer.confirm('刪除该用户？', {
			btn : [ '确定', '取消' ], //按钮
			icon : 0
		}, function() { // 点击确定后执行的功能
			$.ajax({
				url:"<%=request.getContextPath()%>/deleteUsers?usersid="+usersid,
				type:"post",
					success:function(result){
	            		if(result.code==1){
	            			 layer.alert(result.sss, {icon: 1},function(){
	            				 window.location.reload();
	            			 });
	            		}else{
	            			 layer.alert(result.sss, {icon: 2},function(){
	            				 window.location.reload();
	            			 });
	            		}
	            	}
			});
		}, function() { // 点击取消后执行的函数
		});
	}

/* 	function deleteNews() {
		layer.confirm('确定要删除？', {
			btn : [ '确定', '取消' ], //按钮
			icon : 0
		}, function() { // 点击确定后执行的功能
			// 发送ajax请求
			layer.alert("删除成功！", {
				icon : 1
			});
		}, function() { // 点击取消后后执行的函数
			$("#updatewin").modal("hide");
		});
	} */
</script>
</html>
