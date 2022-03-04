package com.example.forummanager.service;


import com.example.forummanager.Util.MapperSqlUtil;
import com.example.forummanager.mapper.CommentMapper;
import com.example.forummanager.pojo.Comment;
import com.example.forummanager.pojo.Response;
import org.springframework.stereotype.Service;

import java.util.Date;
import java.util.List;

@Service
public class CommentService {
    MapperSqlUtil mapperSqlUtil=new MapperSqlUtil();
    CommentMapper commentMapper = mapperSqlUtil.getSqlFactory(CommentMapper.class);

    //发表评论
    public boolean delverComments(Integer uid, Integer postId, String comContent, Date comTime){
        int i = commentMapper.addComments(uid, postId, comContent, comTime);
        return i>0;
    }
    //查看评论回复
    public List<Response> queryRespByCom(Integer comId){
        List<Response> responses = commentMapper.queryReplies(comId);
        return responses;
    }
    //查看用户被评论的帖子
    public List<Comment> queryCommByU(Integer uid){
        List<Comment> commentList = commentMapper.queryCommByU(uid);
        return commentList;
    }
    //查看评论及作者
    public List<Comment> queryCommentByp(Integer postId){
        List<Comment> comments = commentMapper.queryCommentByp(postId);
        return comments;
    }
}
