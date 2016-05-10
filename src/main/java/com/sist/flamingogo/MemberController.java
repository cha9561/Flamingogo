package com.sist.flamingogo;

import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.StringTokenizer;

import javax.servlet.ServletRequest;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.ibatis.session.SqlSession;

import com.flamember.dao.MemberDAO;
import com.flamember.dao.MemberDTO;
import com.plan.dao.PlanDAO;
import com.plan.dao.PlanDTO;
import com.sist.controller.Controller;
import com.sist.controller.RequestMapping;
import com.tour.dao.AddSpotVO;
import com.tour.dao.BuyVO;
import com.tour.dao.TourDAO;

@Controller("mec")
public class MemberController {
	@RequestMapping("myPage.do")
	public String myPage(HttpServletRequest req)
	{
		HttpSession session=req.getSession();
    	String id=(String)session.getAttribute("id");
    	
    	List<BuyVO> list=TourDAO.buyUserAllData(id);
		System.out.println("mypage");
		System.out.println("buyData:"+list);
		

		MemberDTO vo=MemberDAO.memberInfo(id);
		int birth=2016-Integer.parseInt(vo.getBirth().substring(0,4))+1;
		

		int myCount=TourDAO.addCount(id);
		List<AddSpotVO> list2=TourDAO.myAdd(id);
		
		req.setAttribute("list2", list2);
		req.setAttribute("myCount", myCount);

		req.setAttribute("id", id);
		req.setAttribute("name", vo.getName());
		req.setAttribute("sex", vo.getSex());
		req.setAttribute("birth",birth);
		req.setAttribute("list", list);
		
		 Map map=new HashMap();
		 map.put("id", id);
		 //map.put("no", no);
		 List<PlanDTO> planList=PlanDAO.planAllData(map);
		req.setAttribute("planList",planList );
		
		req.setAttribute("jsp", "../my/myTour.jsp");
		return "user/main/main.jsp";
	}
	@RequestMapping("admin.do")
	public String admin(HttpServletRequest req)
	{
		HttpSession session=req.getSession();
    	String id=(String)session.getAttribute("id");
    	List<BuyVO> list=TourDAO.buyAdminAllData();
		System.out.println("admin");
		System.out.println("adminData:"+list);
		
		req.setAttribute("id", id);
		req.setAttribute("list", list);
		req.setAttribute("jsp", "../my/admin.jsp");
		return "user/main/main.jsp";
	}
	@RequestMapping("admin_ok.do")
    public String admin_ok(HttpServletRequest req)
    {
    	String buyno=req.getParameter("buyno");
    	TourDAO.userReserveOk(Integer.parseInt(buyno));
    	TourDAO.adminReserveOk(Integer.parseInt(buyno));
    	
    	return "user/my/admin_ok.jsp";
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
		String tel1=req.getParameter("tel1");
		String tel2=req.getParameter("tel2");
		String tel3=req.getParameter("tel3");
		String email1=req.getParameter("email1");
		String email2=req.getParameter("email2");
		
		MemberDTO vo=new MemberDTO();
		vo.setName(name);
		vo.setId(id);
		vo.setPwd(pwd);
		vo.setSex(sex);
		vo.setBirth(birth);
	
		vo.setTel(tel1+"-"+tel2+"-"+tel3);
		
		vo.setEmail(email1+"@"+email2);
		System.out.println("이름"+vo.getName());
		MemberDAO.memberJoin(vo);
		
		System.out.println("joinok->gomypage");
		
		req.setAttribute("id", id);
		req.setAttribute("jsp", "user/join_ok.jsp");
		return "user/main/main.jsp";
	}
	
    @RequestMapping("mypage.do")
    public String mypage(HttpServletRequest req)
    {
    	//HttpSession session=req.getSession();
    	req.setAttribute("jsp","../my/myDefaultpage.jsp");
    	
    	
    	return "user/main/main.jsp";
    }
    
	@RequestMapping("join.do")
	public String join(HttpServletRequest req)
	{
		System.out.println("join");
		req.setAttribute("jsp", "user/join.jsp");
		return "user/main/main.jsp";
	}
	
	@RequestMapping("myinfo_update.do")
	public String myinfo_update(HttpServletRequest req)
    {
		String id=req.getParameter("id");
		String page=req.getParameter("page");
		MemberDTO vo=MemberDAO.myInfodata(id);
    	req.setAttribute("page",page);
    	req.setAttribute("id",id);
    	req.setAttribute("jsp","../my/myinfo.jsp");
    	return "user/main/main.jsp";
    }
    
	
}
