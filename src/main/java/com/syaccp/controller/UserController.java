package com.syaccp.controller;

import java.beans.PropertyEditorSupport;
import java.util.Date;
import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.github.pagehelper.PageInfo;
import com.syaccp.entity.User;
import com.syaccp.service.UserService;

@Controller
@RequestMapping("/user")
public class UserController {

	@Resource
	private UserService userService;
	
	public UserController() {
		super();
		System.out.println("UserController造出来");
	}
	
	
	@InitBinder
	protected void initBinder(WebDataBinder binder) {
		// String类型转换，将所有传递进来的String进行HTML编码，防止XSS攻击

		// Date 类型转换
		binder.registerCustomEditor(Date.class, new PropertyEditorSupport() {
			@Override
			public void setAsText(String text) {
				setValue(DateUtils.parseDate(text));
			}

		});
	}
	
	@RequestMapping(value="", method = RequestMethod.GET)
	public String list(ModelMap map){
		/*map.put("list", userService.findAll());*/
		PageInfo<User> pageInfo=userService.page(1, 2);
		List<User> findAll = pageInfo.getList();
		map.addAttribute("listUser", findAll);
	/*	List<User> listUser = userService.findAll();
		map.addAttribute("listUser", listUser);*/
		return "user/user";
	}
	
	
	

	
}
