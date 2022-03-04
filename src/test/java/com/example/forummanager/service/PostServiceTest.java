package com.example.forummanager.service;

import com.example.forummanager.pojo.Post;
import org.junit.jupiter.api.Test;

import java.util.List;

import static org.junit.jupiter.api.Assertions.*;

class PostServiceTest {
    PostService postService=new PostService();
    @Test
    void queryPosts() {
        List<Post> posts = postService.queryPosts(1);
        for (Post post : posts) {
            System.out.println(post);
        }
    }
}