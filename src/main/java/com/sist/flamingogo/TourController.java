package com.sist.flamingogo;

import java.util.ArrayList;
import java.util.List;
import java.util.StringTokenizer;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import com.sist.controller.Controller;
import com.sist.controller.RequestMapping;
import com.tour.dao.*;
import java.util.*;
import java.text.*;

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
		String strYear=req.getParameter("year");
    	String strMonth=req.getParameter("month");
    	Date date=new Date();
    	SimpleDateFormat sdf=new SimpleDateFormat("yyyy-M-d");//09 
    	StringTokenizer st=new StringTokenizer(sdf.format(date), "-");
    	String sy=st.nextToken();
    	String sm=st.nextToken();
    	String sd=st.nextToken();
    	if(strYear==null)
    		strYear=sy;
    	if(strMonth==null)
    		strMonth=sm;
    	
    	int year=Integer.parseInt(strYear);
    	int month=Integer.parseInt(strMonth);
    	int day=Integer.parseInt(sd);
    	
    	String[] strWeek={"일","월","화","수","목","금","토"};
    	int[] lastDay={
    		31,28,31,30,31,30,
    		31,31,30,31,30,31
    	};
    	
    	int total=((year-1)*365)+((year-1)/4)-((year-1)/100)
    			 +((year-1)/400);
    	if(((year%4==0)&&(year%100!=0))||(year%400==0))
    	{
    		lastDay[1]=29;
    	}
    	else
    	{
    		lastDay[1]=28;
    	}
    	
    	for(int i=0;i<month-1;i++)
    	{
    		total+=lastDay[i];
    	}
    	
    	total++;
    	int week=total%7;
    	req.setAttribute("year", year);
    	req.setAttribute("month", month);
    	req.setAttribute("day", day);
    	req.setAttribute("week", week);
    	req.setAttribute("lastDay", lastDay[month-1]);
    	List<String> weekList=new ArrayList<String>();
    	for(int i=0;i<7;i++)
    	{
    		weekList.add(strWeek[i]);
    	}
    	req.setAttribute("weekList", weekList);
		return "user/tour/tour_date.jsp";
	}
	@RequestMapping("tour_inwon.do")
	public String tour_info(HttpServletRequest req)
	{
		return "user/tour/tour_inwon.jsp";
	}
	@RequestMapping("reserve_ok.do")
	public String reserve_ok(HttpServletRequest req) throws Exception
	{
		req.setCharacterEncoding("EUC-KR");
		String pno=req.getParameter("pno");
    	String category=req.getParameter("category");
    	String pname=req.getParameter("pname");
    	String date=req.getParameter("date");
    	String inwon=req.getParameter("inwon");
    	String price=req.getParameter("price");
    	
    	HttpSession session=req.getSession();
    	String id=(String)session.getAttribute("id");
    	
    	System.out.println(pno+"-"+category+"-"+pname+"-"+date+"-"
    			+inwon+"-"+price+"-"+id);
    	
    	BuyVO vo=new BuyVO();
    	vo.setId(id);
    	vo.setPno(Integer.parseInt(pno));
    	vo.setPname(pname);
    	vo.setAmount(Integer.parseInt(inwon));
    	vo.setRdate(date);
    	vo.setPrice(Integer.parseInt(price));
    	
    	TourDAO.buyInsert(vo);
    	
		return "user/tour/reserve_ok.jsp";
	}
	/*@RequestMapping("mypage.do")
	public String mypage(HttpServletRequest req)
	{
		
		return "user/tour/myTour.jsp";
	}*/
}
