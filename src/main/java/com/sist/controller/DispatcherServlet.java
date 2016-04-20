package com.sist.controller;

import java.io.*;
import java.lang.reflect.Method;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.*;

public class DispatcherServlet extends HttpServlet {
   private static final long serialVersionUID = 1L;
   
   private WebApplicationContext wc;
   private List<String> list=new ArrayList<String>();
   
   public void init(ServletConfig config) throws ServletException {
	   
      String path=config.getInitParameter("contextConfigLocation");
      System.out.println(path);
      //webApplicationContext <==> Handlermapping (Class)
      wc=new WebApplicationContext(path);
      //list=wc.list;//wc�� ���� list dispatcher���� �޾Ҵ�. <=��Ű������ ���� �߸��� list
      list=wc.getFileName();
      
   }

   
   protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
      try
      {
         String cmd=request.getRequestURI();
         cmd=cmd.substring(request.getContextPath().length()+1);//list.do
         for(String strCls:list)
         {//Web���κ��� ���� ��� file�� ������ �ִ� ���� �޸� �Ҵ� �� ����
            Class clsName=Class.forName(strCls);//�̷��� �ϱ� ���ؼ� �ڹ������� �� �������̴�.
            
            //controller�� �ö� class�� �޸� �Ҵ��� �ؾ��ϹǷ� if�� ����
            if(clsName.isAnnotationPresent(Controller.class)==false)
               continue;
               //������̼��� ������ �޸��Ҵ��� �ȵȴ�. (�̰� ���߸��� NullPointException)**
            Object obj=clsName.newInstance(); //������̼��� �ִ��� ������ Ȯ�� �ϰ� ������ �޸� �Ҵ��ض�
            //������ �޸� �Ҵ��� newInstance() �� ��� �Ѵ�.
            
            //�޸� �Ҵ� �Ǿ����� �޼ҵ� ã�ƿͼ� ȣ���ض�
            Method[] methods=clsName.getDeclaredMethods();
            for(Method m:methods)
            {
               //requestMapping�� �����ͼ� cmd(�Ʊ� �߸��� ex- list.do)�� ������ Ȯ���ؾ��Ѵ�
               RequestMapping rm=m.getAnnotation(RequestMapping.class);
               //������Ʈ���� ������ �ִ� ������̼��� �����Ͷ� 
               //rm�� controller�� �ִ� ����ص� list.do / content.do�� ������ �ִ�.
               if(rm.value().equals(cmd))
               {
                  String jsp=(String)m.invoke(obj, request);
                  //response���� �Ѱ��ְ� ������ ,��� �ѱ�� ��[����, ���� ,�� �������� �ѱ� �� ����]
                  RequestDispatcher rd=request.getRequestDispatcher(jsp);
                  rd.forward(request, response);
                  return; //������ ��Ű�� ������ �Ѵ� -> return���� �޼ҵ� ����
               }
            }
         }
      }catch(Exception ex){}
   }

}