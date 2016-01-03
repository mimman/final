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
import com.mimman.board.event.repository.EventBoardSearch;
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
			throw new RuntimeException("SqlSessionFactory �ν��Ͻ� ���� ���� : " + err);
		}
	}
	
	public static List getList(String boardcd){
		
		List list = null;
		SqlSession session = sqlFactory.openSession();
		list = session.selectList("getList",boardcd);
		return list;
		
	}

	public static void boardWrite(EventBoardDto dto) {
		SqlSession session = sqlFactory.openSession();
		
		session.insert("EventboardWrite",dto);
		session.update("EventBoardInsert",dto);
		session.commit();
	}
	
	public static void boardReply(EventBoardDto dto){
		SqlSession session = sqlFactory.openSession();
		
		session.update("EventBoardReplyUpdate",dto);
		session.insert("EventboardReply",dto);
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
	
	public static void boardCount(int articleno){
		SqlSession session = sqlFactory.openSession();
		session.update("EventBoardCount",articleno);
		session.commit();
	}
	
	public static List boardSearch(EventBoardSearch ebSearch){
		System.out.println(ebSearch.getBoardcd()+ebSearch.getKeyField()+ebSearch.getKeyWord());
		List list = null;
		SqlSession session = sqlFactory.openSession();
		list = session.selectList("getSearchList",ebSearch);
		System.out.println("list ������: "+list.size());
		return list;
	}
}
