<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String basePath = request.getScheme() + "://" +
            request.getServerName() + ":" + request.getServerPort() +
            request.getContextPath() + "/";
%>
<html>
<head>
    <title>修改档案</title>
    <base href="<%=basePath%>"/>
    <link rel="stylesheet" href="static/css/body.css">
    <script type="text/javascript" src="static/js/jquery-3.4.1.js"></script>

    <script type="text/javascript">
        $(function(){
            //在当前页面dom对象加载后，执行loadStudentData（）
            //loadStudentData();

            $("#btnLoader").click(function(){
                loadStudentData();

            })
        })

        function loadStudentData(){
            var id =$("#id1").val();

            $.ajax({
                url:"queryUser.do",
                type:"get",
                dataType:"json",
                success:function(data){
                    //清除旧的数据
                    $("#info").html("");
                    document.getElementById("name1").value=$("#id1").val();
                    //增加新的数据
                    $.each(data,function(i,n){
                        if (((n.id) == id) ){
                            $("#info").append("<tr>")
                                .append("<td>"+n.id+"</td>")
                                .append("<td>"+n.xingming+"</td>")
                                .append("<td>"+n.xingbie+"</td>")
                                .append("<td>"+n.minzu+"</td>")
                                .append("<td>"+n.shengri+"</td>")
                                .append("<td>"+n.xiaoqu+"</td>")
                                .append("<td>"+n.danwei+"</td>")
                                .append("<td>"+n.menpaihao+"</td>")
                                .append("</tr>")
                        }
                    }  )

                }
            })
        }
    </script>


</head>
<body>
<div align="center">
    <h3 align="center">修改档案</h3><br/>
    <tr>
        <td>
            ID:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="text" placeholder="请输入要修改用户的ID" id="id1">
        </td>
        <td>
            <input type="button" id="btnLoader" value="查询">
        </td>
    </tr>
    <br/>
    <br/>



    <table>
        <thead>
        <tr>
            <td>id</td>
            <td>姓名</td>
            <td>性别</td>
            <td>民族</td>
            <td>生日</td>
            <td>小区</td>
            <td>单位</td>
            <td>门牌号</td>
        </tr>

        </thead>

        <tbody id="info">

        </tbody>
    </table>

    <form action="updateUser.do" method="post">
       <table>
            <tr>
                <td><input type = "hidden" id="name1" name = "id"/></td>

            </tr>
            <tr>
                <td>修改姓名：</td>
                <td><input type = "text" name = "xingming"/></td>
            </tr>
            <tr>
                <td>修改性别：</td>
                <td><input type = "text" name = "xingbie"/></td>
            </tr>
            <tr>
                <td>修改民族：</td>
                <td><input type = "text" name = "minzu"/></td>
            </tr>
            <tr>
                <td>修改生日：</td>
                <td><input type = "date" name = "shengri"/></td>
            </tr>
            <tr>
                <td>修改小区：</td>
                <td><input type = "text" name = "xiaoqu"/></td>
            </tr>
            <tr>
                <td>修改单元：</td>
                <td><input type = "text" name = "danwei"/></td>
            </tr>
            <tr>
                <td>修改门牌号：</td>
                <td><input type = "text" name = "menpaihao"/></td>
            </tr>
            <tr>
                <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
                <td><input type = "submit" name = "修改档案" /></td>
            </tr>
        </table>
    </form>
</div>




</body>
</html>
