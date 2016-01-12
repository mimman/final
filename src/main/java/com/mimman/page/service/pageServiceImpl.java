package com.mimman.page.service;


import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.List;
import java.util.Vector;

import javax.servlet.http.HttpSession;

import org.springframework.web.multipart.MultipartFile;

import com.mimman.board.event.repository.EventBoardDto;
import com.mimman.board.event.repository.EventBoardSearch;
import com.mimman.board.event.repository.EventModifyDto;
import com.mimman.comment.repository.commentDto;
import com.mimman.mybatis.pageManager;
import com.mimman.page.repository.PageDto;

public class pageServiceImpl implements PageService {
	private FileOutputStream fout;
	

	public void setFout(FileOutputStream fout) {
		this.fout = fout;
	}

	public List getBoardList(String boardcd) {
		return pageManager.getList(boardcd);
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

	public void BoardReply(EventBoardDto dto) {
		
		pageManager.boardReply(dto);
		
	}

	public void BoardCount(int articleno) {
		pageManager.boardCount(articleno);
		
	}

	public List getBoardSearch(EventBoardSearch ebSearch) {
		
		return pageManager.boardSearch(ebSearch);
	}

	public List myBoardView(String id) {
		
		return pageManager.boardMypage(id);
	}

	public List setComment(commentDto commentDto,String param) {
		
		return pageManager.setComment(commentDto,param);
		
	}

	public List getCommentList(int articleno) {
		
		return pageManager.getCommentList(articleno);
	}

	public List deleteComment(int commentno,int articleno) {
		return pageManager.deleteComment(commentno,articleno);
		
	}


	public void BoardAllCommentDelete(int articleno) {
		pageManager.BoardAllDeleteComment(articleno);
		
	}

	public void writeFile(MultipartFile file, String path, String originalFilename){
	      try {
	         byte fileData[] = file.getBytes();
	         fout = new FileOutputStream(path + File.separator + originalFilename);
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
