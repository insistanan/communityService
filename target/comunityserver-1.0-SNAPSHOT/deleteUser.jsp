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
    <script type="text/javascript" src="static/js/jquery-3.4.1.js"></script>
    <script type="text/javascript">

        function deleteUser() {
            var id =$("#id").val();
            $.ajax({            //几个参数需要注意一下
                type: "POST",//提交数据的方法类型
                // dataType: "json",//预期服务器返回的数据类型
                url: "deleteUser.do" ,//后台接收参数的文件地址
                data: {
                    "id":id
                },
                dataType:"json",
                success: function () {
                    alert(xingming+"删除成功");
                },
                error : function() {
                    alert("异常！");
                }
            });
        }
    </script>
</head>

<body>
<div align="center">
    <h3 align="center">删除档案</h3><br/>
    <input type="text" placeholder="根据id删除" id="id">
    <input type='button' onclick='deleteUser()' value='删除档案'><br/>
    <a href="admin/func/listUser.jsp">档案查询</a>
</div>

</body>
</html>
