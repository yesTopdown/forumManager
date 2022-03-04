package com.example.forummanager.controller;

import com.example.forummanager.Util.SessionUserInfo;
import com.example.forummanager.pojo.Comment;
import com.example.forummanager.pojo.Response;
import com.example.forummanager.pojo.User;
import com.example.forummanager.pojo.UserInfo;
import com.example.forummanager.service.CommentService;
import com.example.forummanager.service.ResponseService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import java.util.Collection;
import java.util.Date;
import java.util.List;
import java.util.Map;

@Controller
@RequestMapping("/comment")
public class CommentController {
    @Autowired
    CommentService commentService;
    @Autowired
    ResponseService responseService;
    SessionUserInfo sessionUserInfo=new SessionUserInfo();
    //评论
    @GetMapping("/reComment/{postId}")
    public ModelAndView reComment(@PathVariable("postId") Integer postId, String comment, HttpServletRequest request){
        Integer uid=sessionUserInfo.sessUser(request).getU_id();
        Date commentTime=new Date();
        ModelAndView modelAndView=new ModelAndView();
        boolean b = commentService.delverComments(uid, postId, comment, commentTime);
        modelAndView.addObject("postId",postId);
        modelAndView.setViewName("/forwarding/commentfor");
        return modelAndView;
    }
    //添加评论回复
    @RequestMapping("addResp/{postId}/{comId}")
    public String addResp(@PathVariable("postId") Integer postId,
                          @PathVariable("comId") Integer comId,String comment,
                          Model model,HttpServletRequest request){
        Integer uid=sessionUserInfo.sessUser(request).getU_id();
        responseService.addRespCom(comId,uid,comment,new Date());
        model.addAttribute("postId",postId);
        return "/forwarding/commentfor";
    }
    //查询用户的被评论
    @RequestMapping("/commentU")
    public String lookComment(Model model,HttpServletRequest request){
        Integer uid=sessionUserInfo.sessUser(request).getU_id();
        List<Comment> comments = commentService.queryCommByU(uid);
        model.addAttribute("comments",comments);
        return "people/comment";
    }


}
