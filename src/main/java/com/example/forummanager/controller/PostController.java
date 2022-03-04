package com.example.forummanager.controller;

import com.example.forummanager.Util.SessionUserInfo;
import com.example.forummanager.pojo.*;
import com.example.forummanager.service.CommentService;
import com.example.forummanager.service.FollowService;
import com.example.forummanager.service.PostService;
import com.example.forummanager.service.ResponseService;
import com.sun.net.httpserver.HttpContext;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;



import javax.servlet.http.HttpServletRequest;
import java.util.Date;
import java.util.List;



@Controller
@RequestMapping("/post")
public class PostController {
    @Autowired
    PostService postService;
    @Autowired
    FollowService followService;
    @Autowired
    CommentService commentService;
    @Autowired
    ResponseService responseService;
    SessionUserInfo sessionUserInfo=new SessionUserInfo();
    //查询用户的关注用户的博客
    @GetMapping("/queryAllfollow.Info")
    public String queryAllfollowInfo(Model model, HttpServletRequest request){
        Integer uid=null;
        uid=sessionUserInfo.sessUser(request).getU_id();
        List<Post> posts = followService.queryAllFollowInfo(uid);
        model.addAttribute("posts",posts);
        return "follow";
    }
  //查询所有帖子
    @GetMapping("/queryAllpost")
    public String queryAll(Model model,HttpServletRequest request){
        List<Post> posts = postService.queryAll(null);
        Integer uid=null;
        try {
            uid = sessionUserInfo.sessUser(request).getU_id();
        }catch (Exception e){
            uid=null;
        }
        if(uid!=null) {
            List<UserInfo> userInfos = followService.queryFollowed(uid);
            model.addAttribute("userInfos", userInfos); //查询粉丝
        }
        model.addAttribute("posts",posts);
        return "main";
    }
    //查贴本帖详细信息
    @GetMapping("/queryPost/{postId}")
    public String queryPosts(@PathVariable("postId") Integer postId,Model model){
        List<Post> posts = postService.queryPosts(postId);
        for (Post post : posts){
            List<Comment> commentList = commentService.queryCommentByp(postId);
            for (Comment comment : commentList) {
                List<Response> responseList = commentService.queryRespByCom(comment.getComId());
                comment.setCommentRes(responseList);
            }
            post.setComments(commentList);
        }
        model.addAttribute("isPosts",posts);
        return "post";
    }

   // 发帖
    @RequestMapping ("/deliverPost")
    public String deliverPost(String title,String content,HttpServletRequest request){
        Date parse =new Date();
        Integer uid=sessionUserInfo.sessUser(request).getU_id();
        postService.addPost(uid,parse,title,content);
        return "index";
    }

    //删帖
    @GetMapping("/deletePost")
    public String deletePost(Integer postId){
        postService.deletePost(postId);
        return "forwarding/delete";
    }
    //查询用户的帖
    @GetMapping("/queryByUid")
    public String queryByUid(Model model,HttpServletRequest request){
        Integer uid=sessionUserInfo.sessUser(request).getU_id();
        List<Post> UidPosts = postService.queryAll(uid);
        model.addAttribute("UidPosts",UidPosts);
        return "people/me";
    }
}
