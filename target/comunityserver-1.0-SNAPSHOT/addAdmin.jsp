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
<div align="center">
    <h3 align="center">添加管理员权限</h3><br/>
<form action="addAdmin.do" method="post">
    <table>
        <tr>
            <td>用户名：</td>
            <td><input type = "text" name = "yonghu"/></td>
            <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
            <td><input type = "submit" name = "注册"/></td>
        </tr>
    </table>
</form>
</div>
</body>
</html>
