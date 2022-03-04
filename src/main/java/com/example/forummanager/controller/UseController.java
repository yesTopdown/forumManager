package com.example.forummanager.controller;

import com.example.forummanager.Util.SessionUserInfo;
import com.example.forummanager.pojo.User;

import com.example.forummanager.pojo.UserInfo;
import com.example.forummanager.service.UserInfoService;
import com.example.forummanager.service.UserService;
import com.example.forummanager.service.UserServiceImpl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.io.File;
import java.io.IOException;
import java.util.Date;

@Controller
@RequestMapping("/user")
public class UseController {
    @Autowired
    UserInfoService userInfoService;
    UserService userService=new UserServiceImpl();
    /**
     * 用户退出
     */
    @RequestMapping("/loginOut")
      public ModelAndView loginOut(HttpSession session){
        session.removeAttribute("user"); //移除用户
        ModelAndView modelAndView=new ModelAndView();
        modelAndView.setViewName("redirect:/index.jsp");
        return modelAndView;
      }
    /**
     * 修改信息
     */
    @RequestMapping("/alterInfo")
    public String alterUserInfo(String username, String sex, String birthday,
                         String profession, String habby, MultipartFile avatar,
                                HttpServletRequest request){
        SessionUserInfo sessionUserInfo=new SessionUserInfo();
        String filepath=null;
        String rPath=null;
        String fileP=null;
        if(!avatar.isEmpty()) {
            String contextPath = request.getContextPath();
            String PATH = "D:\\前端\\论坛管理系统\\src\\main\\webapp\\avatar";
            filepath = avatar.getOriginalFilename();
            int port=request.getLocalPort();
            rPath="http://localhost:"+port+contextPath+"/avatar/"+filepath;
            File targetFile=new File(PATH,filepath);
            fileP=PATH+"\\"+filepath;
            if (!targetFile.exists()) {
                targetFile.mkdirs();
            }
            try {
                avatar.transferTo(targetFile);
            } catch (IOException e) {
                e.printStackTrace();
            }
        }
        Integer uid=sessionUserInfo.sessUser(request).getU_id();
        Date date=new Date();
        boolean b = userInfoService.alterUserInfo(username, sex, date,
                profession, habby,rPath , uid); //修改信息
        //修改session中的值
        UserInfo userInfo = userService.findUser(username);
        HttpSession session = request.getSession();
        session.setAttribute("user",userInfo);
        return "people/me";
    }
    /**
     * 查询用户信息
     */
    @RequestMapping("/queryInfo")
    public String queryUser(HttpServletRequest request){
//        SessionUserInfo sessionUserInfo=new SessionUserInfo();
//        HttpSession session = request.getSession();
//        UserInfo userInfo1 = (UserInfo) session.getAttribute("user");
//        Integer uid=userInfo1.getU_id();
//        UserInfo userInfo = userInfoService.findUserInfo(uid);
//        System.out.println("----------------------------------"+userInfo);
        return "people/edit";
    }

}
