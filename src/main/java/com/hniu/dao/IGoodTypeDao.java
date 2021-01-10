package com.hniu.dao;

import com.hniu.domain.GoodType;
import org.apache.ibatis.annotations.Select;

import java.util.List;

public interface IGoodTypeDao {
    //根据指定ID查询商品类型
    @Select("select *from goodtype where tID=#{tID}")
    GoodType selectByID(Integer id);
    //查询所有类别
    @Select("select *from goodtype")
    List<GoodType> selectAll();
}
