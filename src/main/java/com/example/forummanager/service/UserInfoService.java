package com.example.forummanager.service;

import com.example.forummanager.Util.MapperSqlUtil;
import com.example.forummanager.Util.SessionUserInfo;
import com.example.forummanager.mapper.UserInfoMapper;
import com.example.forummanager.pojo.UserInfo;
import org.springframework.stereotype.Service;


import java.util.Date;

@Service
public class UserInfoService {
    MapperSqlUtil mapperSqlUtil=new MapperSqlUtil();
    UserInfoMapper userMapper = mapperSqlUtil.getSqlFactory(UserInfoMapper.class);
    /**
     * 查询用户根据用户id查询用户信息
     */
    public UserInfo findUserInfo(Integer id){

        UserInfo userInfo = userMapper.queryUserInfoById(id);
        return userInfo;
    }
    /**
     * 修改用户的信息
     */
    public boolean alterUserInfo(String username, String sex, Date birthday,
                                 String profession, String habby, Object avatar,Integer uid){
        int i = userMapper.alterUserInfo(uid, username, sex, birthday, habby, profession, avatar);
        //i>0 修改成功，<0 修改失败
        return i>0;
    }
}
