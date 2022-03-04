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
  <link rel="stylesheet" href="${pageContext.request.contextPath}/css/iconfont.css">
</head>

<body>
  <header class="ProfileHeader">
    <%@include file="/com/headPeo.jsp"%>
  </header>
  <main class="Profile-main">
    <div class="Profile-mainColumn">
      <ul class="topTab">
        <li class="tabItem"><a href="me.jsp">我的帖子</a></li>
        <li class="tabItem currentTab"><a href="like.jsp">点赞</a></li>
        <li class="tabItem"><a href="comment.jsp">评论</a></li>
        <li class="tabItem"><a href="following.jsp">关注</a></li>
      </ul>
      <div class="ListShortcut">
        <div class="list-header  is-active">我的点赞</div>
        <div class="mylist">
          <div class="mylistItem">
            <h2 class="mylistItem-title">
              <a href="">给正在找工作的应届生一些忠告</a>
            </h2>
            <div class="mylistItem-content">
              <div class="mylistItem-inner">
                <a href="">
                  人资从业三年，给毕业生一些忠告。 本文图片均源于网络，侵删。 本文不适用于学霸。 不适用于红黑官富二代。 正文： 又是一年毕业季，又是一年开学时，想必应届生现在多数蜗居在出租屋里刷招聘网站吧。
                  遥想当年毕业，虽不至于为房租而发愁，但一直有一颗闯荡世界的心，无奈自身没有打铁的本领，职能感叹这个社会太黑暗，现如今身边又有很多同学…
                </a>
              </div>
              <div class="mylistItem-actions">
                <button class="comments">
                  <span class="iconfont icon-pinglun"></span>
                  <span class="article-count">10</span>
                </button>
                <div class="views">
                  <span class="iconfont icon-view"></span>
                  <span class="article-count">10</span>
                </div>
                <div class="likes">
                  <span class="iconfont icon-Like"></span>
                  <span class="article-count">20</span>
                </div>
                <button class="delete">取消点赞</button>
              </div>
            </div>
          </div>
          <div class="mylistItem">
            <h2 class="mylistItem-title">
              <a href="">给正在找工作的应届生一些忠告</a>
            </h2>
            <div class="mylistItem-content">
              <div class="mylistItem-inner">
                <a href="">
                  人资从业三年，给毕业生一些忠告。 本文图片均源于网络，侵删。 本文不适用于学霸。 不适用于红黑官富二代。 正文： 又是一年毕业季，又是一年开学时，想必应届生现在多数蜗居在出租屋里刷招聘网站吧。
                  遥想当年毕业，虽不至于为房租而发愁，但一直有一颗闯荡世界的心，无奈自身没有打铁的本领，职能感叹这个社会太黑暗，现如今身边又有很多同学…
                </a>
              </div>
              <div class="mylistItem-actions">
                <button class="comments">
                  <span class="iconfont icon-pinglun"></span>
                  <span class="article-count">10</span>
                </button>
                <div class="views">
                  <span class="iconfont icon-view"></span>
                  <span class="article-count">10</span>
                </div>
                <div class="likes">
                  <span class="iconfont icon-Like"></span>
                  <span class="article-count">20</span>
                </div>
                <button class="delete">取消点赞</button>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
    <%@include file="/com/rightPeo.jsp"%>
  </main>
</body>

</html>