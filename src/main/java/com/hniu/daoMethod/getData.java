package com.hniu.daoMethod;

import com.hniu.dao.IGoodInfoDao;
import com.hniu.domain.GoodInfo;
import com.hniu.mapper.getMapper;
import org.junit.Test;

import java.util.List;

public class getData {
    public List<GoodInfo> getIndexHTMLGoodsBycount(Integer count) throws Exception{
        getMapper mapper=new getMapper();
        IGoodInfoDao dao = mapper.getProxyIGoodInfoDao(mapper);
        List<GoodInfo> goodInfos =dao.selectGoodsByCount(count);
        return  goodInfos;
    }
    @Test
    public void testgetindexHtmltest(){
        try {
            List<GoodInfo> goodinfos= getIndexHTMLGoodsBycount(1);
            for(GoodInfo goodinfo:goodinfos){
                System.out.println(goodinfo);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
