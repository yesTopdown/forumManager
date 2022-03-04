package com.example.forummanager.mapper;

import com.example.forummanager.pojo.UserInfo;
import org.apache.ibatis.annotations.Param;

import java.util.Date;

public interface UserInfoMapper {
    //查询对应的用户id的用户信息
    public UserInfo queryUserInfoById(Integer uid);
    //修改用户的信息
    public int alterUserInfo(@Param("uid") Integer uid, @Param("username") String username,
                             @Param("sex") String sex,
                             @Param("birthday") Date birthday, @Param("habby") String habby,
                             @Param("profession") String profession, @Param("avatar") Object avatar);
}
