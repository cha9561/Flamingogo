package com.sist.flamingogo;

import javax.servlet.http.HttpServletRequest;

import com.sist.controller.Controller;
import com.sist.controller.RequestMapping;

@Controller("pc")
public class PlanController {
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
	@RequestMapping("NewFile.do")
	public String NewFile(HttpServletRequest req)
	{
		req.getParameter("coordinateArr[]");
		System.out.println("New");
		req.setAttribute("jsp", "../planner/NewFile2.jsp");
		return "user/main/main.jsp";
	}
}
