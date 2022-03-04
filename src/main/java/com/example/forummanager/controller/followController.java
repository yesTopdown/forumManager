package com.example.forummanager.controller;

import com.example.forummanager.Util.SessionUserInfo;
import com.example.forummanager.pojo.User;
import com.example.forummanager.pojo.UserInfo;
import com.example.forummanager.service.FollowService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpServletRequest;
import java.util.List;


@Controller
@RequestMapping("follow")
public class followController {
    @Autowired
    FollowService followService;
    SessionUserInfo sessionUserInfo=new SessionUserInfo();
    //查找粉丝
    @GetMapping("/followed")
    public String queryFans(Model model, HttpServletRequest request){
        Integer uid=sessionUserInfo.sessUser(request).getU_id();
        List<UserInfo> userInfos = followService.queryFollowed(uid);
        model.addAttribute("followedInfos",userInfos);
        return "people/follower";
    }

    //查看关注用户
    @RequestMapping("/user.Info")
    public String queryUser(Model model,HttpServletRequest request){
        Integer uid=sessionUserInfo.sessUser(request).getU_id();
        List<UserInfo> userInfos = followService.queryFollows(uid);
        model.addAttribute("followInfos",userInfos);
        return "people/following";
    }
    //添加关注用户
    @GetMapping("/addFollow")
    @ResponseBody
    public String addFollow(HttpServletRequest request, Integer followId){
        Integer uid=sessionUserInfo.sessUser(request).getU_id();
        System.out.println("**********"+uid);
        boolean b = followService.addFollow(followId, uid);
        return "关注成功";
    }
}
