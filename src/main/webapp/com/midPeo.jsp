<%--
  Created by IntelliJ IDEA.
  User: ASUS
  Date: 2022/2/21
  Time: 12:42
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<ul class="topTab">
    <li class="tabItem"><a href="${pageContext.request.contextPath}/post/queryByUid">我的帖子</a></li>
    <li class="tabItem"><a href="${pageContext.request.contextPath}/people/like.jsp">点赞</a></li>
    <li class="tabItem currentTab"><a href="${pageContext.request.contextPath}/comment/commentU">评论</a></li>
    <li class="tabItem"><a href="${pageContext.request.contextPath}/follow/user.Info">关注</a></li>
</ul>