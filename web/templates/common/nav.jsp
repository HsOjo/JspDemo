<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<nav class="navbar navbar-inverse navbar-static-top" style="position: fixed; width: 100%;">
    <div class="container">
        <div class="navbar-header">
            <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar"
                    aria-expanded="false" aria-controls="navbar">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <a class="navbar-brand" href="${ctx}">JspDemo</a>
        </div>
        <div id="navbar" class="collapse navbar-collapse">
            <ul class="nav navbar-nav">
                <!--                <li><a href="{:url('user/basic/logout')}">xxxx</a></li>-->
            </ul>
            <ul class="nav navbar-nav navbar-right">
                <li class="dropdown">
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true"
                       aria-expanded="true">
                        {$logon_user.username | default='访客'}
                        <span class="caret"></span></a>
                    <ul class="dropdown-menu">
<%--                        {notempty name="logon_user"}--%>
<%--                        {notempty name="logon_user.is_admin"}--%>
                        <li><a href="{:url('admin/index/index')}">管理后台</a></li>
                        <li class="divider"></li>
<%--                        {/notempty}--%>
<%--                        {/notempty}--%>

<%--                        {empty name="logon_user"}--%>
                        <li><a href="${ctx}/user/login">登录</a></li>
<%--                        {/empty}--%>

<%--                        {notempty name="logon_user"}--%>
                        <li><a href="${ctx}/user/logout">注销</a></li>
<%--                        {/notempty}--%>
                    </ul>
                </li>
            </ul>
        </div>
    </div>
</nav>