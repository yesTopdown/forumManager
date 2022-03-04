package com.example.forummanager.service;

import com.example.forummanager.pojo.User;
import com.example.forummanager.pojo.UserInfo;
import org.junit.jupiter.api.Test;
import org.springframework.util.SocketUtils;

import static org.junit.jupiter.api.Assertions.*;

class UserServiceImplTest {
    UserService userService=new UserServiceImpl();
    @Test
    void findUser() {
        UserInfo user = userService.findUser("zhnagsan");
    }

    @Test
    void addUser() {
        int i = userService.addUser("zhnagsan", "123456");
        System.out.println(i);
    }
}