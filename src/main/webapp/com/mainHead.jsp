<%--
  Created by IntelliJ IDEA.
  User: ASUS
  Date: 2022/2/21
  Time: 12:08
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<div class="inner">
    <div class="logo"><a href="index.jsp">论坛中心</a></div>
    <div class="search">
        <form class="searchbar" action="#">
            <input class="input" type="text" placeholder="输入查询的帖"
                   onFocus="document.getElementsByClassName('searchList_hide')[0].className = 'searchList'"
                   onBlur="document.getElementsByClassName('searchList')[0].className = 'searchList_hide'">
            <button class="searchBtn" onclick="">
                <span class="iconfont icon-sousuo"></span>
            </button>
            <ul class="searchList_hide">
                <li><a href="">自学备考雅思现实吗</a></li>
                <li><a href="">短视频脚本怎么写</a></li>
                <li><a href="">国王排名更新</a></li>
            </ul>
        </form>
    </div>

    <div class="btnContainer">
        <c:choose>
            <c:when test="${not empty sessionScope.user}">
        <button class="writeBtn"><a href="${pageContext.request.contextPath}/write.jsp">发帖</a></button>
        <div class="news" onclick="document.getElementsByClassName('news-menuhide')[0].className = 'news-menu'"
             onMouseLeave="document.getElementsByClassName('news-menu')[0].className = 'news-menuhide'">
            <button class="newsBtn">
                <span class="iconfont icon-xiaoxi"></span>
                <div class="count">4</div>
            </button>
            <div class="news-menuhide">
                <span class="news-arrow"></span>
                <div class="newsList">
                    <div class="newsList-tab">
                        <button class="newsBtn-current">关注</button>
                        <button>点赞</button>
                    </div>
                    <div class="newsList-content">
                        <c:forEach items="${userInfos}" var="userinfo">
                            <div class="newsList-item">
                                <span><a href="">${userinfo.username}</a></span>关注了你
                            </div>
                        </c:forEach>

                    </div>
                    <div class="newsList-content hide">
                        <div class="newsList-item">
                            <span><a href="">刘雨昕</a></span>点赞了你
                        </div>
                        <div class="newsList-item">
                            <span><a href="">xiixxi</a></span>点赞了你
                        </div>
                    </div>
                    <div class="newsList-footer">
                        <a href="">查看更多通知</a>
                    </div>
                </div>
            </div>
        </div>
        <div class="user" onclick="document.getElementsByClassName('user-menuhide')[0].className = 'user-menu'"
             onMouseLeave="document.getElementsByClassName('user-menu')[0].className = 'user-menuhide'">
            <img class="userImg" alt='' src='${sessionScope.user.avatar}'/>
            <div class="user-menuhide">
                <span class="arrow"></span>
                <span class="author-rank">${sessionScope.user.grade}</span>
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
