package com.example.forummanager.service;

import com.example.forummanager.pojo.Post;
import com.example.forummanager.pojo.UserInfo;
import org.junit.jupiter.api.Test;

import java.util.List;

import static org.junit.jupiter.api.Assertions.*;

class FollowServiceTest {
    FollowService followService=new FollowService();
    @Test
    void addFollow() {
    }

    @Test
    void queryFollows() {
        List<UserInfo> userInfos = followService.queryFollows(1);
        System.out.println(userInfos);
    }

    @Test
    void queryFollowed() {
    }

    @Test
    void queryAllFollowInfo() {
        List<Post> posts = followService.queryAllFollowInfo(1);
        for (Post post : posts) {
            System.out.println(post);
        }
    }
}