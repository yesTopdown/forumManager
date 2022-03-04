package com.example.forummanager.pojo;

import lombok.Data;
import lombok.NoArgsConstructor;

/**
 * 用户等级表
 */
@Data
@NoArgsConstructor
public class Grade {
    private String name; //等级名
    private Integer maxNum; //最大值
    private Integer minNum; //最小值
}
