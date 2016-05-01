package com.sist.flamingogo;

import javax.servlet.http.HttpServletRequest;

import com.sist.controller.Controller;
import com.sist.controller.RequestMapping;

@Controller("myc")
public class MyController {



	@RequestMapping("mypage.do")
	public String mypageDefault(HttpServletRequest req)
	{
		System.out.println("mypage");
		req.setAttribute("jsp", "../my/myPlanner.jsp");
		return "user/main/main.jsp";
	}
	
	@RequestMapping("myPlanner.do")
	public String gomyplanner(HttpServletRequest req)
	{
		System.out.println("myPlanner");
		req.setAttribute("jsp", "../my/myPlanner.jsp");
		return "user/main/main.jsp";
	}
	
	@RequestMapping("myTour.do")
	public String gomyTour(HttpServletRequest req)
	{
		System.out.println("myTour");
		req.setAttribute("jsp", "../my/myTour.jsp");
		return "user/main/main.jsp";
	}
	
	@RequestMapping("myWish.do")
	public String gomyWishlist(HttpServletRequest req)
	{
		System.out.println("myWish");
		req.setAttribute("jsp", "../my/myWishlist.jsp");
		return "user/main/main.jsp";
	}
	
	@RequestMapping("myBoard.do")
	public String gomyBoard(HttpServletRequest req)
	{
		System.out.println("myBoard");
		req.setAttribute("jsp", "../my/myBoard.jsp");
		return "user/main/main.jsp";
	}
	
}
