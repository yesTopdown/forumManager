package com.example.forummanager.mapper;

import com.example.forummanager.pojo.Post;
import org.apache.ibatis.annotations.Param;

import java.util.Date;
import java.util.List;

public interface PostMapper {
    //发帖
    public int OutPost(@Param("uid") Integer uid,
                        @Param("postTime") Date postTime,
                        @Param("title") String title,
                        @Param("content") String content);
    //修改点赞数
    public int alterLikes(@Param("postId") Integer postId,
                          @Param("likes") Integer likes);
    //修改浏览量
    public int alterViews(@Param("postId") Integer postId,
                          @Param("views") Integer likes);
    //查询帖子和用户 帖子详情页
    public List<Post> queryPostAndUser(@Param("post_id") Integer postId);

    /**
     * 删除帖子
     * @param post_id 帖子编号
     * @return
     */
    public int deletePost(Integer post_id);

    /**
     * 查询所有表
     * @return
     */
    public List<Post> queryAllPost(Integer uid);
}
