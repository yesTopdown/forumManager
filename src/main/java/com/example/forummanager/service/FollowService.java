package com.example.forummanager.service;

import com.example.forummanager.Util.MapperSqlUtil;
import com.example.forummanager.mapper.FollowMapper;
import com.example.forummanager.pojo.Post;
import com.example.forummanager.pojo.UserInfo;
import org.springframework.stereotype.Service;
import org.springframework.web.bind.annotation.SessionAttribute;

import java.util.List;

@Service("followService")
public class FollowService {
    MapperSqlUtil mapperSqlUtil=new MapperSqlUtil();
    FollowMapper followMapper = mapperSqlUtil.getSqlFactory(FollowMapper.class);
    //关注某人
    public boolean addFollow(Integer uid, Integer followedId){
        int i = followMapper.addFollows(uid, followedId);
        return i>0;
    }
    //查询关注的人
    public List<UserInfo> queryFollows(Integer uid){
        List<UserInfo> userInfos = followMapper.queryAllFollows(uid);
        return userInfos;
    }
    //查询粉丝
    public List<UserInfo> queryFollowed(Integer uid){
        List<UserInfo> userInfos = followMapper.queryWasFolloweds(uid);
        return userInfos;

    }
    //查询用户关注的用户博客
    public List<Post> queryAllFollowInfo(Integer uid){
        List<Post> posts = followMapper.queryAllFollowInfo(uid);
        return posts;
    }

}
