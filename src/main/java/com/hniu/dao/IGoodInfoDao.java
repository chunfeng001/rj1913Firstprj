package com.hniu.dao;

import com.hniu.domain.GoodInfo;
import org.apache.ibatis.annotations.*;
import org.apache.ibatis.mapping.FetchType;

import java.util.List;

public interface IGoodInfoDao {

    //查询并排序
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
            @Result(column = "gdColor",property = "gdColor"),
            @Result(column = "gsMemoryType",property = "gsMemoryType"),
            @Result(column = "gdImagemini",property = "gdImagemini"),
            @Result(column = "tID",property = "goodtype",one = @One(select="com.hniu.dao.IGoodTypeDao.selectByID",fetchType = FetchType.EAGER))

    }
    )
    List<GoodInfo> selectGoodsByCount(Integer count);
    //查询所有的商品
    @Select("select *from goodinfo")
    @ResultMap("goodinfoMap")
    List<GoodInfo> selectAll();
    //根据商品名进行模糊查询
    @Select("select *from goodinfo where gdName like #{gdname}")
    @ResultMap("goodinfoMap")
    List<GoodInfo> selectGoodsByName(String gdname);
    //通过名字进行查询，
    @Select("select *from goodinfo where gdName=#{gdname}")
    @ResultMap("goodinfoMap")
    List<GoodInfo> selectGoodByName(String gdname);
    //通过商品名和商品类型和商品颜色进行查询
    @Select("select *from goodinfo where gdName=#{gdName} and gdMemoryType=#{gdMemoryType} and gdColor=#{gdColor}")
    @ResultMap("goodinfoMap")
    GoodInfo selectgoodBygoodobj(GoodInfo goodinfo);
    //通过商品名和商品类型查询
    @Select("select *from goodinfo where gdName=#{gdName} and gdMemoryType=#{gdMemoryType}")
    @ResultMap("goodinfoMap")
    List<GoodInfo> selectGoodsByGoodInfo(GoodInfo goodinfo);
    //根据商品类型进行查询
    @Select("select *from goodinfo where tID=#{tID}")
    List<GoodInfo> selctGoodsBytID(Integer tID);
}
