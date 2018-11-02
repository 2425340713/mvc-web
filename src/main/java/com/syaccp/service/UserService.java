package com.syaccp.service;

import java.util.List;

import com.github.pagehelper.PageInfo;
import com.syaccp.entity.User;

public interface UserService {

	void deleteByPrimaryKey(Integer id);

	void insert(User record);

	void insertSelective(User record);

	List<User> findAll();

	public PageInfo<User> page(Integer pageNum, Integer pageSize);
}