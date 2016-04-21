package com.sist.flamingogo;

import javax.servlet.http.HttpServletRequest;

import com.sist.controller.Controller;
import com.sist.controller.RequestMapping;

@Controller("sc")
public class SqureController {
	@RequestMapping("squrePage.do")
	public String squrePage(HttpServletRequest req)
	{
		System.out.println("squrePage");
		req.setAttribute("jsp", "../squre/squrePage.jsp");
		return "user/main/main.jsp";
	}
}
