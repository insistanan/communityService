<%--
  Created by IntelliJ IDEA.
  User: yzn__
  Date: 2022/5/1
  Time: 9:21
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<script type="text/javascript" src="static/js/jquery-3.4.1.js"></script>
<script>
    $(function(){
        //在当前页面dom对象加载后，执行函数（）
        shouye();
    })
    function shouye(){
        $(".shouye").click();

    }
</script>
<div class="daohangleft"><button class="shouye"  onclick="window.location.href='用户主页面.jsp'"> 社区健康档案服务平台   </button>      </div>
