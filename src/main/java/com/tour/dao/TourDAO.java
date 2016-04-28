package com.tour.dao;

import java.io.Reader;
import java.util.List;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

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
		SqlSession session=ssf.openSession();
		TourVO vo=session.selectOne("tourContent",pno);
		session.close();
		
		return vo;
	}
	public static List<String> tourCategory()
	{
		try{
			SqlSession session=ssf.openSession();
			//String list=session.selectOne("tourCategory");
			List<String> list=session.selectList("tourCategory");
			session.close();
			
			return list;
		}catch(Exception ex)
		{
			System.out.println(ex.getMessage());
		}
		SqlSession session=ssf.openSession();
		List<String> list=session.selectList("tourCategory");
		session.close();
		
		return list;
	}
}
