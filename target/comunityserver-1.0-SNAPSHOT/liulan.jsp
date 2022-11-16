<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String basePath = request.getScheme() + "://" +
            request.getServerName() + ":" + request.getServerPort() +
            request.getContextPath() + "/";
%>
<html>
<head>
    <title>title</title>
    <base href="<%=basePath%>"/>
    <link rel="stylesheet" href="static/css/body.css">

</head>
<body>

<div class="uk-card uk-card-default" id="wodeziliao">
<%--    header--%>
    <div class="uk-card-header">
        <p>我的资料</p>

    </div>
    <%--header--%>

<%--    body--%>
    <div class="uk-card-body">



<%--        footer--%>
        <div class="uk-card-footer">
            <div class="uk-margin">
                <button class="uk-button uk-button-primary">保存</button>
            </div>
        </div>
<%--        footer--%>

    </div>
<%--    body--%>
</div>

</body>
</html>
