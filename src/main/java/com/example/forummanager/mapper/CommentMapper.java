package com.example.forummanager.mapper;

import com.example.forummanager.pojo.Comment;
import com.example.forummanager.pojo.Response;
import org.apache.ibatis.annotations.Param;

import java.util.Date;
import java.util.List;

public interface CommentMapper {
    /**
     * 添加评论
     * @param u_id 评论的作者
     * @param post_id 帖子编号
     * @param com_content 评论内容
     * @param com_time 评论时间
     * @return
     */
  public int addComments(@Param("u_id") Integer u_id,
                         @Param("post_id")Integer post_id,
                         @Param("com_content")String com_content,
                         @Param("com_time")Date com_time);
    /**
     * 根据评论查询回复
     * post_id 帖子编号
     */
    public List<Response> queryReplies(@Param("com_id") Integer comId);

    /**
     * 查询用户被评论的帖子
     * @param uid 用户id
     * @return 返回评论结果
     */
    public List<Comment> queryCommByU(Integer uid);

  /**
   * 根据帖子id查询评论
   * @param pId
   * @return
   */
    public List<Comment> queryCommentByp(Integer pId);
}
