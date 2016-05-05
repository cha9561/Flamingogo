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
		try{
		SqlSession session=ssf.openSession();
		TourVO vo=session.selectOne("tourContent",pno);
		session.close();
		
		return vo;
		}catch(Exception ex)
		{
			System.out.println(ex.getMessage());
		}
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
		try{
			SqlSession session=ssf.openSession();
			List<TourVO> list=session.selectList("tourList");
			session.close();
			
			return list;
		}catch(Exception ex)
		{
			System.out.println(ex.getMessage());
		}
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
	public static void buyInsert(BuyVO vo)
    {
		try{
    	SqlSession session=ssf.openSession(true);
    	session.insert("buyInsert",vo);
    	session.close();
		}catch(Exception ex)
		{
			System.out.println(ex.getMessage());
		}
    }
	public static void adminInsert(BuyVO vo)
    {
		try{
    	SqlSession session=ssf.openSession(true);
    	session.insert("adminInsert",vo);
    	session.close();
		}catch(Exception ex)
		{
			System.out.println(ex.getMessage());
		}
    } 
	// 예약
    public static List<BuyVO> buyUserAllData(String id)
    {
    	SqlSession session=ssf.openSession();
    	List<BuyVO> list=session.selectList("buyUserAllData",id);
    	session.close();
    	return list;
    }
    public static List<BuyVO> buyAdminAllData()
    {
    	SqlSession session=ssf.openSession();
    	List<BuyVO> list=session.selectList("buyAdminAllData");
    	session.close();
    	return list;
    }
    //예약상태변경
    public static void userReserveOk(int buyno)
    {
    	try{
    		SqlSession session=ssf.openSession(true);
        	session.update("userReserveOk",buyno);
        	session.close();
    	}catch(Exception ex)
    	{
    		System.out.println(ex.getMessage());
    	}
    	
    }
    public static void adminReserveOk(int buyno)
    {
    	try{
    	SqlSession session=ssf.openSession(true);
    	session.update("adminReserveOk",buyno);
    	session.close();
    	}catch(Exception ex)
    	{
    		System.out.println(ex.getMessage());
    	}
    }
    //찜 상태조회
    public static int addCheck(AddSpotVO vo)
    {
    	try
    	{
    		SqlSession session=ssf.openSession();
    		int count=session.selectOne("addCheck",vo);
    		session.close();
    		
    		return count;
    	}catch(Exception ex)
    	{
    		System.out.println(ex.getMessage());
    	}
    	
    	SqlSession session=ssf.openSession();
		int count=session.selectOne("addCheck",vo);
		session.close();
		
		return count;
    }
    //찜 추가
    public static void addOk(AddSpotVO vo)
    {
    	try
    	{
    		System.out.println("addDAO");
    		SqlSession session=ssf.openSession(true);
        	session.insert("addOk",vo);
        	session.close();
        	System.out.println("addDAO_ok");
    	}catch(Exception ex)
    	{
    		System.out.println(ex.getMessage());
    	}
    }
}
