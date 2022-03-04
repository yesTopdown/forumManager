package com.example.forummanager.mapper;

import com.example.forummanager.pojo.User;
import org.apache.ibatis.annotations.Param;


public interface UserMapper {
    /**
     * 查询用户自己的帖子
     */
    public User queryAllPosts(Integer uid);

    /**
     * 添加新用户
     */
    public int addUser(@Param("username") String username, @Param("password") String password);
}
