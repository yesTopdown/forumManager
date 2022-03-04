<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>edit</title>
  <link rel="stylesheet" href="${pageContext.request.contextPath}/css/public.css">
  <link rel="stylesheet" href="${pageContext.request.contextPath}/css/edit.css">
</head>

<body>
  <main>
    <div class="ProfileEdit">
      <div class="Card">
        <div class="ProfileHeader-content">
          <form class="edit-form" method="post"  name="edit" action="${pageContext.request.contextPath}/user/alterInfo" enctype="multipart/form-data">
            <a class="link" href="${pageContext.request.contextPath}/post/queryByUid">返回我的主页 ></a>
            <div class="form-item">
              <label>昵称</label>
              <div class="form-content">
                <input class="username-input" name="username" type="text" value="${sessionScope.user.username}">
              </div>
            </div>
            <div class="form-item">
              <label>性别</label>
              <div class="form-content">
                <input type="radio" name="sex" value="女" checked="checked">女
                <input class="sex-input" type="radio" name="sex" value="男">男
              </div>
            </div>
            <div class="form-item">
              <label>出生日期</label>
              <div class="form-content">
                <input type="text" class="date-input" name="birthday" value="${sessionScope.user.birthday}">
              </div>
            </div>
            <div class="form-item">
              <label>所在行业</label>
              <div class="form-content">
                <select class="profession-select" name="profession">
                  <option value="高新科技">高新科技</option>
                  <option value="互联网">互联网</option>
                  <option value="电子商务">电子商务</option>
                  <option value="电子游戏">电子游戏</option>
                  <option value="计算机软件" selected>计算机软件</option>
                  <option value="计算机硬件">计算机硬件</option>
                  <option value="信息传媒">信息传媒</option>
                  <option value="出版业">出版业</option>
                  <option value="电影录音">电影录音</option>
                  <option value="广播电视">广播电视</option>
                  <option value="通信">通信</option>
                  <option value="金融">金融</option>
                  <option value="资本投资">资本投资</option>
                  <option value="证券投资">证券投资</option>
                  <option value="保险">保险</option>
                  <option value="信贷">信贷</option>
                  <option value="财务">财务</option>
                  <option value="审计">审计</option>
                  <option value="服务业">服务业</option>
                  <option value="餐饮">餐饮</option>
                  <option value="酒店">酒店</option>
                  <option value="旅游">旅游</option>
                  <option value="广告">广告</option>
                  <option value="公关">公关</option>
                  <option value="景观">景观</option>
                </select>
              </div>
            </div>
            <div class="form-item">
              <label>兴趣爱好</label>
              <div class="form-content">
                <textarea rows="3" class="habby-input" name="habby">${sessionScope.user.habby}</textarea>
              </div>
            </div>
            <div class="form-item">
              <label>头像</label>
              <div class="form-content">
               <input type="hidden" id="img_url">
                <input type="file"  name="avatar" accept="image/png,image/jpeg" class="img-input" onchange="showImg()" id="img_file">
                <div>
                  <img id="img_id" title="头像"  src="${sessionScope.user.avatar}" style="width: 100px">
                </div>

              </div>
            </div>
            <input class="submit" type="submit" value="保存">
          </form>
        </div>
      </div>
    </div>
  </main>

  <script src="${pageContext.request.contextPath}/js/laydate/laydate.js"></script>
  <script src="${pageContext.request.contextPath}/js/edit.js"></script>
  <script>
    function showImg(){
      // var img_file =  $("#img_file").val();
      var file =  document.getElementById('img_file').files[0];
      var re = new FileReader();
      re.readAsDataURL(file);
      re.onload = function(re){
        $('#img_id').attr("src", re.target.result);
      }
    }
  </script>
</body>

</html>