package com.example.forummanager.mapper;

import com.example.forummanager.pojo.Post;
import com.example.forummanager.pojo.User;
import com.example.forummanager.pojo.UserInfo;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface FollowMapper {
    /**
     * 查询用户关注的人博客
     * @param uid 用户编号
     * @return
     */
    public List<Post> queryAllFollowInfo(Integer uid);
    /**
     * 查询所有关注的人
     * @param uid 用户编号
     * @return 用户集合
     */
    public List<UserInfo> queryAllFollows(Integer uid);

    /**
     * 查询自己关注的人
     * @param uid 用户编号
     * @return 用户集合
     */
    public List<UserInfo> queryWasFolloweds(Integer uid);

    /**
     * 关注用户
     * @param follow 关注者
     * @param followed 被关注者
     * @return
     */
    public int addFollows(@Param("follow") Integer follow,@Param("followed") Integer followed);
}
