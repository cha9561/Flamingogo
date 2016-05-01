package com.recommend.dao;

import java.io.Reader;
import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;
import java.util.*;


public class RecoDAO {
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
	/*public static void recomCityInsert(RecoVO vo)
    {
		System.out.println("recomCityInsert");
    	SqlSession session=ssf.openSession(true);
    	session.insert("recomCityInsert",vo);
    	session.close();
    	System.out.println("recomCityInsert2");
    }*/
	public static RecoVO findCityInform(String city)
    {
		//System.out.println("1findStay city : "+city);
		
    	SqlSession session=ssf.openSession();
    	int num=session.selectOne("cityCount", city);
    	
    	if(num<1)
    		return null;
    	RecoVO rvo=session.selectOne("findCityInform", city);
    	//String stay_serial=session.selectOne("findStay");
    	//System.out.println("findStay  stay : "+rvo.getStay());
    	//System.out.println("findStay  rest : "+rvo.getRest());
    	
    	session.close();
    	//System.out.println("findStay2");
    	
    	return rvo;
    }
}
