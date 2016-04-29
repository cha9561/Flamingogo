package com.sist.flamingogo;

import java.util.ArrayList;
import java.util.List;
import java.util.StringTokenizer;

import javax.servlet.http.HttpServletRequest;

import com.sist.controller.Controller;
import com.sist.controller.RequestMapping;
import com.tour.dao.*;


@Controller("tc")
public class TourController {
	@RequestMapping("tour.do")
	public String tour(HttpServletRequest req)
	{
		List<TourVO> list=TourDAO.tourList();
		
		req.setAttribute("list", list);
		req.setAttribute("jsp", "../tour/tour.jsp");
		return "user/main/main.jsp";
	}
	@RequestMapping("ctour.do")
	public String ctour(HttpServletRequest req) throws Exception
	{
		req.setCharacterEncoding("EUC-KR");
		String category=req.getParameter("category");
		System.out.println("카테고리:"+category);
		
		List<TourVO> list=TourDAO.categoryList(category);
		System.out.println("카테고리 리스트:"+list);
		
		req.setAttribute("list", list);
		req.setAttribute("jsp", "../tour/ctour.jsp");
		return "user/main/main.jsp";
	}
	@RequestMapping("detail.do")
	public String detail(HttpServletRequest req)
	{
		String pno=req.getParameter("pno");
		
		TourVO vo=TourDAO.tourContent(Integer.parseInt(pno));
		
		req.setAttribute("vo", vo);
		req.setAttribute("jsp", "../tour/tourdetail.jsp");
		return "user/main/main.jsp";
	}
	@RequestMapping("reserve.do")
	public String reserve(HttpServletRequest req) throws Exception
	{
		req.setCharacterEncoding("EUC-KR");
		String pno=req.getParameter("pno");
		String pname=req.getParameter("pname");
		String category=req.getParameter("category");
		
		TourVO vo=new TourVO();
		vo.setPno(Integer.parseInt(pno));
		vo.setPname(pname);
		vo.setCategory(category);
		
		req.setAttribute("vo", vo);
		req.setAttribute("jsp", "../tour/reserve.jsp");
		return "user/main/main.jsp";
	}
	@RequestMapping("tour_date.do")
	public String tour_date(HttpServletRequest req)
	{
		
		
		req.setAttribute("jsp", "../tour/reserve.jsp");
		return "user/main/main.jsp";
	}
	@RequestMapping("tour_info.do")
	public String tour_info(HttpServletRequest req)
	{
		
		
		req.setAttribute("jsp", "../tour/reserve.jsp");
		return "user/main/main.jsp";
	}
}
