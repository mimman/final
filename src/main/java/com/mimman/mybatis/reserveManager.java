package com.mimman.mybatis;

import java.io.IOException;
import java.io.Reader;
import java.util.Enumeration;
import java.util.List;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpSession;
import javax.servlet.http.HttpSessionContext;

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
		System.out.println("�װ������߰�:"+reserDto.getReserveLine());
		if(reserDto.getReserveLine().equals("��")){
			session.insert("addReserve",reserDto);
		}
		else if(reserDto.getReserveLine().equals("�պ�")){
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
		List list2 = null;
		
		SqlSession session = sqlFactory.openSession();
		
			
			list = session.selectList("searchReser", userReserDto);
			System.out.println("������Ʈ:"+list.size());
		
		if("�պ�".equals(userReserDto.getReserveLine()) || "�ٱ�������".equals(userReserDto.getReserveLine())){
			System.out.println("�պ�");
			list2 = session.selectList("searchReserShuttle", userReserDto);
			
			System.out.println("�պ�����Ʈ:"+list2.size());
			if(list.size() == 0 || list2.size() == 0){
				return null;
			}
		}
		
		return list;
		
	}
	
	public static List searchMultiReser(userReservationDto userReserDto) {
		
	List list1 = null;
	
	SqlSession session = sqlFactory.openSession();
	System.out.println("�ٱ���1");
		
	list1 = session.selectList("searchMultiReser", userReserDto);
	
	System.out.println("�ٱ�������Ʈ1:"+list1.size());

	return list1;
	}
	
	public static List searchMultiReser2(userReservationDto userReserDto) {
		List list2 = null;
		
		SqlSession session = sqlFactory.openSession();
		System.out.println("�ٱ���2");
			
		list2 = session.selectList("searchMultiReser2", userReserDto);
		
		System.out.println("�ٱ�������Ʈ2:"+list2.size());

		return list2;
	}

	public static List searchMultiReser3(userReservationDto userReserDto) {
		List list3 = null;
		
		SqlSession session = sqlFactory.openSession();
		System.out.println("�ٱ���3");
			
		list3 = session.selectList("searchMultiReser3", userReserDto);
		
		System.out.println("�ٱ�������Ʈ3:"+list3.size());

		return list3;
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
		list = session.selectList("searchReserveList",hdto);
		System.out.println("searchReserveList ������:"+list.size());
		
		return list;
	}
	
	public static List searchReserveList2(HumanNumDto hdto) {
	
		List list = null;
		SqlSession session = sqlFactory.openSession();
		System.out.println(hdto.getReserveLine());
	
			list = session.selectList("searchShttleList",hdto);
	
		System.out.println("searchReserveList2 ������:"+list.size());
		
		return list;
	}
	

	public static ReserveCompleteDto completeReserve(ReserveCompleteDto reserComDto) {
		SqlSession session = sqlFactory.openSession();
		System.out.println(reserComDto.getEndCity());
		session.insert("reserveComplete",reserComDto);
		session.update("updateSeat",reserComDto);
		session.update("updateNum",reserComDto);
		session.update("updateMileage",reserComDto);
		
		if(reserComDto.getReserveLine().equals("�պ�")){
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
	public static ReserveCompleteDto completMultiReserve(ReserveCompleteDto reserComDto) {
		SqlSession session = sqlFactory.openSession();
		session.insert("reserveComplete",reserComDto);
		session.update("updateSeat",reserComDto);
		session.update("updateNum",reserComDto);
		session.update("updateMileage",reserComDto);
		
		session.insert("reserveComplete2",reserComDto);
		session.update("updateSeat2",reserComDto);
		session.update("updateNum2",reserComDto);
		session.update("updateMileage2",reserComDto);
		
		session.insert("reserveComplete3",reserComDto);
		session.update("updateSeat3",reserComDto);
		session.update("updateNum3",reserComDto);
		session.update("updateMileage3",reserComDto);
		
		ReserveCompleteDto comDto = session.selectOne("selectNum", reserComDto);
		session.commit();
		return comDto;
	}

	public static List searchMulitReserveList1(HumanNumDto hdto) {
		List list = null;
		SqlSession session = sqlFactory.openSession();
		System.out.println(hdto.getReserveLine());
		list = session.selectList("searchMulitReserveList1",hdto);
		System.out.println("searchMulitReserveList1 ������:"+list.size());
		
		return list;
	}

	public static List searchMulitReserveList2(HumanNumDto hdto) {
		List list = null;
		SqlSession session = sqlFactory.openSession();
		System.out.println(hdto.getReserveLine());
		list = session.selectList("searchMulitReserveList2",hdto);
		System.out.println("searchMulitReserveList2 ������:"+list.size());
		
		return list;
	}

	public static List searchMulitReserveList3(HumanNumDto hdto) {
		List list = null;
		SqlSession session = sqlFactory.openSession();
		System.out.println(hdto.getReserveLine());
		list = session.selectList("searchMulitReserveList3",hdto);
		System.out.println("searchMulitReserveList3 ������:"+list.size());
		
		return list;
	}

	public static ReserveCompleteDto searchReservation(ReserveCompleteDto comReserveNum) {
		ReserveCompleteDto dto = null;
		SqlSession session = sqlFactory.openSession();
		dto = session.selectOne("searchReservation",comReserveNum);
		return dto;
	}

	public static void reservationDelete(ReserveCompleteDto comReserveNum) {
		SqlSession session = sqlFactory.openSession();
		session.delete("reservationDelete",comReserveNum);
		session.commit();
		
	}

	

	

	

	

		   
}
