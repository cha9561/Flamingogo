package com.sist.flamingogo;

import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.StringTokenizer;

import javax.servlet.ServletRequest;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.ibatis.session.SqlSession;

import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;
import com.oreilly.servlet.MultipartRequest;

import com.flamember.dao.MemberDAO;
import com.flamember.dao.MemberDTO;
import com.plan.dao.PlanDAO;
import com.plan.dao.PlanDTO;
import com.sist.controller.Controller;
import com.sist.controller.RequestMapping;
import com.tour.dao.AddSpotVO;
import com.tour.dao.BuyVO;
import com.tour.dao.TourDAO;

import java.io.File;
import java.nio.file.*;

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
		
		int buyCount=TourDAO.buyCount(id);
		int myCount=TourDAO.addCount(id);
		List<AddSpotVO> list2=TourDAO.myAdd(id);
		
		req.setAttribute("buyCount", buyCount);
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
		String sex="";
		System.out.println("res"+res);
		if(!(res.equals("NOID")||res.equals("NOPWD")))
		{
			StringTokenizer st=new StringTokenizer(res, "|");
			name=st.nextToken();
			admin=st.nextToken();
			sex=st.nextToken();
			HttpSession session=req.getSession();
			session.setAttribute("id",id);
			session.setAttribute("name",name);
			session.setAttribute("admin", admin);
			session.setAttribute("sex", sex);
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
		System.out.println("Email : "+email1);
		System.out.println("Email2 : "+email2);
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
		req.setAttribute("jsp", "mainDefault.jsp");
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
		MemberDTO vo=MemberDAO.myInfodata(id);
    	StringTokenizer tokens= new StringTokenizer(vo.getTel(), "-");
		String tel[]=new String[3];
    	for(int i=0;tokens.hasMoreTokens();i++)
		{
    		tel[i]=tokens.nextToken();
		}
    	System.out.println(vo.getEmail());
    	StringTokenizer token= new StringTokenizer(vo.getEmail(),"@");
		String email[]=new String[2];
    	for(int i=0;token.hasMoreTokens();i++)
		{
    		email[i]=token.nextToken();
		}
    	
    	req.setAttribute("id",id);
    	req.setAttribute("tel1",tel[1]);
    	req.setAttribute("tel2",tel[2]);
    	req.setAttribute("eid", email[0]);
    	System.out.println(email[0]);
    	req.setAttribute("eadress", email[1]);
    	req.setAttribute("vo",vo);
    	req.setAttribute("jsp","../my/myinfo.jsp");
    	return "user/main/main.jsp";
    }
    
	@RequestMapping("update_ok.do")
	public String upload(HttpServletRequest req) throws Exception
	{
		req.setCharacterEncoding("EUC-KR"); 
		System.out.println("PROFILE_PICTURE");
		//path에 가져온 파일저장해야함.
		String path="C://springDev//springStudy//.metadata//.plugins//org.eclipse.wst.server.core//tmp0//wtpwebapps//Flamingogo//user//my//img";
		String enctype="EUC-KR";
		int size=1024*1024*100;
		MultipartRequest mr=
		    		new MultipartRequest(req,path,size,enctype,
		    				new DefaultFileRenamePolicy());
		    
		HttpSession session=req.getSession();
    	String id=(String)session.getAttribute("id");
		String PROFILE_PICTURE=mr.getFilesystemName("profile");
		
		
		MemberDTO vo=new MemberDTO();
		MemberDTO info=MemberDAO.myInfodata(id);
		
		if(PROFILE_PICTURE==null)
	    {
	    	vo.setProfile_picture(info.getProfile_picture());
	    }
	    else
	    {
	    	File f=new File("C:\\springDev\\springStudy\\.metadata\\.plugins\\org.eclipse.wst.server.core\\tmp0\\wtpwebapps\\Flamingogo\\user\\my\\img\\"+PROFILE_PICTURE);
	    	vo.setProfile_picture(PROFILE_PICTURE);
	    }
		
		
		
		vo.setProfile_picture(PROFILE_PICTURE);
		vo.setId(id);
		MemberDAO.uploadprofile(vo);
		
		req.setAttribute("id", id);
		req.setAttribute("jsp", "my/profile_ok.jsp");
		return "user/main/main.jsp";
	    
	}
	
}
