package com.example.forummanager.pojo;

import lombok.Data;
import lombok.NoArgsConstructor;

import java.util.Date;
import java.util.List;

/**
 * 评论表
 */
@Data
@NoArgsConstructor
public class Comment {
    private Integer comId;//评论编号
    private UserInfo userInfo;//用户
    private List<Response> commentRes; //所有回复
    private Integer post_id; //帖子编号
    private String com_content;// 评论内容
    private Date com_time; //评论时间
    private Post post;//评论帖子
}
