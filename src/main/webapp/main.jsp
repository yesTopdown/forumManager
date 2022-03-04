
<%@ page contentType="text/html;charset=UTF-8" language="java"  pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/public.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/index.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/iconfont.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css">
    <title>首页</title>
</head>

<body>
<header class="header">
   <%@include file="com/mainHead.jsp"%>
</header>  <!--  头部结束-->

<main class="main">
    <nav class="topTab">
        <div class="tabItem currentTab"><a href="index.jsp">热榜</a></div>
        <c:if test="${not empty sessionScope.user}">
        <div class="tabItem"><a href="${pageContext.request.contextPath}/post/queryAllfollow.Info">关注</a></div>
        </c:if>
    </nav>
    <div class="content">
        <div class="content-item hot">
            <c:forEach items="${posts}" var="post" varStatus="status">
                <section class="article">
                    <div class="rank hotRank">${status.count}</div>
                    <div class="article-content">
                        <a href="${pageContext.request.contextPath}/post/queryPost/${post.postId}">
                            <h2 class="article-title">
                                    ${post.title}
                            </h2>
                            <p class="article-excerpt">
                                    ${post.content}

                            </p>
                        </a>
                        <div class="article-metrics">
                            <div class="comments">
                                <span class="iconfont icon-pinglun"></span>
                                <span class="article-count">10</span>
                            </div>
                            <div class="views">
                                <span class="iconfont icon-view"></span>
                                <span class="article-count">10</span>
                            </div>
                            <div class="likes">
                                <span class="iconfont icon-Like"></span>
                                <span class="article-count">20</span>
                            </div>
                        </div>
                    </div>
                </section>
            </c:forEach>
        </div>
    </div>
</main>

<script src="${pageContext.request.contextPath}/js"></script>
</body>

</html>

