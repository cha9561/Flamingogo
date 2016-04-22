package com.sist.flamingogo;

import javax.servlet.http.HttpServletRequest;

import com.sist.controller.Controller;
import com.sist.controller.RequestMapping;

@Controller("tc")
public class TourController {
	@RequestMapping("tour.do")
	public String tour(HttpServletRequest req)
	{
		req.setAttribute("jsp", "../tour/tour.jsp");
		return "user/main/main.jsp";
	}
	@RequestMapping("ctour.do")
	public String ctour(HttpServletRequest req)
	{
		req.setAttribute("jsp", "../tour/ctour.jsp");
		return "user/main/main.jsp";
	}
	@RequestMapping("detail.do")
	public String detail(HttpServletRequest req)
	{
		req.setAttribute("jsp", "../tour/tourdetail.jsp");
		return "user/main/main.jsp";
	}
}
