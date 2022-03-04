<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>帖子详情</title>
  <link rel="stylesheet" href="${pageContext.request.contextPath}/css/public.css">
  <link rel="stylesheet" href="${pageContext.request.contextPath}/css/header.css">
  <link rel="stylesheet" href="${pageContext.request.contextPath}/css/iconfont.css">
  <link rel="stylesheet" href="${pageContext.request.contextPath}/css/post.css">
  <script type="text/javascript" src="https://lib.sinaapp.com/js/jquery/2.0.2/jquery-2.0.2.min.js"></script>
</head>

<body>
  <header class="DetailHeader">
    <div class="inner">
      <div class="logo"><a href="${pageContext.request.contextPath}/index.jsp">论坛中心</a></div>
      <div class="btnContainer">
        <c:choose>
          <c:when test="${not empty sessionScope.user}">
            <button class="writeBtn"><a href="${pageContext.request.contextPath}/write.jsp">发帖</a></button>
        <div class="user" onclick="document.getElementsByClassName('user-menuhide')[0].className = 'user-menu'"
          onMouseLeave="document.getElementsByClassName('user-menu')[0].className = 'user-menuhide'">
          <img class="userImg" alt='' src='${sessionScope.user.avatar}'/>
          <div class="user-menuhide">
            <span class="arrow"></span>
            <div class="menuList">
              <a href='${pageContext.request.contextPath}/post/queryByUid'>我的主页</a>
              <a href='${pageContext.request.contextPath}/user/loginOut'>退出</a>
            </div>
          </div>
        </div>
          </c:when>
          <c:otherwise>
            <button class="writeBtn"><a href="${pageContext.request.contextPath}/login.jsp">登录</a></button>
          </c:otherwise>
        </c:choose>
      </div>
    </div>
  </header>
  <main class="post-main">
    <c:forEach items="${isPosts}" var="post">
    <article>
      <div class="post-header">
        <h1 class="post-title">

          ${post.title}

        </h1>
        <div class="post-author">
          <div class="author-info">
            <div class="author-avatar">
              <a href="">
                <img src="${post.userInfo.avatar}"></a>
            </div>
            <div class="author-name">
              <a href="">${post.userInfo.username}</a>
              <span class="author-rank">${post.userInfo.grade}</span>
            </div>
          </div>
          <c:if test="${!sessionScope.user.username.equals(post.userInfo.username)}">
          <button class="follow-btn"><a href="javascript:void(0)" onclick="fun('${post.postId}')">关注Ta</a></button>
          </c:if>
        </div>
        <div class="post-content">
          <p>
            ${post.content}

          </p>
        </div>
        <div class="post-actions">
          <button class="likes" onclick="changeLike()">
            <span class="iconfont icon-Like"></span>
            <span class="post-count">20 个赞</span>
          </button>
          <button class="comments">
            <span class="iconfont icon-pinglun"></span>
            <span class="post-count">10 条评论</span>
          </button>
        </div>
      </div>
    </article>

    <div class="comments-container">
      <div class="comments-inner">
        <c:if test="${not empty sessionScope.user}">
        <form class="comments-edit" method="get" action="${pageContext.request.contextPath}/comment/reComment/${post.postId}">
          <input class="comments-input" type="text" name="comment" placeholder="写下你的评论..." oninput="changeButton()">
          <input class="comments-submit disable" type="submit" value="发布"/>
        </form>
        </c:if>
        <div class="comments-list">
          <c:forEach var="comment" items="${post.comments}">
            <fmt:formatDate var="time" value="${comment.com_time}" pattern="yyyy-MM-dd hh:mm:ss"/>
            <ul class="comment">
            <li class="comment-root">
              <div class="comment-item">
                <div class="comment-top">
                  <div class="user-info">
                    <a href="">
                      <img class="user-avatar"
                        src="${comment.userInfo.avatar}">
                    </a>
                    <div class="user-name"><a href="">${comment.userInfo.username}</a></div>
                  </div>
                  <div class="comment-time">${time}</div>
                </div>
                <div class="comment-content">${comment.com_content}</div>
                <div class="comment-footer hide">
                  <button type="button" class="comment-btn">回复</button>
                  <form class="comments-edit hide"
                        action="${pageContext.request.contextPath}/comment/addResp/${post.postId}/${comment.comId}">
                    <input class="comments-input" type="text" name="comment" placeholder="写下你的评论..."
                           oninput="changeButton()">
                    <input class="comments-submit disable" type="submit" value="发布"/>
                  </form>
                </div>
              </div>
            </li>
            <c:forEach items="${comment.commentRes}" var="response">
            <li class="comment-child">
              <div class="comment-item">
                <div class="comment-top">
                  <div class="user-info">
                    <a href="">
                      <img class="user-avatar"
                        src="${response.userInfo.avatar}"/>
                    </a>
                    <div class="user-name"><a href="">${response.userInfo.username}</a></div>
                    <span class="replay">回复</span>
                    <div><a href="">${comment.userInfo.username}</a></div>
                  </div>
                  <div class="comment-time">${response.wrTime}</div>
                </div>
                <div class="comment-content">${response.wrContent}</div>
              </div>
            </li>
            </c:forEach>
          </ul>
          </c:forEach>
        </div>

      </div>
    </div>
    </c:forEach>
  </main>
  <script>
    function fun(id) {
      $.ajax({
        url: "http://localhost:8080/forumManager/follow/addFollowr",
        type: "GET",
        data: "followId="+id,
        dataType: "text",
        success: function (data) {
          alert(data);
        },
        error: function (){
          alert("错误");
        }
      });
    }
  </script>
  <script src="${pageContext.request.contextPath}/js/post.js"></script>
</body>

</html>