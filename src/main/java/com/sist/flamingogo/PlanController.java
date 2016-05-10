package com.sist.flamingogo;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.xml.ws.Response;


import com.plan.dao.PlanDAO;
import com.plan.dao.PlanDTO;
import com.recommend.dao.RecoManager;
import com.recommend.dao.RestaurantVO;
import com.recommend.dao.StayVO;
import com.sist.controller.Controller;
import com.sist.controller.RequestMapping;

@Controller("pc")
public class PlanController {
   @RequestMapping("plannerMain.do")
   public String plannerMain(HttpServletRequest req)
   {
      System.out.println("plannerMain");
      req.setAttribute("jsp", "../planner/plannerMain.jsp");
      return "user/main/main.jsp";
   }
   @RequestMapping("calander.do")
   public String calander(HttpServletRequest req)
   {
      System.out.println("calander");
      req.setAttribute("jsp", "../planner/calander.jsp");
      return "user/main/main.jsp";
   }
   @RequestMapping("help.do")
   public String help(HttpServletRequest req)
   {
      System.out.println("help");
      req.setAttribute("jsp", "../planner/help.jsp");
      return "user/main/main.jsp";
   }
   @RequestMapping("plannerRecomm1.do")
   public String NewFile(HttpServletRequest req)
   throws Exception
   {
      System.out.println("ffggadgsfgadgs");
      req.setCharacterEncoding("EUC-KR");

      
      String a=req.getParameter("place");
      String b=req.getParameter("images");
      String c=req.getParameter("plandate");
      String d=req.getParameter("latlng1");
      String e=req.getParameter("latlng2");
      String f=req.getParameter("latmax");
      String g=req.getParameter("lngmax");

    
      System.out.println("맞냐"+a);
      System.out.println("이미지"+b);
      System.out.println("출발일"+c);
      System.out.println("lat"+d);
      System.out.println("lng"+e);
      
      System.out.println("latmax"+f);
      System.out.println("lngmax"+g);
      

      req.setAttribute("a",a);
      req.setAttribute("b",b);
      req.setAttribute("plandateday",c);
      req.setAttribute("d", d);
      req.setAttribute("e", e);
      req.setAttribute("f", f);
      req.setAttribute("g", g);
      
/*      
      req.setCharacterEncoding("EUC-KR");
      String find=req.getParameter("place");
      String[] list=find.split("/");
       
      for(int i=0;i<list.length;i++){
      System.out.println(list[i]);
      req.setAttribute(list[i], list[i]);
      
      }*/
      
      req.setAttribute("jsp", "../planner/plannerRecomm.jsp");
      return "user/main/main.jsp";
   }
   @RequestMapping("plannerfind.do")
   public String find_recomm(HttpServletRequest req) throws Exception
   {
      
      req.setCharacterEncoding("EUC-KR");
      String find1=req.getParameter("city");
      String find=find1.trim();
      System.out.println(find);
      RecoManager r=new RecoManager();
      List<StayVO> hlist=r.StayAllData(find);
      List<RestaurantVO> rlist=r.RestarantAllData(find);
      if(hlist == null && rlist==null)
      {
         System.out.println("hlist is null!!");
         return "user/recommend/notData.jsp";
      }
      else
      {
         System.out.println("나타나");
         req.setAttribute("find", find);
         req.setAttribute("hlist", hlist);
         req.setAttribute("rlist", rlist);
         req.setAttribute("jsp", "../planner/a.jsp");
          return "user/main/main.jsp";
      }
   
   }
   @RequestMapping("stayadd.do")
   public String stayadd(HttpServletRequest req) throws Exception
   {
      req.setCharacterEncoding("EUC-KR");
      String recomm=req.getParameter("recomm");
      System.out.println(recomm);
      HttpSession session=req.getSession();
      
      session.setAttribute("recomm", recomm);
      String stayalladd=(String)session.getAttribute("recomm");
      System.out.println("ㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁ"+stayalladd);
      
      session.setAttribute("stayalladd", stayalladd);
      req.setAttribute("jsp", "../planner/a.jsp");
      return "user/main/main.jsp";
      //session.setAttribute(name, value);
      
   }
   
      @RequestMapping("plannersave.do")
      public String board_insert_ok(HttpServletRequest req)
      throws Exception
      {
         req.setCharacterEncoding("EUC-KR");

         HttpSession session=req.getSession();
         String id=(String)session.getAttribute("id");
           
      
         String plan_id=req.getParameter("plan_id");
         String place=req.getParameter("place");
         String images=req.getParameter("images");
         System.out.println("plan_id" +" "+plan_id);
         String latlng1=req.getParameter("latlng1");
         String latlng2=req.getParameter("latlng2");
         String latmax=req.getParameter("latmax");
         String lngmax=req.getParameter("lngmax");
         String plandate=req.getParameter("plandate");
         System.out.println("가가가가가가가가"+place+" "+images+" "+plandate);
         PlanDTO vo=new PlanDTO();
         vo.setId(id);
         vo.setPlan_id(plan_id);
         vo.setCity_name(place);
         vo.setImage(images);
         vo.setLatitude(latlng1);
         vo.setLongitude(latlng2);
         vo.setStartdate(plandate);
         vo.setLatmax(latmax);
         vo.setLngmax(lngmax);
         
         PlanDAO.planInsert(vo);
         System.out.println("insert");
       /*  List<PlanDTO> planList=PlanDAO.planInsert(vo);
         req.setAttribute("planList", planList);*/
        
         req.setAttribute("jsp", "../planner/plannerRecomm.jsp");
         return "user/main/main.jsp";
      }
      
      @RequestMapping("planAllData.do")
      public String plan_list(HttpServletRequest req)
      {
         HttpSession session=req.getSession();
   
          Map map=new HashMap();
          String id=(String)session.getAttribute("id");
          
          /*map.put("id", id);
             map.put("no", no);*/
         List<PlanDTO> list=PlanDAO.planAllData(id);
         for(PlanDTO vo:list)
         {

         }
        
        
         req.setAttribute("list", list);
         req.setAttribute("jsp", "board/board_list.jsp");
         return "user/main.jsp";
      }
   
}