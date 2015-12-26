package com.mimman.mybatis;

import java.io.IOException;
import java.io.Reader;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

import com.mimman.membership.repository.Login;
import com.mimman.membership.repository.Member;
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
			throw new RuntimeException("SqlSessionFactory �ν��Ͻ� ���� ���� : " + err);
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
}
