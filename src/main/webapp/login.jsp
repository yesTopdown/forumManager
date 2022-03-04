<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>登录</title>
  <link rel="stylesheet" href="${pageContext.request.contextPath}/css/login.css">
</head>

<body>
  <div class="container">
    <div class="wrap">
      <form class="login" action="${pageContext.request.contextPath}/loginServlet" method="get" >
        <div class="title">欢迎登录论坛中心</div>
        <input class="username" type="text" name="username" placeholder="用户名" value="">
        <input class="password" type="password" name="password" placeholder="密码" value="">
        <div class="remember">
          <input class="checkbox" type="checkbox" name="isUseCookie">
          <span class="checkbox-text">记住用户名和密码</span>
        </div>
        <div class="button">
          <input class="submit" type="submit" value="登录">
          <input type="reset" name="reset" value="重置">
        </div>
        <div class="footer"><a href="${pageContext.request.contextPath}/register.jsp">注册>></a></div>
      </form>
    </div>
  </div>
</body>

</html>