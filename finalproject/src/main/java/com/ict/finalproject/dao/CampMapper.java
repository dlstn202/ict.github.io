package com.ict.finalproject.dao;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.ict.finalproject.vo.CampVo;

@Mapper
public interface CampMapper {

    public List<CampVo> selectList();
    
}
