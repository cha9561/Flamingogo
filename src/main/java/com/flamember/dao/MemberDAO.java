package com.flamember.dao;

import java.io.Reader;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

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
		int count=session.selectOne("memberIdCount",id);
		if(count==0)
		{
			result="NOID";
		}
		else
		{
			MemberDTO d=session.selectOne("memberGetPwd",id);
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
}
