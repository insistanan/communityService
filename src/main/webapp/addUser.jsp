<%--
  Created by IntelliJ IDEA.
  User: yzn__
  Date: 2022/4/17
  Time: 20:38
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>添加档案</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/body.css">
</head>
<body>
    <div align="center">
      <form action="addUser.do" method="post">
            <table>
                <tr>
                    <td>姓名：</td>
                    <td><input type = "text" name = "xingming"/></td>
                </tr>
                <tr>
                    <td>性别：</td>
                    <td><input type = "text" name = "xingbie"/></td>
                </tr>
                <tr>
                    <td>民族：</td>
                    <td><input type = "text" name = "minzu"/></td>
                </tr>
                <tr>
                    <td>生日：</td>
                    <td><input type = "date" name = "shengri"/></td>
                </tr>
                <tr>
                    <td>小区：</td>
                    <td><input type = "text" name = "xiaoqu"/></td>
                </tr>
                <tr>
                    <td>单元：</td>
                    <td><input type = "text" name = "danwei"/></td>
                </tr>
                <tr>
                    <td>门牌号：</td>
                    <td><input type = "text" name = "menpaihao"/></td>
                </tr>
                <tr>
                    <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
                    <td><input type = "submit" name = "注册"/></td>
                </tr>
            </table>
      </form>
    </div>
</body>
</html>
