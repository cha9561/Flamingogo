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
	
	Map<String, String> stay_map=new HashMap<String, String>();
	Map<String, String> rest_map=new HashMap<String, String>();
	
	public RecoManager()
	{
		stay_map.put("니스", "111011003");
		stay_map.put("파리", "111011004");
		stay_map.put("아비뇽", "111011005");
	}
	public List<StayVO> StayAllData(String city)
	{
		List<StayVO> hlist=new ArrayList<StayVO>();
		String serial=(String)stay_map.get(city);
		if(serial==null)
			return null;
		System.out.println("StayAllData serial:"+serial);
		try
		{
			/*String serial=(String)*/
			Document doc=Jsoup.connect("http://www.stubbyplanner.com/slp/index.asp?srcserial="+serial).get();


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
				/*System.out.println(img);*/
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





