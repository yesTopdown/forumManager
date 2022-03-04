package com.example.forummanager.service;


import com.example.forummanager.Util.MapperSqlUtil;
import com.example.forummanager.mapper.PostMapper;
import com.example.forummanager.pojo.Post;
import org.springframework.stereotype.Service;

import java.util.Date;
import java.util.List;

@Service
public class PostService {
    MapperSqlUtil mapperSqlUtil=new MapperSqlUtil();
    PostMapper postMapper = mapperSqlUtil.getSqlFactory(PostMapper.class);
    //查询全部post 或者 用户得post
    public List<Post> queryAll(Integer uid){
        List<Post> posts = postMapper.queryAllPost(uid);
        return posts;
    }

    public boolean reLikes(Integer postId,Integer likes){
        int i = postMapper.alterViews(postId, likes);
        return i>0;
    }
    /**
     * 修改浏览量
     * @param postId 帖子编号
     * @param views  浏览量
     * @return
     */
    public boolean reView(Integer postId,Integer views){
        int i = postMapper.alterViews(postId, views);
        return i>0;
    }
    /**
     * 删除帖子
     * @param postId 帖子id
     * @return 0
     */
   public boolean deletePost(Integer postId){
       int i = postMapper.deletePost(postId);
       return i>0;
   }
    /**
     * 查询帖子详情
     * @param postId 贴子编号
     * @return 查询帖子集合
     */
    public List<Post> queryPosts(Integer postId){
        List<Post> posts = postMapper.queryPostAndUser(postId);
        return posts;
    }

    /**
     * 发帖
     * @param uid 发帖作者
     * @param postTime 发帖时间
     * @param content 发帖内容
     * @return 0
     */
    public boolean addPost(Integer uid, Date postTime,String title,String content){
        int i = postMapper.OutPost(uid,postTime,title,content);
        return i>0;
    }
}
