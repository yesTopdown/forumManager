package com.example.forummanager.service;

import com.example.forummanager.Util.MapperSqlUtil;
import com.example.forummanager.mapper.ResponseMapper;
import com.example.forummanager.mapper.UserInfoMapper;
import com.example.forummanager.pojo.Response;
import org.springframework.stereotype.Service;

import java.util.Date;

@Service
public class ResponseService {
    MapperSqlUtil mapperSqlUtil=new MapperSqlUtil();
    ResponseMapper responseMapper = mapperSqlUtil.getSqlFactory(ResponseMapper.class);
    //回复评论
    public int addRespCom(Integer comId, Integer reId, String content, Date reTime){
        int response = responseMapper.addReply(comId, reId, content, reTime);
        return response;
    }
}
