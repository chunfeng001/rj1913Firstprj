package com.hniu.dao;

import com.hniu.domain.GoodType;
import org.apache.ibatis.annotations.*;
import org.apache.ibatis.mapping.FetchType;

import java.util.List;

public interface IGoodTypeDao {
    //根据指定ID查询商品类型
    @Select("select *from goodtype where tID=#{tID}")
    GoodType selectByID(Integer id);
    //根据指定商品查找指定商品类型
    @Select("select *from goodtype where tName like #{tName}")
    List<GoodType> selectBytName(String  tName);
    //查询所有类别
    @Select("select *from goodtype")
    List<GoodType> selectAll();
    //根据类别名称查找所有的商品
    @Select("select * from goodtype where tName like #{tName}")
    @Results(id="goodtypeMap",
            value = {
                    @Result(id=true,column = "tID",property = "tID"),
                    @Result(column = "tName",property = "tName"),
                    @Result(column = "tID",property = "goodinfos",many = @Many(select = "com.hniu.dao.IGoodInfoDao.selctGoodsBytID",fetchType = FetchType.LAZY))
            }
    )
    GoodType selectByTypeName(String tName);



}
