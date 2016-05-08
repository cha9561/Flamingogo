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
			/*1. Config.xml �Ľ̿�û*/
			Reader reader=Resources.getResourceAsReader("Config.xml");//class������ �Ѱ��ָ� �Ľ��� �ȴ�.
			ssf=new SqlSessionFactoryBuilder().build(reader);
			//�Ľ��� �ٵǰ� xml �Ľ̵Ȱ��� ������ �ִٰ� ssf�� �Ѱ��ش�.
		}catch(Exception ex)
		{
			System.out.println(ex.getMessage());
		}
	}
	public static String memberLogin(String id,String pwd)
	{
		String result="";
		SqlSession session=ssf.openSession();//Ŀ�ؼ� ������
		System.out.println("id:"+id+"pwd :"+pwd);
		int count=session.selectOne("memberIdCount",id);
		
		/*System.out.println("test");
		String name ="�Ͻ�";
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
	//autoĿ���� ����, ������Ʈ, ����Ʈ �϶� �� ��������� -> sqlSession session=ssf.openSession(true);
	//select�� ��� -> sqlSession=ssf.openSession();  //true, false�� �̷��� ������ close() ���ְ� �ٽ� ��������� ��.
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
		System.out.println(vo.getBirth().substring(0,4)+"�����׽�Ʈ");
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
