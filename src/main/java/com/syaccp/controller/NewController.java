package com.syaccp.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.syaccp.entity.User;


@Controller
@RequestMapping("/news")
public class NewController {

	public NewController() {
		super();
		// TODO Auto-generated constructor stub
		System.out.println(222);
	}
	
	/*@RequestMapping()
	public String save(){
		
		return "";
	}*/
	
	@RequestMapping(value="",method=RequestMethod.GET)
	public String list(ModelMap map){
		map.put("aa", "邓永建真帅");
		System.out.println("NewsController list");
		
		return "news/news-list";
	}
	
	@RequestMapping(value="/delete/{id}/{ccc}",method=RequestMethod.GET)
	public String delete(@PathVariable(value="id")Integer bb,@PathVariable(value="ccc")Integer ccc){
		System.out.println(bb);
		return "redirect:/news";
	}
	
	@RequestMapping(value="/save",method=RequestMethod.POST)
	public String save(User news){
		/*for (Student student : news.getList()) {
			System.out.println(student.getName());
		}*/
		return "redirect:/news";
	}
	
	
	@RequestMapping(value="/add")
	public String add(){
		System.out.println("add方法");
		return "news/news-add";
	}
	
}
