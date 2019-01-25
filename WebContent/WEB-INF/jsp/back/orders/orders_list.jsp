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
        <h3 class="page-title" style="display: inline-block" >车辆订单列表</h3>
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
        url: "<%=request.getContextPath()%>/findAllOrdersPage",
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
            field: 'status',
            title: '订单状态',
            align: 'center'

        },{
            title: '总价格(RMB)',
            align: 'center',
            formatter:function(value,row){
            	var days=getDays(row.thestart,row.theend);
            	return days*(row.price); 
            }

        },{
            title: '操作',
            align:"center",
            formatter: function (value, row) {
                return '<button class="btn btn-info btn-sm" onclick="showInfo(\'' + row.ordersid + '\')"><span class="glyphicon glyphicon-eye-open" aria-hidden="true"></span></button>';
            }
        }]
    });
}

	function getDays(begin,end){ 
		var beginTime = new Date(begin.replace(/-/g, "/"));
		var endTime=new Date(end.replace(/-/g,"/"));
		var days = (endTime.getTime() - beginTime.getTime())/(3600*24*1000); 
		return days; 
		}
	
	
	function showInfo(ordersid){
		layer.open({
			  type: 2, //Layer提供了5种层类型。可传入的值有：0（信息框，默认）1（页面层）2（iframe层）3（加载层）4（tips层）,
			  closeBtn: 1, //关闭按钮是否显示 1显示0不显示
			  shade:0.1, //遮罩层透明度
			  shadeClose:true,
			  area:['850px','500px'], //弹出层宽高
			  title:'订单详情',//弹出层标题
			  content:'<%=request.getContextPath()%>/findByOrdersid?ordersid='+ordersid //这里content是一个URL，如果你不想让iframe出现滚动条，你还可以content: ['http://sentsin.com', 'no']
			});
	}

</script>
</html>
