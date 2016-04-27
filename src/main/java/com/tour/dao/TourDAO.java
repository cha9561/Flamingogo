package com.tour.dao;

import java.io.Reader;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;
import com.tour.*;

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
    public static ProductVO tourContent2(int pno)
    {
    	SqlSession session=ssf.openSession();
    	ProductVO vo=session.selectOne("tourContent", pno);
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
    }
}
