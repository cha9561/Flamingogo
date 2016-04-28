package com.tour.dao;

import java.io.Reader;
import java.util.List;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;
import com.tour.dao.TourVO;

public class TourDAO {
	private static SqlSessionFactory ssf;
	
    /*static
    {
    	try
    	{
    		Reader reader=Resources.getResourceAsReader("Config.xml");
    		ssf=new SqlSessionFactoryBuilder().build(reader);
    	}catch(Exception ex)
    	{
    		System.out.println(ex.getMessage());
    	}
    }
    public static ProductVO tourContent2(int pno)
    {
    	SqlSession session=ssf.openSession();
    	ProductVO vo=session.selectOne("tourContent2", pno);
    	System.out.println("pname"+vo.getPname());
    	session.close();
    	return vo;
    }
    public static String tourContent(int pno)
    {
    	SqlSession session=ssf.openSession();
    	String pname=session.selectOne("tourContent", pno);
    	session.close();
    	return pname;
    }
    public static int tourCount()
    {
    	SqlSession session=ssf.openSession();
    	int count=session.selectOne("tourCount");
    	session.close();
    	return count;
    }*/

	static
	{
		try
		{
			Reader reader=Resources.getResourceAsReader("Config.xml");
			ssf=new SqlSessionFactoryBuilder().build(reader);
		}catch(Exception ex)
		{
			System.out.println(ex.getMessage());
		}
	}
	
	public static TourVO tourContent(int pno)
	{
		SqlSession session=ssf.openSession();
		TourVO vo=session.selectOne("tourContent",pno);
		session.close();
		
		return vo;
	}
	public static List<String> tourCategory()
	{
		SqlSession session=ssf.openSession();
		List<String> list=session.selectList("tourCategory");
		session.close();
		
		return list;
	}
	//tourList
	public static List<TourVO> tourList()
	{
		SqlSession session=ssf.openSession();
		List<TourVO> list=session.selectList("tourList");
		session.close();
		
		return list;
	}
	public static List<TourVO> categoryList(String category)
	{
		try{
			SqlSession session=ssf.openSession();
			List<TourVO> list=session.selectList("categoryList",category);
			session.close();
			
			return list;
		}catch(Exception ex)
		{
			System.out.println(ex.getMessage());
		}
		SqlSession session=ssf.openSession();
		List<TourVO> list=session.selectList("categoryList",category);
		session.close();
		
		return list;
	}

}
