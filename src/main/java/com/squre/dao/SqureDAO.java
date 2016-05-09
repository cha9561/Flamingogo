package com.squre.dao;

import java.io.Reader;
import java.util.List;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

public class SqureDAO {
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
    public static void squreInsert(SqureVO vo)
    {
    	System.out.println("squreInsert");
    	SqlSession session=ssf.openSession(true);
    	session.insert("squreInsert",vo);
    	System.out.println("Success Insert");
    	session.close();
    }
    public static void squreDelete()
    {
    	SqlSession session=ssf.openSession(true);
    	for(int no=1; no<=6; no++)
    	{
    		session.delete("squreDelete",no);
    	}
    	System.out.println("Success Dellete");
    	session.close();
    }
    public static List<SqureVO> squreAllData()
    {
    	SqlSession session=ssf.openSession();
    	
    	List<SqureVO> list=session.selectList("squreAllData");
    	System.out.println("Success squreAllData");
    	session.close();
    	return list;
    }
}
