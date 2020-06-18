<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="/templates/common/init.jsp" %>

<t:override name="title">用户登录</t:override>

<t:override name="body">
    <div class="col-md-4">
        <form method="post" action="${ctx}/user/login">
            <div class="form-group">
                <label class="control-label" for="input-username">用户名</label>
                <input class="form-control" type="text" id="input-username" name="username">
            </div>
            <div class="form-group">
                <label class="control-label" for="input-password">密码</label>
                <input class="form-control" type="password" id="input-password" name="username">
            </div>
            <button class="btn btn-primary" type="submit">登录</button>
            <a class="btn btn-default" href="${ctx}/templates/user/register.jsp">注册</a>
        </form>
    </div>
</t:override>

<%@include file="/templates/common/base.jsp" %>