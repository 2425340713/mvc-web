package com.syaccp.mapper;

import java.util.List;

import com.syaccp.entity.User;

public interface UserMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(User record);

    int insertSelective(User record);

    List<User> findAll();

    int updateByPrimaryKeySelective(User record);

    
}