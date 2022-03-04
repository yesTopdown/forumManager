package com.example.forummanager.Util;

import com.example.forummanager.pojo.User;
import com.example.forummanager.pojo.UserInfo;


import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;


/**
 * 获取session中的用户信息
 */

public class SessionUserInfo {
    public UserInfo sessUser(HttpServletRequest request){
        HttpSession session = request.getSession();
        Object flg =session.getAttribute("user");
        if(flg==null){
            return null;
        }else {
            UserInfo user=(UserInfo) flg;
            return user;
        }
    }
}
