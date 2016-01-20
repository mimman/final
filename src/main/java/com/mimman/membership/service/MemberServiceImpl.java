package com.mimman.membership.service;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;

import org.springframework.web.multipart.MultipartFile;

import com.mimman.exception.IdPasswordNotMachingException;
import com.mimman.membership.repository.Login;
import com.mimman.membership.repository.Member;
import com.mimman.membership.repository.Search;
import com.mimman.membership.repository.pwSearch;
import com.mimman.membership.repository.Update;
import com.mimman.mybatis.memberManager;

public class MemberServiceImpl implements MemberService {
	private FileOutputStream fout;
	
	public void getList(Member dto) {
		memberManager.addUser(dto);
	}
	
	public Member authenticate(Login login){
		
		Member dto = memberManager.selectByEmail(login);
		
		if(dto == null){
			throw new IdPasswordNotMachingException();
		}
		
		if(!dto.matchPassword(login.getLog_password())){
			throw new IdPasswordNotMachingException();
		}

		return dto;
	
	}
	
	public Member updateUser(String id){
		
		Member dto = memberManager.updateUser(id);
		
		return dto;
	}
	
	public void update(Update update){
		memberManager.update(update);
	}

	public void withdraw(String id) {
		
		memberManager.drop(id);
		
	}
	
	 public String idSearch(Search search) {
	      System.out.println(search.getUser_nm()+search.getEmail1());
	      
	      String dto=memberManager.idSearch(search);
	      
	      return dto;
	   }

	   public String pwSearch(pwSearch search) {
	      String dto=memberManager.pwSearch(search);
	      return dto;
	   }

	public void writeFile(MultipartFile file, String realPath, String originalFilename) {
		  try {
		         byte fileData[] = file.getBytes();
		         fout = new FileOutputStream(realPath + File.separator + originalFilename);
		         fout.write(fileData);
		      } catch (IOException err) {
		         err.printStackTrace();
		      } finally {
		         try {
					fout.close();
				} catch (IOException e) {
					
					e.printStackTrace();
				}
		      }
		
	}
	   
		
		
}
