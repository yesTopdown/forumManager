package com.example.forummanager.pojo;

import lombok.Data;
import lombok.NoArgsConstructor;

import java.util.Date;

/**
 * 回复表
 */
@Data
@NoArgsConstructor
public class Response {
    private Integer uid; //用户编号
    private UserInfo userInfo; //用户信息
    private Integer reid; //评论id
    private String wrContent; //回复内容
    private Date wrTime; //回复时间
}
