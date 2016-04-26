package com.sist.flamingogo;

import java.util.StringTokenizer;

import javax.servlet.ServletRequest;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import com.flamember.dao.MemberDAO;
import com.sist.controller.Controller;
import com.sist.controller.RequestMapping;

@Controller("mec")
public class MemberController {
	@RequestMapping("myPage.do")
	public String myPage(HttpServletRequest req)
	{
		System.out.println("mypage");
		req.setAttribute("jsp", "../my/myPage.jsp");
		return "user/main/main.jsp";
	}
	
	@RequestMapping("login.do")
	public String memberLogin(HttpServletRequest req)
	{
		String id=req.getParameter("id");
		String pwd=req.getParameter("pwd");
		
		//DB¿¬µ¿
		String res=MemberDAO.memberLogin(id, pwd);
		String name="";
		String admin="";
		System.out.println("res"+res);
		if(!(res.equals("NOID")||res.equals("NOPWD")))
		{
			StringTokenizer st=new StringTokenizer(res, "|");
			name=st.nextToken();
			admin=st.nextToken();
			HttpSession session=req.getSession();
			session.setAttribute("id",id);
			session.setAttribute("name",name);
			session.setAttribute("admin", admin);
		}
		
		req.setAttribute("res", res);
		
		return "user/main/user/login.jsp";
	}
	
	@RequestMapping("logout.do")
	public String memberLogout(HttpServletRequest req)
	{
		HttpSession session=req.getSession();
		session.invalidate();
		return "user/main/user/logout.jsp";
	}
	
	@RequestMapping("join.do")
	public String memberJoin(HttpServletRequest req)
	{
		System.out.println("joinpage");
		req.setAttribute("jsp", "../main/user.jsp");
		return "user/main/main.jsp";
	}
	
	@RequestMapping("idcheck_ok.do")
	public String idcheck_ok(HttpServletRequest req)
	{
		String id=req.getParameter("id");
		int count=MemberDAO.memberIdCheck(id);
		req.setAttribute("count",count);
		System.out.println("count"+count);
		return "user/main/user/idcheck_ok.jsp";
	}
	
}
