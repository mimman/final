package com.mimman.membership.service;

import com.mimman.membership.repository.Member;
import com.mimman.mybatis.memberManager;

public class MemberServiceImpl implements MemberService {

	public void getList(Member dto) {
		System.out.println("getList ÁøÀÔ");
		memberManager.addUser(dto);
		System.out.println("getList ³¡");
	}
}
