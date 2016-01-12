package com.mimman.mybatis;

import java.io.IOException;
import java.io.Reader;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

import com.mimman.membership.repository.Login;
import com.mimman.membership.repository.Member;
import com.mimman.membership.repository.Search;
import com.mimman.membership.repository.pwSearch;
import com.mimman.membership.repository.Update;

public class memberManager {
	private static SqlSessionFactory sqlFactory;
	static{
		try{
			Reader reader = 
				Resources.getResourceAsReader("com/mimman/mybatis/sqlmapConfig.xml");
			
			sqlFactory = new SqlSessionFactoryBuilder().build(reader);
		}
		catch(IOException err){
			throw new RuntimeException("SqlSessionFactory 인스턴스 생성 실패 : " + err);
		}
	}
	
	public static void addUser(Member dto){

		SqlSession session = sqlFactory.openSession();
	
		session.insert("addUser",dto); 
		session.commit();
		
	}
	
	public static Member selectByEmail(Login login){
		SqlSession session = sqlFactory.openSession();
		Member dto = null;
		dto = session.selectOne("selectByEmail", login);
		return dto;
	}
	
	public static Member updateUser(String id){
		SqlSession session = sqlFactory.openSession();
		Member dto = null;
		dto = session.selectOne("updateUser",id);
		return dto;
	}
	
	public static void update(Update update){
	
		SqlSession session = sqlFactory.openSession();
		
		session.update("update",update); 
		session.commit();
	}
	
	public static void drop(String id){
		System.out.println(id);
		SqlSession session = sqlFactory.openSession();
		session.delete("drop",id);
		session.commit();
	}
	
	   public static String idSearch(Search search){
		      SqlSession session = sqlFactory.openSession();
		      String dto = null;
		      dto = session.selectOne("idSearch", search);
		      return dto;
		   }

		 public static String pwSearch(pwSearch search) {
		      SqlSession session = sqlFactory.openSession();
		      String dto = null;
		      dto = session.selectOne("pwSearch", search);
		      System.out.println(dto);
		      return dto;
		   }
		   
}
