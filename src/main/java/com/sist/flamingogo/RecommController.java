package com.sist.flamingogo;

import javax.servlet.http.HttpServletRequest;

import com.sist.controller.Controller;
import com.sist.controller.RequestMapping;

@Controller("rc")
public class RecommController {
	@RequestMapping("recomm.do")
	public String recomm(HttpServletRequest req)
	{
		System.out.println("recomm");
		req.setAttribute("jsp", "../recommend/recomm.jsp");
		return "user/main/main.jsp";
	}
	
	@RequestMapping("hot_restaurant.do")
	public String hot_restaurant(HttpServletRequest req)
	{
		System.out.println("hot_restaurant");
		req.setAttribute("jsp", "../recommend/hot_restaurant.jsp");
		return "user/main/main.jsp";
	}
	@RequestMapping("hot_stay.do")
	public String hot_stay(HttpServletRequest req)
	{
		System.out.println("hot_stay");
		req.setAttribute("jsp", "../recommend/hot_stay.jsp");
		return "user/main/main.jsp";
	}
}
