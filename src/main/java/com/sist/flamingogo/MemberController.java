package com.sist.flamingogo;

import java.util.List;
import java.util.StringTokenizer;

import javax.servlet.ServletRequest;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import com.flamember.dao.MemberDAO;
import com.flamember.dao.MemberDTO;
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
		System.out.println("id :"+id+"pwd :"+pwd);
		//DB연동
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
		System.out.println("rest :"+res);
		return "user/main/user/login.jsp";
	}
	
	@RequestMapping("logout.do")
	public String memberLogout(HttpServletRequest req)
	{
		HttpSession session=req.getSession();
		session.invalidate();
		return "user/main/user/logout.jsp";
	}
	
	@RequestMapping("idcheck_ok.do")
	public String memberIdCheck(HttpServletRequest req)
	{
		System.out.println("확인");
		String id=req.getParameter("id");
		int count=MemberDAO.memberIdCheck(id);
		req.setAttribute("count",count);
		
		return "user/main/user/idcheck_ok.jsp";
	}
	
	@RequestMapping("join_ok.do")
	public String memberJoin(HttpServletRequest req) throws Exception
	{
		System.out.println("회원가입 폼 넘기기 확인");
		
		req.setCharacterEncoding("EUC-KR");
		String id=req.getParameter("id");
		String pwd=req.getParameter("pwd");
		String name=req.getParameter("name");
		String sex=req.getParameter("sex");		
		String birth=req.getParameter("birth");
		String tel=req.getParameter("tel");
		String email=req.getParameter("email");
		System.out.println(id+pwd+name+sex+birth+tel+email);
		MemberDTO vo=new MemberDTO();
		vo.setName(name);
		vo.setId(id);
		vo.setPwd(pwd);
		vo.setSex(sex);
		vo.setBirth(birth);
		vo.setTel(tel);
		vo.setEmail(email);
		
		MemberDAO.memberJoin(vo);
		System.out.println("joinok->gomypage");
		
		req.setAttribute("id", id);
		req.setAttribute("jsp", "user/main/user/join_ok.jsp");
		return "user/main/main.jsp";
	}
	
    @RequestMapping("mypage.do")
    public String mypage(HttpServletRequest req)
    {
    	HttpSession session=req.getSession();
    	String id=(String)session.getAttribute("id");
    	req.setAttribute("jsp","user/my/myDefaultpage.jsp");
    	
    	
    	return "user/main.jsp";
    }
    
    
	
}
