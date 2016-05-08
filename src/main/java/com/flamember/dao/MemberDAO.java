package com.flamember.dao;

import java.io.Reader;
import java.util.*;
import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

import com.mongodb.DBAddress;

public class MemberDAO {
	private static SqlSessionFactory ssf;
	static
	{
		try
		{
			/*1. Config.xml 파싱요청*/
			Reader reader=Resources.getResourceAsReader("Config.xml");//class쪽으로 넘겨주면 파싱이 된다.
			ssf=new SqlSessionFactoryBuilder().build(reader);
			//파싱이 다되고 xml 파싱된것을 가지고 있다가 ssf로 넘겨준다.
		}catch(Exception ex)
		{
			System.out.println(ex.getMessage());
		}
	}
	public static String memberLogin(String id,String pwd)
	{
		String result="";
		SqlSession session=ssf.openSession();//커넥션 가져옴
		System.out.println("id:"+id+"pwd :"+pwd);
		int count=session.selectOne("memberIdCount",id);
		
		/*System.out.println("test");
		String name ="니스";
		int stay=session.selectOne("findStay",name);
		System.out.println("findStay  sn : "+stay);*/
		
		System.out.println("count :"+count);
		if(count==0)
		{
			result="NOID";
		}
		else
		{
			System.out.println("memberLogin");
			MemberDTO d=session.selectOne("memberGetPwd",id);
			//MemberDTO d=session.select
			System.out.println("Get:"+d.getPwd());
			if(pwd.equals(d.getPwd()))
			{
				result=d.getName()+"|"+d.getAdmin_no();
			}else{
				result="NOPWD";
			}
		}		
		session.close();
		System.out.println("result"+result);
		return result;
	}
	//auto커밋은 수정, 업데이트, 딜리트 일때 꼭 날려줘야함 -> sqlSession session=ssf.openSession(true);
	//select인 경우 -> sqlSession=ssf.openSession();  //true, false가 이렇게 있으면 close() 해주고 다시 생성해줘야 함.
	public static int memberIdCheck(String id)
	{
		SqlSession session=ssf.openSession();
		int count=session.selectOne("memberIdCount",id);
		session.close();
		return count;
	}

	public static void memberJoin(MemberDTO vo)
	{
			System.out.println("memberJoin-"+vo.getTel());
		  SqlSession session=ssf.openSession(true);
		  session.insert("memberJoin",vo);
		  System.out.println("memberJoin2-"+vo.getName());
		  session.close();

	}
	
	public static MemberDTO memberInfo(String id)
	{
		System.out.println("memberInfo");
		SqlSession session=ssf.openSession();
		MemberDTO vo = session.selectOne("memberInfo",id);
		System.out.println(vo.getBirth().substring(0,4)+"나이테스트");
		session.close();
		return vo;
	}
	
	 public static MemberDTO myInfodata(String id)
	    {
	    	SqlSession session=ssf.openSession();
	    	MemberDTO vo=session.selectOne("myInfodata", id);
	    	session.close();
	    	return vo;
	    }
}
