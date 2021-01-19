package com.hniu.dao;

import com.hniu.domain.UserInfo;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Result;
import org.apache.ibatis.annotations.ResultMap;
import org.apache.ibatis.annotations.Select;

import java.util.List;


public interface IUserDao {
     //查找所有用户
     @Select("select *from userinfo")
     List<UserInfo> selectAll();
     //通过用户名和密码进行查找
     @Select("select *from userinfo where uName=#{uName} and uPwd=#{uPwd}")
     UserInfo selectByNamePwd(UserInfo user);
     //注册账号
     @Insert("insert into userinfo(`uID`,`uName`,`uPwd`,`uSex`,`uBirthday`,`uPhone`,`uEmail`,`uQQ`,`uAddress`) values(default,#{uName},#{uPwd},#{uSex},#{uBirthday},#{uPhone},#{uEmail},#{uQQ},#{uAddress})")
     boolean registerByUser(UserInfo user);
     //根据用户名查找user
     @Select("select *from userinfo where uName=#{username}")
     UserInfo selectUserByName(String username);
}
