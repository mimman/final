package com.mimman.board.event.repository;

public class EventBoardSearch {
	
	private String keyField;
	private String keyWord;
	private String boardcd;
	
	

	public String getBoardcd() {
		return boardcd;
	}
	public void setBoardcd(String boardcd) {
		this.boardcd = boardcd;
	}
	public String getKeyField() {
		return keyField;
	}
	public void setKeyField(String keyField) {
		this.keyField = keyField;
	}
	public String getKeyWord() {
		return keyWord;
	}
	public void setKeyWord(String keyWord) {
		this.keyWord = keyWord;
	}

	
	
}
