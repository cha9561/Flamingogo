package com.recommend.dao;
import java.util.*;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.json.simple.parser.JSONParser;
import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;
import org.jsoup.nodes.Element;
import org.jsoup.select.Elements;
import org.rosuda.REngine.Rserve.RConnection;

import java.io.*;
import java.net.*;
public class RecoManager {
  
   public List<StayVO> StayAllData()
   {
	   List<StayVO> hlist=new ArrayList<StayVO>();
	   try
	   {
		   Document doc=Jsoup.connect("http://www.stubbyplanner.com/slp/index.asp?srcserial=111011003").get();
		  
		   
		   Elements titleElem=doc.select("div.row div.col-md-8 h2");
		   Elements imageElem=doc.select("div.row div.col-md-4 img");
		   Elements msgElem=doc.select("div.row div.col-md-8 h5");
		   
		   for(int i=0;i<titleElem.size();i++)
		   {
			   
			   Element telem=titleElem.get(i);
			   Element ielem=imageElem.get(i);
			   Element melem=msgElem.get(i);
			   
			   String img=ielem.attr("src");
			   
			   StayVO vo=new StayVO();
			   
			   vo.setTitle(telem.text());
			   vo.setImg(img);
			   vo.setMsg(melem.text());
		       hlist.add(vo);
		       System.out.println(img);
		   }
	   }
	   catch(Exception ex)
	   {
		   System.out.println(ex.getMessage());
	   }
	   return hlist;
   }
   
   public List<RestaurantVO> RestarantAllData()
   {
	   List<RestaurantVO> slist=new ArrayList<RestaurantVO>();
	   try
	   {
		   Document doc=Jsoup.connect("https://www.tripadvisor.co.kr/Restaurants-g274707-Prague_Bohemia").get();
		  
		   Elements rankElem=doc.select("div.popRanking div.slim_ranking");
		   Elements titleElem=doc.select("div.isting_title a.property_title");
		   Elements imageElem=doc.select("div.box-image a span.thumb-image img");
		   Elements reviewElem=doc.select("li.cssTruncatedSnippet span.titel a");
		   
		   for(int i=0;i<rankElem.size();i++)
		   {
			   Element relem=rankElem.get(i);
			   Element telem=titleElem.get(i);
			   Element ielem=imageElem.get(i);
			   Element velem=reviewElem.get(i);
			   
			   String img=ielem.attr("src");
			   
			   RestaurantVO vo=new RestaurantVO();
			   vo.setRank(Integer.parseInt(relem.text()));
			   vo.setTitle(telem.text());
			   vo.setImage(img);
			   vo.setReview(relem.text());
		       slist.add(vo);
		   }
	   }
	   catch(Exception ex)
	   {
		   System.out.println(ex.getMessage());
	   }
	   return slist;
   }
   
   public StayVO StayDetail(int rank)
   {
	   StayVO vo=new StayVO();
	   List<StayVO> slist=StayAllData();
	   vo=slist.get(rank-1);
	   return vo;
   }
   public static void main(String[] arg)
   {
	   RecoManager m=new RecoManager();
	   List<StayVO> slist=new ArrayList<StayVO>();
	   System.out.println(slist);
   }
}





