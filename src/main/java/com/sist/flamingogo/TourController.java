package com.sist.flamingogo;

import javax.servlet.http.HttpServletRequest;

import com.sist.controller.Controller;
import com.sist.controller.RequestMapping;

@Controller("tc")
public class TourController {
	@RequestMapping("tour.do")
	public String tour(HttpServletRequest req)
	{
		System.out.println("tour");
		req.setAttribute("jsp", "../tour/tour.jsp");
		return "user/main/main.jsp";
	}
}
