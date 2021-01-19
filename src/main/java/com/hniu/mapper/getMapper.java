package com.hniu.mapper;

import com.hniu.dao.IGoodInfoDao;
import com.hniu.dao.IGoodTypeDao;
import com.hniu.dao.IScarInfoDao;
import com.hniu.dao.IUserDao;
import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;


import java.io.IOException;
import java.io.InputStream;

import static org.apache.ibatis.io.Resources.*;


public class getMapper {

    InputStream in;
    SqlSession session;
    public  SqlSession getSession() throws Exception {
        in=Resources.getResourceAsStream("SqlMapConfig.xml");
        SqlSessionFactory factory=new SqlSessionFactoryBuilder().build(in);
        session=factory.openSession(true);
        return  session;
    }
    public void closeSource() throws Exception{
       session.close();
       in.close();
    }
    public IUserDao getProxyIUserDao(getMapper mapper) throws Exception{
        session  = mapper.getSession();
       IUserDao Iuserdao=session.getMapper(IUserDao.class);
       return  Iuserdao;
    }
    public IGoodInfoDao getProxyIGoodInfoDao(getMapper mapper) throws Exception{
        session  = mapper.getSession();
        IGoodInfoDao Igoodinfodao=session.getMapper(IGoodInfoDao.class);
        return  Igoodinfodao;
    }
    public IScarInfoDao getProxyIScarInfoDao(getMapper mapper) throws Exception{
        session  = mapper.getSession();
        IScarInfoDao Iscarinfodao=session.getMapper(IScarInfoDao.class);
        return  Iscarinfodao;
    }
    public IGoodTypeDao getProxyIGoodTypeDao(getMapper mapper) throws Exception{
        session  = mapper.getSession();
        IGoodTypeDao Igoodtypeinfodao=session.getMapper(IGoodTypeDao.class);
        return  Igoodtypeinfodao;
    }
}
