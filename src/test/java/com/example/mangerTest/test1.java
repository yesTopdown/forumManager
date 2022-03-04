package com.example.mangerTest;

import com.example.forummanager.pojo.UserInfo;
import com.example.forummanager.service.UserInfoService;
import lombok.SneakyThrows;

import org.junit.jupiter.api.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.time.LocalTime;
import java.util.Date;

public class test1 {

    @Test
    public void test1(){

        //获取当前时间对象
        Date date = new Date();

        //获取日期格式器
        DateFormat dateFormat = DateFormat.getDateInstance();
        //输出结果为  2017-3-22
        System.out.println(dateFormat.format(date));

        //获取日期/时间格式器
        dateFormat = DateFormat.getDateTimeInstance();
        //输出结果为  2017-3-22 20:45:16
        System.out.println(dateFormat.format(date));

        //自己指定格式
        dateFormat = new SimpleDateFormat("yyyy*MM*dd//kk**mm**ss");
        //输出结果为  2017*03*22//20**46**16
        System.out.println(dateFormat.format(date));
    }
}
