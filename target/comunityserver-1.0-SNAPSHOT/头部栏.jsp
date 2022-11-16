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
    function  goxiugaimima() {
        $('#form1').submit();
    }
</script>
<script>
    function logout() {
        $("#form2").submit();

    }
</script>

<div class="daohangleft"><button class="shouye"  onclick="window.location.href='用户主页面.jsp'"> 社区健康档案服务平台   </button>      </div>
<div class="yonghulan">
    <div class="yonghuxiala">
        <button class="xiala">用户${user.yonghu}</button>
        <div class="xiala-content">
            <form>
            <a href="${pageContext.request.contextPath}/完善资料.jsp" >我的资料</a>
            </form>
            <form action="goxiugaimima1.do" id="form1">
                <a id="goxiugaimima" onclick="goxiugaimima()">修改密码</a>
            </form>
            <form action="logout.do" id="form2">
                <a id="logout" onclick="logout()">退出登录</a>
            </form>
        </div>
    </div>
</div>
