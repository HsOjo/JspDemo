<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%--@elvariable id="user" type="entity.User"--%>

<div class="form-group">
    <label for="username" class="col-sm-2 control-label">用户名：</label>
    <div class="col-sm-10">
        <input type="text" name="username" id="username" class="form-control" value="${user.username}"/>
    </div>
</div>
<div class="form-group">
    <label for="password" class="col-sm-2 control-label">密码：</label>
    <div class="col-sm-10">
        <input type="password" name="password" id="password" class="form-control"/>
    </div>
</div>
<div class="form-group">
    <label for="email" class="col-sm-2 control-label">邮箱：</label>
    <div class="col-sm-10">
        <input type="email" name="email" id="email" class="form-control" value="${user.email}"/>
    </div>
</div>
<div class="form-group">
    <label for="phone" class="col-sm-2 control-label">电话：</label>
    <div class="col-sm-10">
        <input type="number" name="phone" id="phone" class="form-control" value="${user.phone}"/>
    </div>
</div>
<div class="form-group">
    <label for="is_admin" class="col-sm-2 control-label">是否为管理员：</label>
    <div class="col-sm-10">
        <input type="checkbox" name="is_admin" id="is_admin" class="form-control" ${user.isAdmin ? "checked" : ""}/>
    </div>
</div>