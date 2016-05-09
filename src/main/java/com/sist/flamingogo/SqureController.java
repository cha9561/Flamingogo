package com.sist.flamingogo;

import javax.servlet.http.HttpServletRequest;

import com.sist.controller.Controller;
import com.sist.controller.RequestMapping;
import com.squre.dao.SqureDAO;
import com.squre.dao.SqureVO;

import oracle.sql.CLOB;

import java.util.*;

@Controller("sc")
public class SqureController {
	@RequestMapping("squrePage.do")
	public String squrePage(HttpServletRequest req)
	{
		System.out.println("squrePage");
		//SqureDAO.squreDelete();
		List<SqureVO> list=SqureDAO.squreAllData();	
		for(SqureVO test:list)
		{
			System.out.println("id: "+test.getName());
			System.out.println("content_no :"+test.getContent_no());
			System.out.println("subject :"+test.getSubject());
			System.out.println("PWD :"+test.getPwd());
		}
		req.setAttribute("jsp", "../squre/squrePage.jsp");
		req.setAttribute("list", list);
		return "user/main/main.jsp";
	}
	
	@RequestMapping("squreInsert.do")
	public String squreInsert(HttpServletRequest req) throws Exception
	{
		req.setCharacterEncoding("EUC-KR");
		String id=req.getParameter("myId");
		String content=req.getParameter("content");
		String newsType=req.getParameter("newsType");
		System.out.println("ID : "+id);
		System.out.println("content : "+content);
		System.out.println("newsType : "+newsType);
		
		SqureVO vo=new SqureVO();
		vo.setName(id);
		//vo.setContent("1111");
		vo.setSubject(content);
		vo.setPwd(newsType);
		System.out.println("Start Insert");
		SqureDAO.squreInsert(vo);
		return "user/squre/squre_insert_ok.jsp";
	}
}
