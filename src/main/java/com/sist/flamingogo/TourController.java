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
		req.setCharacterEncoding("UTF-8");
		String category=req.getParameter("category");
		System.out.println("category:"+category);
		List<TourVO> list=TourDAO.categoryList(category);
		System.out.println("list:"+list);
		req.setAttribute("list", list);
		req.setAttribute("jsp", "../tour/ctour.jsp");
		return "user/main/main.jsp";
	}
	@RequestMapping("detail.do")
	public String detail(HttpServletRequest req)
	{
		String pno=req.getParameter("pno");
		
		TourVO vo=TourDAO.tourContent(Integer.parseInt(pno));
		
		List<String> list=TourDAO.tourCategory();
		System.out.println("list:"+list);
		/*StringTokenizer st=new StringTokenizer(category, ",");
		while(st.hasMoreTokens())
    	{
			list.add(st.nextToken());
    	}
		List<String> list=new ArrayList<String>();
		for(List<String> list:list)
    	{
		   System.out.println("list:"+no);
    	}*/
		req.setAttribute("list", list);
		req.setAttribute("vo", vo);
		req.setAttribute("jsp", "../tour/tourdetail.jsp");
		return "user/main/main.jsp";
	}
}
