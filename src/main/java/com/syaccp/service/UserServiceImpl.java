package com.syaccp.service;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.syaccp.entity.User;
import com.syaccp.mapper.UserMapper;

@Service
public class UserServiceImpl implements UserService {
	
	@Resource
	private UserMapper userMapper;
	
	public UserServiceImpl() {
		super();
	}
	

	/* (non-Javadoc)
	 * @see com.syaccp.service.UserService#deleteByPrimaryKey(java.lang.Integer)
	 */
	@Override
	public void deleteByPrimaryKey(Integer id){
		
	}

    /* (non-Javadoc)
	 * @see com.syaccp.service.UserService#insert(com.syaccp.entity.User)
	 */
    @Override
	public void insert(User record){
    	
    }

    /* (non-Javadoc)
	 * @see com.syaccp.service.UserService#insertSelective(com.syaccp.entity.User)
	 */
    @Override
	public void insertSelective(User record){
    }

    /* (non-Javadoc)
	 * @see com.syaccp.service.UserService#findAll()
	 */
    @Override
	public List<User> findAll(){
    	List<User> listUser = userMapper.findAll();
    	for (User user : listUser) {
			System.out.println(user.getAddress());
			System.out.println(user.getPassword());
		}
    	return listUser;
    }

    public void updateByPrimaryKeySelective(User record){
    	
    }
    
    @Override
    public PageInfo<User> page(Integer pageNum, Integer pageSize){
    	PageHelper.startPage(pageNum, pageSize);
    	List<User> list=findAll();
    	PageInfo<User> pageInfo =new PageInfo<User>(list);
    	return pageInfo;
    }
	
}
