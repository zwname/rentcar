<%--
  Created by IntelliJ IDEA.
  User: zw-pc
  Date: 2019/1/11
  Time: 11:42
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <jsp:include page="../static.jsp"></jsp:include>
</head>
<body>
<div class="main container">
    <div>
        <h4 class="page-title">密码修改</h4>
    </div>
    <div class="panel">
        <div class="panel-body">
            <form class="form-horizontal">
                <div class="form-group">
                    <label for="oldpwd" class="col-sm-2 control-label">旧密码</label>
                    <div class="col-sm-5">
                        <input type="text" class="form-control" id="oldpwd">
                    </div>
                </div>
                <div class="form-group">
                    <label for="newpwd" class="col-sm-2 control-label">新密码</label>
                    <div class="col-sm-5">
                        <input type="text" class="form-control" id="newpwd">
                    </div>
                </div>
                <div class="form-group">
                    <label for="checknewpwd" class="col-sm-2 control-label">确认密码</label>
                    <div class="col-sm-5">
                        <input type="text" class="form-control" id="checknewpwd">
                    </div>
                </div>
                <div class="form-group">
                    <div class="col-sm-offset-2 col-sm-10">
                        <button type="submit" class="btn btn-info">保存</button>
                        <button type="reset" class="btn btn-danger">重置</button>
                    </div>
                </div>
            </form>
        </div>
    </div>

</div>
</body>
</html>
