<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
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
    <link rel="stylesheet" href="static/css/uikit.min.css"/>
    <link rel="stylesheet" href="static/css/uikit-rtl.min.css"/>


</head>
<body>
<div class="uk-card uk-card-default" id="wodeziliao">

    <div class="uk-card-header">
        <p>我的资料</p>

    </div>
    <div class="uk-card-body">



            <div class="uk-card-footer">
                <div class="uk-margin">
                    <button class="uk-button uk-button-primary">保存</button>
                </div>
            </div>
        </form>
    </div>
</div>
</body>
</html>
