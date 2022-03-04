<%--
  Created by IntelliJ IDEA.
  User: ASUS
  Date: 2022/2/21
  Time: 12:28
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<div class="location">
    <a href="${pageContext.request.contextPath}/index.jsp"> << 返回首页</a>
</div>
<div class="ProfileHeader-inner">
    <c:choose>
        <c:when test="${not empty sessionScope.user}">
        <div class="UserAvatar">
            <img src="${sessionScope.user.avatar}">
        </div>
        <div class="user-info">
            <div class="user-name">${sessionScope.user.username}</div>
            <div class="user-sexage">
                <span>${sessionScope.user.sex}</span>
                <span class="user-age">出生年月：<span>${sessionScope.user.birthday}</span></span>
            </div>
            <div class="user-profession">
                <lable>所在行业</lable>${sessionScope.user.profession}
            </div>
            <div class="user-habby">
                <lable>兴趣爱好</lable>${sessionScope.user.habby}
            </div>
        </div>
        <button class="edit-btn"><a href="${pageContext.request.contextPath}/user/queryInfo">编辑个人资料</a></button>
        </c:when>
        <c:otherwise>
            <div>
                没有登录
            </div>
        </c:otherwise>
    </c:choose>
</div>
