package com.mimman.exception;

public class IdPasswordNotMachingException extends RuntimeException{
	public void msg(){
		
		System.out.println("아이디와 비밀번호가 맞지 않습니다");
	}
}
