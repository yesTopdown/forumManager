package com.example.forummanager.controller;



import com.example.forummanager.pojo.User;
import com.example.forummanager.pojo.UserInfo;
import com.example.forummanager.service.UserService;
import com.example.forummanager.service.UserServiceImpl;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@Controller
public class LoginServlet {
    @RequestMapping("/loginServlet")
     String login(HttpServletRequest request, HttpServletResponse response) throws Exception {
        request.setCharacterEncoding("utf-8");
        String username = request.getParameter("username");
        String password = request.getParameter("password");
        UserService userService = new UserServiceImpl();
        User user =userService.findsOne(username,password);
        if(user!=null){
            UserInfo userInfo = userService.findUser(username);
            request.getSession().setAttribute("user",userInfo);
            return "index";

        }else{
         //   request.getRequestDispatcher("/login.jsp").forward(request,response);
            return "login";
        }
    }

}
