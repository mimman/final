package com.mimman.mybatis;

import java.io.IOException;
import java.io.Reader;
import java.util.List;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

import com.mimman.membership.repository.Login;
import com.mimman.membership.repository.Member;
import com.mimman.membership.repository.Search;
import com.mimman.membership.repository.pwSearch;
import com.mimman.reservation.repository.HumanNumDto;
import com.mimman.reservation.repository.ReserveCompleteDto;
import com.mimman.reservation.repository.ReserveDto;
import com.mimman.reservation.repository.userReservationDto;
import com.mimman.membership.repository.Update;

public class reserveManager {
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
	
	public static void addReserve(ReserveDto reserDto){

		SqlSession session = sqlFactory.openSession();
	
		session.insert("addReserve",reserDto); 
		session.commit();
	}
	
	public static List getListReser(){
		List list = null;
		SqlSession session = sqlFactory.openSession();
		list = session.selectList("getListReser");
		return list;
	}

	public static List searchReser(userReservationDto userReserDto) {
		List list = null;
		SqlSession session = sqlFactory.openSession();
		if("��".equals(userReserDto.getReserveLine())){
			System.out.println("��");
			list = session.selectList("searchReser", userReserDto);
		}
		if("�պ�".equals(userReserDto.getReserveLine())){
			System.out.println("�պ�");
			list = session.selectList("searchReserShuttle", userReserDto);
			System.out.println(list.size());
		}
		

		return list;
		
	}

	public static List reservePop(int reserNum) {
		List list = null;
		SqlSession session = sqlFactory.openSession();
		list = session.selectList("searchReser", reserNum);
		return list;
	}

	public static List searchReserveList(HumanNumDto hdto) {
		
		
		List list = null;
		SqlSession session = sqlFactory.openSession();
		if(hdto.getReserveLine().equals("��")){
			list = session.selectList("searchReserveList",hdto);
		}
		else if(hdto.getReserveLine().equals("�պ�")){
			list = session.selectList("searchShttleList",hdto);
		}
		
		
		return list;
	}

	public static ReserveCompleteDto completeReserve(ReserveCompleteDto reserComDto) {
		SqlSession session = sqlFactory.openSession();
		
		session.insert("reserveComplete",reserComDto);
		session.update("updateSeat",reserComDto);
		session.update("updateNum",reserComDto);
		session.update("updateMileage",reserComDto);
		System.out.println(reserComDto.getReserveNum());
		ReserveCompleteDto comDto = session.selectOne("selectNum", reserComDto);
		session.commit();
		return comDto;
	}

		   
}
