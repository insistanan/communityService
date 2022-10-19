<%--
  Created by IntelliJ IDEA.
  User: yzn__
  Date: 2022/4/23
  Time: 13:45
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String basePath = request.getScheme() + "://" +
            request.getServerName() + ":" + request.getServerPort() +
            request.getContextPath() + "/";
%>
<html>
<head>
    <title>管理员</title>
    <base href="<%=basePath%>" />
    <link rel="stylesheet" href="static/css/body.css">
</head>
<body>
<table align="center">
    <tr>
        <td><a href="admin/func/listUser.jsp">查询档案</a></td>
    </tr>
    <tr>
        <td><a href="admin/func/addUser.jsp">添加档案</a></td>
    </tr>
    <tr>
        <td><a href="admin/func/updateUser.jsp">修改档案</a></td>
    </tr>
    <tr>
        <td><a href="admin/func/deleteUser.jsp">删除档案</a></td>
    </tr>
    <tr>
        <td><a href="doctor/doctor.jsp">医生信息</a></td>
    </tr>
    <tr>
        <td><a href="admin/func/addAdmin.jsp">添加管理员</a></td>
    </tr>
</table>
</body>
</html>
