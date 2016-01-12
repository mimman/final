package com.mimman.page.service;

import java.util.List;

import org.springframework.web.multipart.MultipartFile;

import com.mimman.board.event.repository.EventBoardDto;
import com.mimman.board.event.repository.EventBoardSearch;
import com.mimman.board.event.repository.EventModifyDto;
import com.mimman.page.repository.PageDto;
import com.mimman.comment.repository.commentDto;

public interface PageService {
	public List getBoardList(String boardcd);
	public void BoardWrite(EventBoardDto dto);
	public EventBoardDto BoardRead(int articleno);
	public void BoardDelete(int articleno);
	public void BoardModify(EventModifyDto dto);
	public void BoardReply(EventBoardDto dto);
	public void BoardCount(int articleno);
	public List getBoardSearch(EventBoardSearch ebSearch);
	public List myBoardView(String id);
	public List setComment(commentDto commentDto,String param);
	public List getCommentList(int articleno);
	public List deleteComment(int commentno,int articleno);
	public void BoardAllCommentDelete(int articleno);
	public void writeFile(MultipartFile file, String realPath, String originalFilename);
}
