<%--
  Created by IntelliJ IDEA.
  User: ASUS
  Date: 2022/2/21
  Time: 12:14
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<div class="Profile-sideColumn">
    <div class="FollowshipCard">
        <a class="followItem" href="${pageContext.request.contextPath}/follow/user.Info">
            <div class="item-inner">
                <div class="item-name">关注了</div>
                <div class="item-value">7</div>
            </div>
        </a>
        <a class="followItem" href="${pageContext.request.contextPath}/follow/followed">
            <div class="item-inner">
                <div class="item-name">关注者</div>
                <div class="item-value">5</div>
            </div>
        </a>
    </div>
</div>
