package com.hniu.dao;

import com.hniu.domain.GoodInfo;
import org.apache.ibatis.annotations.*;
import org.apache.ibatis.mapping.FetchType;

import java.util.List;

public interface IGoodInfoDao {

    @Select("select *from goodinfo where gdInfo like '%活动%' limit 0,#{count}")
    @Results(id ="goodinfoMap",
    value={
            @Result(id=true,column = "gdID",property = "gdID"),
            @Result(column = "tID",property = "tID"),
            @Result(column = "gdName",property = "gdName"),
            @Result(column = "gdPrice",property = "gdPrice"),
            @Result(column = "gdQuantity",property = "gdQuantity"),
            @Result(column = "gdSaleQty",property = "gdSaleQty"),
            @Result(column = "gdCity",property = "gdCity"),
            @Result(column = "gdImage",property = "gdImage"),
            @Result(column = "gdInfo",property = "gdInfo"),
            @Result(column = "gdAddTime",property = "gdAddTime"),
            @Result(column = "tID",property = "goodtype",one = @One(select="com.hniu.dao.IGoodTypeDao.selectByID",fetchType = FetchType.EAGER))

    }
    )
    List<GoodInfo> selectGoodsByCount(Integer count);
    //查询所有的商品
    @Select("select *from goodinfo")
    List<GoodInfo> selectAll();
}
