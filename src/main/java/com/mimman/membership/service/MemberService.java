package com.mimman.membership.service;

import com.mimman.membership.repository.Login;
import com.mimman.membership.repository.Member;
import com.mimman.membership.repository.Update;

public interface MemberService {
	public void getList(Member dto);
	public Member authenticate(Login login);
	public Member updateUser(String id);
	public void update(Update update);
	public void withdraw(String id);
}