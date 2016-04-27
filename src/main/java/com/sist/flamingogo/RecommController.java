package com.sist.flamingogo;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import com.recommend.dao.RecoManager;
import com.recommend.dao.StayVO;
import com.sist.controller.Controller;
import com.sist.controller.RequestMapping;

@Controller("rc")
public class RecommController {
	
	@RequestMapping("recomm.do")
	public String recomm(HttpServletRequest req)
	{
		System.out.println("recomm");
		req.setAttribute("jsp", "../recommend/recomm.jsp");
		return "user/main/main.jsp";
	}
	
	@RequestMapping("find_recomm.do")
	public String find_recomm(HttpServletRequest req) throws Exception
	{
		
		req.setCharacterEncoding("EUC-KR");
		String find=req.getParameter("find");
		
		System.out.println("find_recomm find : "+find);
		
		RecoManager r=new RecoManager();
		List<StayVO> hlist=r.StayAllData(find);
		if(hlist == null)
		{
			System.out.println("hlist is null!!");
			/*req.setAttribute("notData", "1");
			req.setAttribute("jsp", "../recommend/recomm.jsp");*/
			return "user/recommend/notData.jsp";
		}
		else
		{
			req.setAttribute("list", hlist);
		
			req.setAttribute("jsp", "../recommend/hot_stay.jsp");
			return "user/main/main.jsp";
		}
	}
	/*@RequestMapping("hot_stay.do")
	public String hot_stay(HttpServletRequest req) throws Exception
	{
		Map map=new HashMap();
		map.put("파리", "1234");
		map.put("로마", "2345");
		req.setCharacterEncoding("EUC-KR");
		System.out.println("hot_stay");
		String find=req.getParameter("find");
		System.out.println("hot_stay, find : "+find);
		String key=(String)map.get(find);
		System.out.println("hot_restaurant, key : "+key);
		RecoManager r=new RecoManager();
		List<StayVO> hlist=r.StayAllData();
		req.setAttribute("list", hlist);
		
		req.setAttribute("jsp", "../recommend/hot_stay.jsp");
		return "user/main/main.jsp";
	}*/
}
