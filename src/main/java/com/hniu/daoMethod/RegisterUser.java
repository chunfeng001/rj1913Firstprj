package com.hniu.daoMethod;

import com.hniu.dao.IUserDao;
import com.hniu.domain.UserInfo;
import com.hniu.mapper.getMapper;
import org.junit.Test;

public class RegisterUser {
    /**
     * 注册用户的方法
     * @param user 用户
     * @return boolean 类型
     * @throws Exception
     */
    public boolean registerUser(UserInfo user) throws Exception{
        boolean flag=false;
        getMapper mapper=new getMapper();
        IUserDao userDao= mapper.getProxyIUserDao(mapper);
        flag=userDao.registerByUser(user);
         mapper.closeSource();
        return  flag;
    }
    //测试是否注册成功
//    @Test
//    public void testregisteruser()throws Exception{
//        UserInfo user=new UserInfo();
//        user.setuName("james");
//        user.setuPwd("123456");
//        System.out.println(registerUser(user));
//    }

}
