<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">F
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>注册</title>
  <link rel="stylesheet" href="${pageContext.request.contextPath}/css/login.css">
</head>

<div>
  <div class="container">
    <div class="wrap">
      <form class="login" action="${pageContext.request.contextPath}/registerServlet" method="post" name="regForm">
        <div class="title">注册</div>
        <input class="username" type="text" name="username" placeholder="用户名">
        <input class="password" type="password" name="password" placeholder="密码">
        <div class="button">
          <input class="submit" type="submit" value="注册">
          <input type="reset" name="reset" value="重置">
        </div>
        <div class="footer"><a href="${pageContext.request.contextPath}/login.jsp">登录>></a></div>
      </form>
    </div>
  </div>

  <form action=""> 
    <select name="customers" onchange="showCustomer(this.value)" style="font-family:Verdana, Arial, Helvetica, sans-serif;">
    <option value="APPLE">Apple Computer, Inc.</option>
    <option value="BAIDU ">BAIDU, Inc</option>
    <option value="Canon">Canon USA, Inc.</option>
    <option value="Google">Google, Inc.</option>
    <option value="Nokia">Nokia Corporation</option>
    <option value="SONY">Sony Corporation of America</option>
    </select>
    </form>
    <br>
    <div id="txtHint">客户信息将显示在这...</div>
  </body>
</div>
</html>