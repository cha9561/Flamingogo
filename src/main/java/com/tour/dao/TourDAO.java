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
	// ����
    public static List<BuyVO> buyUserAllData(String id)
    {
    	try
    	{
    	SqlSession session=ssf.openSession();
    	List<BuyVO> list=session.selectList("buyUserAllData",id);
    	session.close();
    	return list;
    	}catch(Exception ex)
    	{
    		System.out.println(ex.getMessage());
    	}
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
    // ���������� ���� ī��Ʈ
    public static int buyCount(String id)
    {
    	try
    	{
    		SqlSession session=ssf.openSession();
    		int buyCount=session.selectOne("buyCount",id);
    		session.close();
    		
    		return buyCount;
    	}catch(Exception ex)
    	{
    		System.out.println(ex.getMessage());
    	}
    	
    	SqlSession session=ssf.openSession();
		int buyCount=session.selectOne("buyCount",id);
		session.close();
		
		return buyCount;
    }
    //������º���
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
    //�� ������ȸ
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
    //�� �߰�
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
    //�� ���
    public static void add_cancle(AddSpotVO vo)
    {
    	try
    	{
    		SqlSession session=ssf.openSession(true);
	    	session.delete("add_cancle",vo);
	    	session.close();
    	}catch(Exception ex)
    	{
    		System.out.println(ex.getMessage());
    	}
    }
    //���������� �� ī��Ʈ ��ȸ
    public static int addCount(String id)
    {
    	try
    	{
    		SqlSession session=ssf.openSession();
    		int myCount=session.selectOne("addCount",id);
    		session.close();
    		
    		return myCount;
    	}catch(Exception ex)
    	{
    		System.out.println(ex.getMessage());
    	}
    	
    	SqlSession session=ssf.openSession();
		int myCount=session.selectOne("addCount",id);
		session.close();
		
		return myCount;
    }
    //���������� �� ����Ʈ ��ȸ
    public static List<AddSpotVO> myAdd(String id)
    {
    	try
    	{
    		SqlSession session=ssf.openSession();
        	List<AddSpotVO> list=session.selectList("myAdd",id);
        	session.close();
        	return list;
    	}catch(Exception ex)
    	{
    		System.out.println(ex.getMessage());
    	}
    	SqlSession session=ssf.openSession();
    	List<AddSpotVO> list=session.selectList("myAdd",id);
    	session.close();
    	
    	return list;
    }
}
