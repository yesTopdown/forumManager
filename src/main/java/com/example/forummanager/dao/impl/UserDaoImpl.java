package com.example.forummanager.dao.impl;


import com.example.forummanager.Util.druidUtils;
import com.example.forummanager.dao.UserDao;
import com.example.forummanager.pojo.User;
import com.example.forummanager.pojo.UserInfo;
import org.springframework.dao.EmptyResultDataAccessException;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;

import java.util.List;

public class UserDaoImpl implements UserDao {

    JdbcTemplate jdbcTemplate=new JdbcTemplate(druidUtils.getDataSource());

    @Override
    public UserInfo findUser(String username) {
        String sql="select * from user_info where username = ? ";
        UserInfo userInfo=null;
        try {
            userInfo = jdbcTemplate.queryForObject(sql, new BeanPropertyRowMapper<>(UserInfo.class), username);

        }catch (EmptyResultDataAccessException e){
            return null;
        }
        return userInfo;
    }

    @Override
    public int addUser(String username, String password) {
        String sql="insert into p_user values(null,?,?)";
        String sql1="insert into user_info(username) values(?)";
        int i = jdbcTemplate.update(sql, username, password);
        jdbcTemplate.update(sql1,username);
        return i;
    }

    @Override
    public User findsUserOne(String username, String password) {
        String sql="select * from p_user where username=? and password=?";
        User user=null;
        try{
            user = jdbcTemplate.queryForObject(sql, new BeanPropertyRowMapper<>(User.class), username, password);
        }catch (EmptyResultDataAccessException e){
            return null;
        }
        return user;
    }


}
