package com.sist.flamingogo;

import javax.servlet.http.HttpServletRequest;

import com.sist.controller.Controller;
import com.sist.controller.RequestMapping;

@Controller("myc")
public class MyController {
	@RequestMapping("mypage.do")
	public String tour(HttpServletRequest req)
	{
		System.out.println("mypage");
		req.setAttribute("jsp", "../my/myPage.jsp");
		return "user/main/main.jsp";
	}
}
