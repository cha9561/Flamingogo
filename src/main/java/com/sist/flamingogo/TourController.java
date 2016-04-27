package com.sist.flamingogo;

import javax.servlet.http.HttpServletRequest;

import com.sist.controller.Controller;
import com.sist.controller.RequestMapping;
import com.tour.dao.*;
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
		String pno=req.getParameter("pno");
		
		int count=TourDAO.tourCount();
		//ProductVO vo=TourDAO.tourContent2(Integer.parseInt(pno));
		
		String pname=TourDAO.tourContent(Integer.parseInt(pno));		
		System.out.println("pname"+pname);
		System.out.println("count:"+count);
		//req.setAttribute("vo", vo);
		req.setAttribute("pname", pname);
		req.setAttribute("count", count);
		req.setAttribute("jsp", "../tour/tourdetail.jsp");
		return "user/main/main.jsp";
	}
}
