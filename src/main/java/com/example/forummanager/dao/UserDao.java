package com.example.forummanager.dao;


import com.example.forummanager.pojo.User;
import com.example.forummanager.pojo.UserInfo;

public interface UserDao {
    public UserInfo findUser(String username);

    public int addUser(String username,String password);

    public User findsUserOne(String username, String password);
}
