package com.example.forummanager.pojo;

import lombok.Data;
import lombok.NoArgsConstructor;

import java.util.ArrayList;
import java.util.List;

/**
 * 用户表
 */
@Data
@NoArgsConstructor
public class User {
    private Integer uid; //用户id
    private String username; //用户名
    private String password; //用户密码
    private List<Post> posts=new ArrayList<>();//每个人发多个帖子
}
