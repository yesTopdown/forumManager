package com.example.forummanager.pojo;

import com.fasterxml.jackson.annotation.JsonFormat;
import lombok.Data;
import lombok.NoArgsConstructor;
import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.stereotype.Component;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

/**
 * 发帖表
 */
@Data
@NoArgsConstructor
@Component
public class Post {
    private Integer postId; //贴子编号
    private UserInfo userInfo; //用户信息
    private Date postTime; //发帖时间
    private String title; //帖子题目
    private String content; //贴子内容
    private Integer likes; //点赞量
    private Integer views; //帖子浏览量
    private List<Comment> comments=new ArrayList<>(); //评论
}
