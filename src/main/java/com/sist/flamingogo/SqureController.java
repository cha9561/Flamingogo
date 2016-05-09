package com.sist.flamingogo;

import javax.servlet.http.HttpServletRequest;

import com.sist.controller.Controller;
import com.sist.controller.RequestMapping;
import com.squre.dao.ReviewVO;
import com.squre.dao.SqureDAO;
import com.squre.dao.SqureVO;

import java.util.*;

@Controller("sc")
public class SqureController {
	@RequestMapping("squrePage.do")
	public String squrePage(HttpServletRequest req)
	{
		System.out.println("squrePage");
		//SqureDAO.squreDelete();
		List<SqureVO> list=SqureDAO.squreAllData();
		/*for(SqureVO test:list)
		{
			System.out.println("no : "+test.getNo());
			System.out.println("userId : "+test.getUserId());
			System.out.println("sex : (1:남자, 2:여자)"+test.getSex());
			System.out.println("subject: "+test.getSubject());
			System.out.println("content: "+test.getContent());
			System.out.println("hit : "+test.getHit());
			System.out.println("regdate : "+test.getRegdate());
		}*/
		List<ReviewVO> rlist=SqureDAO.reviewAllData();
		/*for(ReviewVO rtest:rlist)
		{
			System.out.println("%%%%%%%%%%%%% Review %%%%%%%%%%%");
			System.out.println("rid: "+rtest.getId());
			System.out.println("rootNo: "+rtest.getRootNo());
			System.out.println("no: "+rtest.getNo());
			System.out.println("sex: "+rtest.getSex());
			System.out.println("content: "+rtest.getContent());
			System.out.println("regdate: "+rtest.getRegdate());
			System.out.println("hit: "+rtest.getHit());
		}*/
		
		req.setAttribute("jsp", "../squre/squrePage.jsp");
		req.setAttribute("list", list);
		req.setAttribute("rlist", rlist);
		return "user/main/main.jsp";
	}
	
	@RequestMapping("squreInsert.do")
	public String squreInsert(HttpServletRequest req) throws Exception
	{
		System.out.println("squreInsert");
		req.setCharacterEncoding("EUC-KR");
		String id=req.getParameter("myId");
		String content=req.getParameter("content");
		String subject=req.getParameter("subject");
		String ssex=req.getParameter("sex");
		int sex=Integer.parseInt(ssex);
		/*System.out.println("ID : "+id);
		System.out.println("content : "+content);
		System.out.println("subject : "+subject);
		System.out.println("sex : "+sex);*/
		
		SqureVO vo=new SqureVO();
		vo.setUserId(id);
		vo.setSubject(subject);
		vo.setContent(content);
		vo.setSex(sex);
		System.out.println("Start Insert");
		SqureDAO.squreInsert(vo);
		
		return "user/squre/squre_insert_ok.jsp";
	}
	@RequestMapping("reInsert.do")
	public String reInsert(HttpServletRequest req) throws Exception
	{
		System.out.println("reInsert");
		req.setCharacterEncoding("EUC-KR");
		ReviewVO rvo=new ReviewVO();
		String id=req.getParameter("reId");
		String content=req.getParameter("reContent");
		String sex=req.getParameter("reSex");
		String rootNo=req.getParameter("rootNo");
		/*System.out.println("reInsert ID: "+id);
		System.out.println("content : "+content);
		System.out.println("sex : "+sex);
		System.out.println("rootNo : "+rootNo);*/
		
		rvo.setId(id);
		rvo.setContent(content);
		rvo.setSex(Integer.parseInt(sex));
		rvo.setContent(content);
		rvo.setRootNo(Integer.parseInt(rootNo));
		System.out.println("Start reInsert");
		SqureDAO.reInsert(rvo);
		
		return "user/squre/squre_insert_ok.jsp";
	}
	@RequestMapping("squreDel.do")
	public String squreDel(HttpServletRequest req)
	{
		System.out.println("squreDel");
		String no=req.getParameter("no");
		System.out.println("no: "+no);
		SqureDAO.squreDelData(Integer.parseInt(no));
		return "user/squre/squre_insert_ok.jsp";
	}
	
	@RequestMapping("reviewDel.do")
	public String reviewDel(HttpServletRequest req)
	{
		System.out.println("reviewDel");
		String no=req.getParameter("no");
		System.out.println("no: "+no);
		SqureDAO.reviewDelData(Integer.parseInt(no));
		return "user/squre/squre_insert_ok.jsp";
	}
}
