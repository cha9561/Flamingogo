//webApplicationContext = class������ = container
//�츮�� ���� class = component
//spring�� �ٽ� - �淮 �����̳� 
package com.sist.controller;
import java.util.*;

import javax.xml.parsers.SAXParser;
import javax.xml.parsers.SAXParserFactory;

import java.io.*;

public class WebApplicationContext {
//config���� �� �ڹ� file�� ó��
List<String> list=new ArrayList<String>();
public WebApplicationContext(String path)
{
   try
   {
      SAXParserFactory spf=SAXParserFactory.newInstance();
      SAXParser sp=spf.newSAXParser();
      HandlerMapping hm=new HandlerMapping();
      sp.parse(new File(path), hm);//new File(path)�� dispatcher���� �Ѱ���
      list=hm.list; //list => xml���� ���� package�� �����ִ�
      
      //1���� ��Ű���� �������� ���� (�ȿ� for��) , �������� ��Ű�� ���� �� �����Ƿ� for��(�ۿ�)
      /*for(String packName:list)
      {//hm�̰����� �ִ¾ִ� ��Ű���� ������ �Դ�
         List<String> fList=FileConfig.getFileName(packName);
         for(String fileName:fList)
         {//������ ��� java������ �־����
            list.add(fileName);//list�� �� �߰����� ���� dispather�� �ѱ��.
         }
      }*/
   }catch(Exception ex){}
}
//list ���� ���� - fileName�� ���ؼ� ���� list(��Ű������ ������)
public List<String> getFileName()
{
   List<String> packList=new ArrayList<String>();
   for(String pack:list)//list�� ��������� ����
   {
      List<String> fList=FileConfig.getFileName(pack); 
      
      for(String s:fList)
      {
         packList.add(s);
      }
   }
   return packList; //�̰� dispatcher�� �ѱ��.
}
}