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
    <%
        String path1=request.getContextPath();
    %>
</head>
<body>
<div class="main">
    <div>
        <h4 class="page-title" style="display: inline-block" >车辆类型列表</h4>
        <a class="btn btn-info" href="<%=path1%>/catesAdd" >+类型新增</a>
    </div>

    
            <table class="table table-hover" id="tobody">
            </table>
    

</div>
</body>
<script>
$(function () {
    init();
});

function init() {
    $("#tobody").bootstrapTable({
        url: "<%=request.getContextPath()%>/findAllCatePage",
        method: 'get',
        striped: true,                      //是否显示行间隔色
        cache: false,                       //是否使用缓存，默认为true，所以一般情况下需要设置一下这个属性（*）
        pagination: true,                   //是否显示分页（*）
        sortable: false,                     //是否启用排序
        queryParams: function (params) {
            return {
                limit: params.limit, // 每页要显示的数据条数
                offset: params.offset // 每页显示数据的开始行号
            }
        },
        sidePagination: "server",           //分页方式：client客户端分页，server服务端分页（*）
        pageNumber: 1,                       //初始化加载第一页，默认第一页
        pageSize: 5,                       //每页的记录行数（*）
        pageList: [1,5,10],        //可供选择的每页的行数（*）
        strictSearch: true,
        //height:500,
        // showColumns: true,                  //是否显示所有的列
        // showRefresh: true,                  //是否显示刷新按钮
        minimumCountColumns: 2,             //最少允许的列数
        // clickToSelect: true,                //是否启用点击选中行
        // cardView: false,
        columns: [{
            field: 'catename',
            title: '类型名称',
            align: 'center'
        },{
            title: '操作',
            align:"center",
            formatter: function (value, row) {
                return '<button class="btn btn-info btn-sm" onclick="goupdate(\'' + row.cateid + '\')"><span class="glyphicon glyphicon-pencil" aria-hidden="true"></span></button>'+
                    '<button class="btn btn-danger btn-sm" onclick="del(\'' + row.cateid + '\')"><span class="glyphicon glyphicon-trash" aria-hidden="true"></span></button>';
            }
        }]
    });
}


function del(cateid){
    layer.confirm('确定要删除？', {
        btn: ['确定','取消'], //按钮
        icon:0
    }, function(){ // 点击确定后执行的功能
        // 发送ajax请求
        $.ajax({
        	url:"<%=request.getContextPath()%>/deleteCate?cateid="+cateid,
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
        })
    }, function(){ // 点击取消后后执行的函数
    });
}

</script>
</html>
