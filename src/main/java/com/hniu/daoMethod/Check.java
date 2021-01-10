package com.hniu.daoMethod;

import com.hniu.dao.IUserDao;
import com.hniu.domain.UserInfo;
import com.hniu.mapper.getMapper;
import org.apache.ibatis.jdbc.SQL;
import org.apache.ibatis.session.SqlSession;
import org.junit.Test;

public class Check  {

    public boolean loginCheck(UserInfo user) throws Exception{
        boolean flag =false;
        getMapper mapper=new getMapper();
        IUserDao userDao= mapper.getProxyIUserDao(mapper);
        UserInfo userinfo=userDao.selectByNamePwd(user);
        if (userinfo!=null){
            flag =true;
        }
        mapper.closeSource();
        return  flag;
    }
   @Test
    public void testLoginChectk() throws Exception{
       String username="Jack";
       String pwd="12345";
       UserInfo user=new UserInfo();
       user.setuName(username);
       user.setuPwd(pwd);
        Check check=new Check();
       System.out.println(check.loginCheck(user));
   }
}
