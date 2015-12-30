package com.mimman.mybatis;

import java.io.IOException;
import java.io.Reader;
import java.util.ArrayList;
import java.util.List;
import java.util.Vector;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

import com.mimman.board.event.repository.EventBoardDto;
import com.mimman.board.event.repository.EventModifyDto;
import com.mimman.membership.repository.Member;
import com.mimman.page.repository.PageDto;

public class pageManager {
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
	
	public static List getList(){
		
		List list = null;
		SqlSession session = sqlFactory.openSession();
		list = session.selectList("getList");
		return list;
		
	}

	public static void boardWrite(EventBoardDto dto) {
		SqlSession session = sqlFactory.openSession();
		
		session.insert("EventboardWrite",dto); 
		session.commit();
	}
	
	public static EventBoardDto boardRead(int articleno){
		SqlSession session = sqlFactory.openSession();
		EventBoardDto dto = session.selectOne("EventBoardRead",articleno);
		return dto;
		
	}
	
	public static void boardDelete(int articleno){
		SqlSession session = sqlFactory.openSession();
		session.delete("EventBoardDelete",articleno);
		session.commit();
	}
	
	public static void boardModify(EventModifyDto dto){
		SqlSession session = sqlFactory.openSession();
		session.update("EventBoardModify",dto);
		session.commit();
	}
}
