<%--
  Created by IntelliJ IDEA.
  User: yzn__
  Date: 2022/5/1
  Time: 15:48
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
<div class="daohangleft"><button class="shouye" onclick="window.location.href='后台管理.jsp'"> 社区健康档案服务平台后台管理系统   </button>      </div>
<div class="yonghulan">
    <div class="yonghuxiala">
        <button class="xiala">管理员${admin.yonghu}</button>
        <div class="xiala-content">
<%--            <a href="${pageContext.request.contextPath}/管理员资料.jsp" >我的资料</a>--%>
            <form action="goxiugaimima2.do" id="form1">
                <a id="goxiugaimima" onclick="goxiugaimima()">修改密码</a>
            </form>
        <form action="logout.do" id="form2">
            <a id="logout" onclick="logout()">退出登录</a>
        </form>
        </div>
    </div>
</div>