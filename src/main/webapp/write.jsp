<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>发帖</title>
  <link rel="stylesheet" href="${pageContext.request.contextPath}/css/public.css">
  <link rel="stylesheet" href="${pageContext.request.contextPath}/css/header.css">
  <link rel="stylesheet" href="${pageContext.request.contextPath}/css/iconfont.css">
  <link rel="stylesheet" href="${pageContext.request.contextPath}/css/write.css">
</head>

<body>
  <header class="DetailHeader">
    <div class="inner">
      <div class="logo"><a href="${pageContext.request.contextPath}/index.jsp">论坛中心</a></div>
      <div class="btnContainer">
        <div class="user" onclick="document.getElementsByClassName('user-menuhide')[0].className = 'user-menu'"
          onMouseLeave="document.getElementsByClassName('user-menu')[0].className = 'user-menuhide'">
          <img class="userImg" alt='' src='https://pic2.zhimg.com/v2-b82ca3d2f0403e596793725b23afcbb6_im.jpg'/>
          <div class="user-menuhide">
            <span class="arrow"></span>
            <div class="menuList">
              <a href='${pageContext.request.contextPath}/post/queryByUid'>我的主页</a>
              <a href=''>退出</a>
            </div>
          </div>
        </div>
      </div>
    </div>
  </header>
  <main class="write-main">
    <div class="write-inner">
      <form class="write-form"  name="write" action="${pageContext.request.contextPath}/post/deliverPost">
        <div class="write-title">
          <label class="title-lable">
            <textarea name="title" rows="1" class="title-input" placeholder="请输入标题（最多 100 个字）"></textarea>
          </label>
        </div>
        <div class="write-content">
          <div class="contnt-inner">
            <textarea name="content" class="content-input" placeholder="请输入内容"></textarea>
          </div>
        </div>
        <input class="submit" type="submit" value="发布">
      </form>
    </div>
  </main>

</body>

</html>