package com.example.forummanager.service;


import com.example.forummanager.dao.UserDao;
import com.example.forummanager.dao.impl.UserDaoImpl;
import com.example.forummanager.pojo.User;
import com.example.forummanager.pojo.UserInfo;

public class UserServiceImpl implements UserService {

    private UserDao userDao=new UserDaoImpl();

    @Override
    public UserInfo findUser(String username ) {
        return userDao.findUser(username);
    }

    @Override
    public int addUser(String username, String password) {
        return userDao.addUser(username,password);
    }

    @Override
    public User findsOne(String username,String password) {
        User user = userDao.findsUserOne(username, password);
        return user;
    }
}
