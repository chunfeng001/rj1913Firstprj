package com.hniu.daoMethod;

import com.hniu.dao.IGoodInfoDao;
import com.hniu.dao.IGoodTypeDao;
import com.hniu.dao.IUserDao;
import com.hniu.domain.GoodInfo;
import com.hniu.domain.GoodType;
import com.hniu.domain.UserInfo;
import com.hniu.mapper.getMapper;
import org.junit.Test;

import java.util.List;

public class getData {
    public List<GoodInfo> getIndexHTMLGoodsBycount(Integer count) throws Exception{
        getMapper mapper=new getMapper();
        IGoodInfoDao dao = mapper.getProxyIGoodInfoDao(mapper);
        List<GoodInfo> goodInfos =dao.selectGoodsByCount(count);
        mapper.closeSource();
        return  goodInfos;
    }
    public List<GoodInfo> getGoodInfoByName(String gdname) throws Exception{
        getMapper mapper=new getMapper();
        IGoodInfoDao dao=mapper.getProxyIGoodInfoDao(mapper);
        List<GoodInfo> goodInfos=dao.selectGoodsByName(gdname);
        mapper.closeSource();
        return  goodInfos;
    }
    public   List<GoodInfo> getGoodByName(String gdname) throws Exception{
        getMapper mapper=new getMapper();
        IGoodInfoDao dao=mapper.getProxyIGoodInfoDao(mapper);
        List<GoodInfo> goodinfo = dao.selectGoodByName(gdname);
        mapper.closeSource();
        return  goodinfo;
    }
    public  GoodInfo getGoodByGoodObj(GoodInfo goodInfo) throws Exception{
        getMapper mapper=new getMapper();
        IGoodInfoDao dao=mapper.getProxyIGoodInfoDao(mapper);
        GoodInfo good = dao.selectgoodBygoodobj(goodInfo);
        mapper.closeSource();
        return  good;
    }
    public UserInfo getUserByName(String username) throws Exception {
        getMapper mapper=new getMapper();
        IUserDao dao=mapper.getProxyIUserDao(mapper);
        UserInfo  user=dao.selectUserByName(username);
        return  user;
    }
    public   List<GoodInfo> getGoodsByGoodInfo(GoodInfo goodInfo) throws Exception{
        getMapper mapper=new getMapper();
        IGoodInfoDao dao=mapper.getProxyIGoodInfoDao(mapper);
        List<GoodInfo> goods = dao.selectGoodsByGoodInfo(goodInfo);
        mapper.closeSource();
        return  goods;
    }
    public   GoodType getGoodByType(String tname) throws Exception{
        getMapper mapper=new getMapper();
        IGoodTypeDao dao=mapper.getProxyIGoodTypeDao(mapper);
        GoodType goodtype = dao.selectByTypeName(tname);
        mapper.closeSource();
        return  goodtype;
    }

    public   List<GoodType> getGoodtypesBytypeName(String tname) throws Exception{
        getMapper mapper=new getMapper();
        IGoodTypeDao dao=mapper.getProxyIGoodTypeDao(mapper);
        List<GoodType> goodtypes = dao.selectBytName(tname);
        mapper.closeSource();
        return  goodtypes;
    }

//明天改造goodlist 和scar 界面
    @Test
    public void testgetindexHtmltest() throws Exception {
      getData data=new getData();
        GoodType  goodtype=data.getGoodByType("小米手机");
        List<GoodInfo> goodInfos= goodtype.getGoodinfos();
        for(GoodInfo goodInfo :goodInfos){
            System.out.println(goodInfo);
        }
    }
}
