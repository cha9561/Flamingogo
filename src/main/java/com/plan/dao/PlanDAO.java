package com.plan.dao;

import java.io.Reader;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

import com.plan.dao.PlanDTO;

public class PlanDAO {

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
    public static void planInsert(PlanDTO vo)
    {
    	try
    	{
    	SqlSession session=ssf.openSession(true);
    	session.insert("planInsert",vo);
    	session.close();
    	}catch(Exception ex)
    	{
    		System.out.println(ex.getMessage());
    	}
    	System.out.println("dao");
    }
    

/*    public static List<PlanDTO> planInsert(PlanDTO vo)
    {
    	SqlSession session=ssf.openSession(true);
    	List<PlanDTO> list=PlanDAO.planInsert(vo);
    	session.close();
		return list;
    }
    */
    // 전체 데이터 읽기 
    public static List<PlanDTO> planAllData(String id)
    {
    	SqlSession session=ssf.openSession();
    	List<PlanDTO> list=session.selectList("planAllData",id);
    	session.close();
    	return list;
    }
    
    public static String planlatitudeData(String id)
    {
    	try{
    		SqlSession session=ssf.openSession();
        	String planlatitude=session.selectOne("planlatitudeData",id);
        	session.close();
        	return planlatitude;
    	}catch(Exception ex)
    	{
    		System.out.println(ex.getMessage());
    	}
    	SqlSession session=ssf.openSession();
    	String planlatitude=session.selectOne("planlatitudeData",id);
    	session.close();
    	return planlatitude;
    }
    public static String planlongitudeData(String id)
    {
    	SqlSession session=ssf.openSession();
    	String longitude=session.selectOne("planlongitudeData",id);
    	session.close();
    	return longitude;
    }
    public static String planlatmaxData(String id)
    {
    	SqlSession session=ssf.openSession();
    	String latmax=session.selectOne("planlatmaxData",id);
    	session.close();
    	return latmax;
    }
    public static String planlngmaxData(String id)
    {
    	SqlSession session=ssf.openSession();
    	String lngmax=session.selectOne("planlngmaxData",id);
    	session.close();
    	return lngmax;
    }
}
