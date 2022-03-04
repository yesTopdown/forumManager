package com.example.forummanager.pojo;

import lombok.Data;
import lombok.NoArgsConstructor;

/**
 * 关注人
 */
@Data
@NoArgsConstructor
public class Follow {
    private Integer followId; //关注的人
    private Integer followedId; //被关注的人
}
