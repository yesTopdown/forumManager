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
        <div class="list-header">
          <a href="${pageContext.request.contextPath}/follow/user.Info">我关注的人</a>
          <a class="is-active" href="${pageContext.request.contextPath}/follow/followed">关注我的人</a>
        </div>
        <div class="Followlist">
          <c:forEach items="${followInfos}" var="follow">
          <div class="Followlist-item">
            <div class="FollowItem-image">
              <a href="">
                <img class="FollowItem-avater" src="${follow.avatar}">
              </a>
            </div>
            <div class="FollowItem-info">
              <h2 class="FollowItem-title">
                <span class="FollowItem-username"><a href="">${follow.username}</a></span>
                <span class="FollowItem-rank">${follow.grade}</span>
              </h2>
              <div class="FollowItem-meta">
                <div class="FollowItem-habby">荒唐的不是岁月，是成长。</div>
                <div class="FollowItem-status">
                  <span class="FollowItem-statusItem">10 帖子</span>
                  <span class="FollowItem-statusItem">68993 关注者</span>
                </div>
              </div>
            </div>
            <div class="FollowItem-extra">
              <button class="follow-btn"><span class="show">已关注</span><span class="hide">取消关注</span></button>
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