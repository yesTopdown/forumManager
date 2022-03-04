package com.example.forummanager.service;


import com.example.forummanager.pojo.User;
import com.example.forummanager.pojo.UserInfo;

public interface UserService {
    public UserInfo findUser(String username);

    public int addUser(String username,String password);

    public User findsOne(String username, String password);
}
