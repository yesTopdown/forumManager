<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>me</title>
  <link rel="stylesheet" href="${pageContext.request.contextPath}/css/me.css">
  <link rel="stylesheet" href="${pageContext.request.contextPath}/css/public.css">
</head>

<body>
  <header class="ProfileHeader">
    <%@include file="/com/headPeo.jsp"%>
  </header>
  <main class="Profile-main">
    <div class="Profile-mainColumn">

      <%@include file="/com/midPeo.jsp"%>

      <div class="ListShortcut">
        <div class="list-header is-active">我的评论</div>
        <div class="Commentlist">
          <c:forEach items="${comments}" var="comment">
          <div class="Commentlist-item">
            <div class="CommentItem-header">
              <div class="CommentItem-user">
                <div class="CommentItem-avatar">
                  <a href="">
                    <img src="${comment.userInfo.avatar}">
                  </a>
                </div>
                <div class="CommentItem-nametime">
                  <div class="CommentItem-username">
                    <a href="">${comment.userInfo.username}</a>
                  </div>
                  <div class="CommentItem-time">${comment.com_time}</div>
                </div>
              </div>
              <div class="CommentItem-info">回复 ${comment.post.userInfo.username} ：${comment.com_content}</div>
            </div>
            <div class="CommentItem-content">
              <a href="">
                <div class="content-author">
                  <a href="${pageContext.request.contextPath}/post/queryPost/${comment.post_id}">${comment.post.userInfo.username}</a></div>
                <div class="content-title">
                  <a href="${pageContext.request.contextPath}/post/queryPost/${comment.post_id}">${comment.post.title}</a></div>
                <div class="content-txt">
                  ${comment.post.content}
                </div>
              </a>
            </div>
          </div>
          </c:forEach>


        </div>
      </div>
    </div>

   <%@include file="/com/rightPeo.jsp"%>

  </main>
</body>

</html>