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
    	SqlSession session=ssf.openSession(true);
    	session.insert("planInsert",vo);
    	session.close();
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
    public static List<PlanDTO> planAllData(Map map)
    {
    	SqlSession session=ssf.openSession();
    	List<PlanDTO> list=session.selectList("planAllData",map);
    	session.close();
    	return list;
    }
}
