package com.example.forummanager.pojo;

import lombok.Data;
import lombok.NoArgsConstructor;

/**
 * 管理员
 */
@Data
@NoArgsConstructor
public class Manager {
    private Integer userInfo; //管理员编号
    private String password; //用户名
}
