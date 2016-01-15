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
			throw new RuntimeException("SqlSessionFactory 인스턴스 생성 실패 : " + err);
		}
	}
	
	public static void addReserve(ReserveDto reserDto){

		SqlSession session = sqlFactory.openSession();
		System.out.println("항공예매추가:"+reserDto.getReserveLine());
		if(reserDto.getReserveLine().equals("편도")){
			session.insert("addReserve",reserDto);
		}
		else if(reserDto.getReserveLine().equals("왕복")){
			session.insert("addReserveShuttle",reserDto);
		}
		
		 
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
		if("편도".equals(userReserDto.getReserveLine())){
			System.out.println("편도");
			list = session.selectList("searchReser", userReserDto);
		}
		if("왕복".equals(userReserDto.getReserveLine())){
			System.out.println("왕복");
			list = session.selectList("searchReserShuttle", userReserDto);
			System.out.println("왕복리스트:"+list.size());
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
		System.out.println(hdto.getReserveLine());
		if(hdto.getReserveLine().equals("편도")){
			list = session.selectList("searchReserveList",hdto);
		}
		else if(hdto.getReserveLine().equals("왕복")){
			list = session.selectList("searchShttleList",hdto);
		}
		System.out.println("searchReserveList 사이즈:"+list.size());
		
		return list;
	}
	

	public static ReserveCompleteDto completeReserve(ReserveCompleteDto reserComDto) {
		SqlSession session = sqlFactory.openSession();
		System.out.println(reserComDto.getEndCity());
		session.insert("reserveComplete",reserComDto);
		session.update("updateSeat",reserComDto);
		session.update("updateNum",reserComDto);
		session.update("updateMileage",reserComDto);
		
		if(reserComDto.getReserveLine().equals("왕복")){
			session.insert("reserveComplete2",reserComDto);
			session.update("updateSeat2",reserComDto);
			session.update("updateNum2",reserComDto);
			session.update("updateMileage2",reserComDto);
		}
		System.out.println(reserComDto.getReserveNum());
		ReserveCompleteDto comDto = session.selectOne("selectNum", reserComDto);
		session.commit();
		return comDto;
	}

	

		   
}
