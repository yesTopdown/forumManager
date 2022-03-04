package com.example.forummanager.pojo;

import lombok.Data;
import lombok.NoArgsConstructor;

import java.util.Date;

/**
 * 用户信息表
 */
@Data //get set 方法
@NoArgsConstructor  //无参构造函数
public class UserInfo {
   private Integer u_id; //用户编号
   private String grade="V1";  //用户等级
   private String username; //用户名
   private String sex; //性别
   private Date birthday; //生日
   private String habby; //爱好
   private String profession; //职业
   private Object avatar; //默认头像
}
