<%--
  Created by IntelliJ IDEA.
  User: zw-pc
  Date: 2019/1/11
  Time: 12:42
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <jsp:include page="../static.jsp"></jsp:include>
    <%
        String path1 = request.getContextPath();
    %>
</head>
<body>
<div class="main">
    <div>
        <h4 class="page-title" style="display: inline-block">订单评价列表</h4>
    </div>
            <table id="tobody" >
            </table>
</div>
</body>
<script type="text/javascript">
    $(function () {
        init();  //初始化表格并加载数据
    });

    // 删除操作
    function del(topicid) {
        layer.confirm('删除编号【'+topicid+'】的评论吗？', {
            btn: ['确定','取消'], //按钮
            icon:0
        }, function(){ // 点击确定后执行的功能
            $.ajax({
                url:'<%=path1%>/deltopic',
                type:'post',
                data:{
                    topicid:topicid
               },
                success:function (data) {
                    if(data.code==1){
                        layer.msg(data.sss, {icon: 1});
                        window.setTimeout("javascript:location.reload()",1500);
                    }else{
                        layer.msg(data.sss, {icon: 2});
                        window.setTimeout("javascript:location.reload()",1500);
                    }
                }
            });
           // alert("jndsjksd");
        });
    }
    function init() {
        $("#tobody").bootstrapTable({
            url: "<%=path1%>/findAllPage",
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
            // minimumCountColumns: 2,             //最少允许的列数
            // clickToSelect: true,                //是否启用点击选中行
            // cardView: false,
            columns: [{
                field: 'carno',
                title: '车牌号',
                align: 'center',
                width:'15%'

            }, {
                field: 'username',
                title: '用户',
                align: 'center',
                width:'15%'

            }, {
                field: 'num',
                title: '评价指数',
                align: 'center',
                width:'15%',
                formatter: function (value) {
                    return '<img src="<%=path1%>/resources/back_resources/assets/img/stars'+value+'.gif" style:"height:20px">';
                }
            }, {
                field: 'contents',
                title: '评价详情',
                align: 'center',
                width:'25%'

            }, {
                field: 'addtime',
                title: '评价时间',
                align: 'center',
                width:'15%'

            }, {
                title: '操作',
                align: 'center',
                width:'15%',
                formatter: function (value, row) {
                    return '<button class="btn btn-danger btn-sm" onclick="del(\'' + row.topicid + '\')"><span class="glyphicon glyphicon-trash" aria-hidden="true"></span></button>';
                }
            }]
        });
    }
</script>
</html>
