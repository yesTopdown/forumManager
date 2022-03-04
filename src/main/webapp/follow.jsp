<%@ page contentType="text/html;charset=UTF-8" language="java" %>
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
  <title>首页</title>
</head>

<body>
  <header class="header">
    <%@include file="com/mainHead.jsp"%>
  </header>

  <main class="main">
    <nav class="topTab">
      <div class="tabItem"><a href="${pageContext.request.contextPath}/index.jsp">热榜</a></div>
      <div class="tabItem currentTab"><a href="${pageContext.request.contextPath}/post/queryAllfollow.Info">关注</a></div>
    </nav>
    <div class="content">
      <div class="content-item follow">
        <c:forEach var="post" items="${posts}">
          <section class="article">
            <div class="author-info">
              <a href="${pageContext.request.contextPath}/post/queryPost/${post.postId}">
                <img class="author-avatar"
                     src="${post.userInfo.avatar}">
              </a>
              <a class="author-username" href="">${post.userInfo.username}</a>
            </div>
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

  <script src="js"></script>
</body>

</html>