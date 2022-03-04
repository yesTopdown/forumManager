package com.example.forummanager.mapper;

import com.example.forummanager.pojo.Response;
import org.apache.ibatis.annotations.Param;

import java.util.Date;
import java.util.List;

public interface ResponseMapper {


    /**
     * 添加回复
     * @param com_id 评论id
     * @param u_id 用户id
     * @param wr_content 回复内容
     * @param wr_time 创建时间
     * @return
     */
    public int addReply(@Param("com_id") Integer com_id,
                             @Param("u_id") Integer u_id,
                             @Param("wr_content") String wr_content,
                             @Param("wr_time") Date wr_time);
}
