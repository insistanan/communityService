<%--
  Created by IntelliJ IDEA.
  User: yzn__
  Date: 2022/4/17
  Time: 20:47
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
    <title>查询用户</title>
    <base href="<%=basePath%>" />
    <script type="text/javascript" src="static/js/jquery-3.4.1.js"></script>
    <script type="text/javascript">

        function deleteUser() {
            var xingming =$("#xingming").val();
            var id =$("#id").val();
            $.ajax({            //几个参数需要注意一下
                type: "POST",//提交数据的方法类型
                // dataType: "json",//预期服务器返回的数据类型
                url: "deleteUser.do" ,//后台接收参数的文件地址
                data: {
                    "xingming":xingming,
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
    <script type="text/javascript">
        $(function(){
            //在当前页面dom对象加载后，执行loadStudentData（）
            loadStudentData();

            $("#btnLoader").click(function(){
                loadStudentData();

            })
        })

        function loadStudentData(){
            $.ajax({
                url:"queryUser.do",
                type:"get",
                dataType:"json",
                success:function(data){
                    //清除旧的数据
                    $("#info").html("");
                    //增加新的数据
                    $.each(data,function(i,n) {
                        $("#info").append("<tr>")
                            .append("<td>" + n.id + "</td>")
                            .append("<td>" + n.xingming + "</td>")
                            .append("<td>" + n.xingbie + "</td>")
                            .append("<td>" + n.minzu + "</td>")
                            .append("<td>" + n.shengri + "</td>")
                            .append("<td>" + n.xiaoqu + "</td>")
                            .append("<td>" + n.danwei + "</td>")
                            .append("<td>" + n.menpaihao + "</td>")
                            .append("</tr>")
                    }

                      )

                }
            })
        }
    </script>
    <script type="text/javascript">
        $(function(){
            //在当前页面dom对象加载后，执行loadStudentData（）
            //loadStudentData();

            $("#btnLoader1").click(function(){
                loadStudentData1();

            })
        })

        function loadStudentData1(){
            var xingming =$("#xingming").val();
            var id =$("#id").val();
            $.ajax({
                url:"queryUser.do",
                type:"get",
                dataType:"json",
                success:function(data){
                    //清除旧的数据
                    $("#info").html("");
                    //增加新的数据
                    $.each(data,function(i,n){
                        if (((n.xingming) == xingming)||((n.id) == id) ){
                                $("#info").append("<tr>")
                                .append("<td>"+n.id+"</td>")
                                .append("<td>"+n.xingming+"</td>")
                                .append("<td>"+n.xingbie+"</td>")
                                .append("<td>"+n.minzu+"</td>")
                                .append("<td>"+n.shengri+"</td>")
                                .append("<td>"+n.xiaoqu+"</td>")
                                .append("<td>"+n.danwei+"</td>")
                                .append("<td>"+n.menpaihao+"</td>")
                                .append("<td>"+"<input type='button' onclick='deleteUser()' value='删除档案'> "+"</td>")
                                .append("</tr>")
                        }
                    }  )

                }
            })
        }
    </script>
    <link rel="stylesheet" href="static/css/body.css">
</head>
<body>
<div align="center">
    <h3 align="center">查询档案</h3><br/>
    <table>
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
        <tbody id="info">
        </tbody>
    </table>

    <br/>
    <button class="uk-button uk-button-primary"  type="button" onclick="tijiao()">提交</button>
    <input type="button" id="btnLoader" value="所有档案" align="center">
    <br/>
    <form >
        <table>

        <tr>
            <td>
                    姓名：<input type="text" placeholder="根据姓名查询" id="xingming"><br/>
                    ID:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="text" placeholder="根据id查询" id="id">
            </td>
            <td>
                <input type="button" id="btnLoader1" value="查询">
            </td>
        </tr>
        </table>

    </form>


</div>
</body>
</html>
