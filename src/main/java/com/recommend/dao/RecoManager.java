package com.recommend.dao;
import java.util.*;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.json.simple.parser.JSONParser;
import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;
import org.jsoup.nodes.Element;
import org.jsoup.select.Elements;

import java.io.*;
import java.net.*;
public class RecoManager {
   
   public List<StayVO> StayAllData(String city)
   {
      List<StayVO> hlist=new ArrayList<StayVO>();
      RecoVO rvo=new RecoVO();
      rvo=RecoDAO.findCityInform(city);
      System.out.println("StayAllData serial:"+rvo.getStay());
      String stay_serial=rvo.getStay();
      if(stay_serial==null)
      {
         hlist=null;
         return hlist;
      }
      try
      {
    	  
         /*String serial=(String)*/
         //Document doc=Jsoup.connect("http://www.stubbyplanner.com/slp/index.asp?srcserial="+stay_serial).get();
         Document doc=Jsoup.connect(stay_serial).get();
         Elements titleElem=doc.select("section.entry h4 a");
         Elements imageElem=doc.select("section.hotel-entry figure.media noscript img");
         //Elements msgElem=doc.select("section.entry div.hotel-desc");
         Elements reviewElem=doc.select("section.entry div.customer-quotes");
         for(int i=0;i<titleElem.size();i++)
         {
            Element telem=titleElem.get(i);
            Element relem=reviewElem.get(i);
            //Element melem=msgElem.get(i);
            Element ielem=imageElem.get(i);
            String img=ielem.attr("src");
           // System.out.println("aa"+img);
            
            StayVO svo=new StayVO();

            svo.setTitle(telem.text());
            if(img.equals("")||img==null)
            	svo.setImg(img);
            else
            	svo.setImg(img.substring(0, img.lastIndexOf('?')));
            
            System.out.println(svo.getImg());
            //svo.setMsg(melem.text());
            svo.setReview(relem.text());
            hlist.add(svo);
            
         }
      }
      catch(Exception ex)
      {
         System.out.println(ex.getMessage());
      }
      return hlist;
   }

   public List<RestaurantVO> RestarantAllData(String city)
      {
         List<RestaurantVO> slist=new ArrayList<RestaurantVO>();
         RecoVO rvo=new RecoVO();
         rvo=RecoDAO.findCityInform(city);
         System.out.println("StayAllData serial:"+rvo.getRest());
         String serial=rvo.getRest();
         if(serial==null)
            return null;
      
         try
         {
            Document doc=Jsoup.connect("http://www.siksinhot.com/hot/location/main.do?upHpAreaId=403&hpAreaId="+serial).get();
            //Elements rankElem=doc.select("li.place-item div.gridBox div.bestNum");
            Elements titleElem=doc.select("li.place-item div.gridBox div.gridInfo span.pltit");
            Elements imageElem=doc.select("li.place-item div.pthumbImg img.cropImg");
            Elements briefElem=doc.select("li.place-item div.gridBox div.gridInfo span.plmsg");
            Elements sectorElem=doc.select("li.place-item div.gridBox div.gridInfo span.plcate");
            
            for(int i=0;i<titleElem.size();i++)
            {
               Element telem=titleElem.get(i);
               //Element relem=rankElem.get(i);
               Element belem=briefElem.get(i);
               Element selem=sectorElem.get(i);
               Element ielem=imageElem.get(i);
               String img=ielem.attr("src");
               
               RestaurantVO s=new RestaurantVO();
               s.setSector(selem.text());
               //System.out.println(selem.text());
              // s.setRank(Integer.parseInt(relem.text()));
               //System.out.println("RestarantAllData2 "+Integer.parseInt(relem.text()));
               s.setTitle(telem.text());
               //System.out.println("RestarantAllData3 "+telem.text());
               s.setImage(img);
               //System.out.println("RestarantAllData5 "+img);
               s.setBrief(belem.text());
              // System.out.println("RestarantAllData4 "+belem.text());
               slist.add(s);
            }
         }
         catch(Exception ex)
         {
            System.out.println(ex.getMessage());
         }
         return slist;
      }


   /*public StayVO StayDetail(int rank)
   {
      StayVO vo=new StayVO();
      List<StayVO> slist=StayAllData();
      vo=slist.get(rank-1);
      return vo;
   }*/
   /*public static void main(String[] arg)
   {
      RecoManager m=new RecoManager();
      List<StayVO> slist=new ArrayList<StayVO>();
      System.out.println(slist);
   }*/
}




