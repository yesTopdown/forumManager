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
  <link rel="stylesheet" href="${pageContext.request.contextPath}/css/notice.css">
</head>

<body>
  <div class="ProfileHeader">
    <%@include file="/com/headPeo.jsp"%>
  </div>
  <main class="Profile-main">
    <div class="Profile-mainColumn">
      <%@include file="/com/midPeo.jsp"%>
      <div class="ListShortcut">
        <div class="list-header is-active">我的帖子</div>
        <div class="mylist">
          <c:forEach var="post" items="${UidPosts}">
          <div class="mylistItem">
            <h2 class="mylistItem-title">
              <a href="${pageContext.request.contextPath}/post/queryPost/${post.postId}">${post.title}</a>
            </h2>
            <div class="mylistItem-content">
              <div class="mylistItem-inner">
                <a href="${pageContext.request.contextPath}/post/queryPost/${post.postId}">
                  ${post.content}
                </a>
              </div>
              <div class="mylistItem-actions">
                <div class="time">${post.postTime}</div>
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
                <a  id="adminBtn" href="javascript:void(0)" onclick="showNotice('${post.postId}')"><button  class="delete">删除</button></a>
              </div>
            </div>
          </div>
          </c:forEach>
        </div>
      </div>
    </div>
    <div class="notice">
      <div class="mask" onClick="closeNotice()">
        <div class="box">
          <div class="header"></div>
          <div class="content">是否删除该帖子？</div>
          <div class="footer">
            <button id="closeBtn" class="button-primary close" onclick="closeNotice()">
              取消
            </button>
            <button id="sureBtn" class="button-primary">
             <a id="btua" href="#"> 确定</a>
            </button>
          </div>
        </div>
      </div>
    </div>

     <%@include file="/com/rightPeo.jsp"%>
    <!-- 插入JS代码 -->
    <script type="text/javascript">
      let notice = document.getElementsByClassName("notice")[0]

      function closeNotice(){
        notice.className = "notice";
      }
      function showNotice(a){
        notice.className = "notice visible";
        var ab = document.getElementById('btua');
        ab.href="${pageContext.request.contextPath}/post/deletePost?postId="+a;
      }
    </script>
  </main>
</body>

</html>