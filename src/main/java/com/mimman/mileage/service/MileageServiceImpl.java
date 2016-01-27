package com.mimman.mileage.service;

import com.mimman.membership.repository.Member;
import com.mimman.mybatis.memberManager;

public class MileageServiceImpl implements MileageService {
public Member updateUser(String id){
		
		Member dto = memberManager.updateUser(id);
		
		return dto;
	}
}
