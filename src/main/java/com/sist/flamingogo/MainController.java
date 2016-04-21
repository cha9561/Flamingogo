package com.sist.flamingogo;

import javax.servlet.http.HttpServletRequest;

import com.sist.controller.Controller;
import com.sist.controller.RequestMapping;

@Controller("mc")
public class MainController {

	@RequestMapping("main.do")
	public String mainView(HttpServletRequest req)
	{
		System.out.println("main");
		return "user/main/main.jsp";
	}	
}