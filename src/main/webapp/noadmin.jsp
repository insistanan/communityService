<%@ page import="java.text.SimpleDateFormat" %>
<%
    String basePath = request.getScheme() + "://" +
            request.getServerName() + ":" + request.getServerPort() +
            request.getContextPath() + "/";
%>
<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<html>
<head>
    <title>用户</title>
    <base href="<%=basePath%>" />
    <link rel="stylesheet" href="static/css/body.css">
    <script type="text/javascript">
        function disptime(){
            // 获取当前时间
            var today = new Date();
            // 获取时、分、秒
            var hh = today.getHours();
            var mm = today.getMinutes();
            var ss = today.getSeconds();
            if(hh<12){
                var s = "上午";
            }else{
                var s = "下午";
            }
            // 设置一个div的内容为当前时间
            document.getElementById("myclock").innerHTML = "<h4>现在是:"+s+":"+hh+":"+mm+":"+ss+"<h4>";
        }
        setInterval("disptime()",1000);// 设置刷新时间
    </script>

</head>
<body>
<table align="center">
    <div class="yonghu" align="center">${yonghu}，您好！<div id="myclock"></div></div>
    <tr>
        <td><a href="noadmin/func/addUser.jsp">添加档案</a></td>
    </tr>
    <tr>
        <td><a href="noadmin/func/kaluli.jsp">热量计算</a></td>
    </tr>
    <tr>
        <td><a href="noadmin/func/sport.jsp">体育锻炼</a></td>
    </tr>
    <tr>
        <td><a href="noadmin/func/bmi.jsp">BMI计算</a></td>
    </tr>
    <tr>
        <td><a href="noadmin/func/liulan.jsp">浏览资讯</a></td>
    </tr>
    <tr>
        <td><a href="noadmin/func/yisheng.jsp">联系医生</a></td>
    </tr>
</table>
</body>
</html>
