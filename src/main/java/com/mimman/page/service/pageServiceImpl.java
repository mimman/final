package com.mimman.page.service;


import java.util.List;
import java.util.Vector;

import javax.servlet.http.HttpSession;

import com.mimman.board.event.repository.EventBoardDto;
import com.mimman.board.event.repository.EventModifyDto;
import com.mimman.mybatis.pageManager;
import com.mimman.page.repository.PageDto;

public class pageServiceImpl implements PageService {

	public List getBoardList() {
		return pageManager.getList();
	}

	public void BoardWrite(EventBoardDto dto) {
	
		pageManager.boardWrite(dto);
		
	}

	public EventBoardDto BoardRead(int articleno) {
		EventBoardDto dto = pageManager.boardRead(articleno);
		
		return dto;
	}

	public void BoardDelete(int articleno) {
		pageManager.boardDelete(articleno);
		
	}

	public void BoardModify(EventModifyDto dto) {
		pageManager.boardModify(dto);
		
	}

	

}
