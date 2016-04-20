package com.sist.flamingogo;

import javax.servlet.http.HttpServletRequest;

import com.sist.controller.Controller;
import com.sist.controller.RequestMapping;

@Controller("fc")
public class FlamingoController {

	@RequestMapping("main.do")
	public String mainView(HttpServletRequest req)
	{
		System.out.println("main");
		return "user/main/main.jsp";
	}
	@RequestMapping("myPage.do")
	public String myPage(HttpServletRequest req)
	{
		System.out.println("mypage");
		req.setAttribute("jsp", "../my/myPage.jsp");
		return "user/main/main.jsp";
	}
	@RequestMapping("plannerMain.do")
	public String plannerMain(HttpServletRequest req)
	{
		System.out.println("plannerMain");
		req.setAttribute("jsp", "../planner/plannerMain.jsp");
		return "user/main/main.jsp";
	}
	@RequestMapping("calander.do")
	public String calander(HttpServletRequest req)
	{
		System.out.println("calander");
		req.setAttribute("jsp", "../planner/calander.jsp");
		return "user/main/main.jsp";
	}
	@RequestMapping("help.do")
	public String help(HttpServletRequest req)
	{
		System.out.println("help");
		req.setAttribute("jsp", "../planner/help.jsp");
		return "user/main/main.jsp";
	}
	
	@RequestMapping("recomm.do")
	public String recomm(HttpServletRequest req)
	{
		System.out.println("recomm");
		req.setAttribute("jsp", "../recommend/recomm.jsp");
		return "user/main/main.jsp";
	}
	
	@RequestMapping("squrePage.do")
	public String squrePage(HttpServletRequest req)
	{
		System.out.println("squrePage");
		req.setAttribute("jsp", "../squre/squrePage.jsp");
		return "user/main/main.jsp";
	}
	
	@RequestMapping("tour.do")
	public String tour(HttpServletRequest req)
	{
		System.out.println("tour");
		req.setAttribute("jsp", "../tour/tour.jsp");
		return "user/main/main.jsp";
	}
	
}