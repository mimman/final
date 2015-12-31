package com.mimman.page.service;

import java.util.List;

import com.mimman.board.event.repository.EventBoardDto;
import com.mimman.board.event.repository.EventModifyDto;
import com.mimman.page.repository.PageDto;

public interface PageService {
	public List getBoardList();
	public void BoardWrite(EventBoardDto dto);
	public EventBoardDto BoardRead(int articleno);
	public void BoardDelete(int articleno);
	public void BoardModify(EventModifyDto dto);
	public void BoardReply(EventBoardDto dto);
	public void BoardCount(int articleno);
}
