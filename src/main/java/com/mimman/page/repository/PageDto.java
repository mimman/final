package com.mimman.page.repository;

public class PageDto {
	   private int totalRecord = 0;
	   private int numPerPage = 10;
	   private int totalPage = 0;
	   private int nowPage = 0;
	   private int beginPerPage = 0;
	   private int pagePerBlock = 3;
	   private int totalBlock = 0;
	   private int nowBlock = 0;
	   
	   
	   public int getTotalRecord() {
	      return totalRecord;
	   }
	   public void setTotalRecord(int totalRecord) {
	      this.totalRecord = totalRecord;
	   }
	   public int getNumPerPage() {
	      return numPerPage;
	   }
	   public void setNumPerPage(int numPerPage) {
	      this.numPerPage = numPerPage;
	   }
	   public int getTotalPage() {
	      return totalPage;
	   }
	   public void setTotalPage(int totalPage) {
	      this.totalPage = totalPage;
	   }
	   public int getNowPage() {
	      return nowPage;
	   }
	   public void setNowPage(int nowPage) {
	      this.nowPage = nowPage;
	   }
	   public int getBeginPerPage() {
	      return beginPerPage;
	   }
	   public void setBeginPerPage(int beginPerPage) {
	      this.beginPerPage = beginPerPage;
	   }
	   public int getPagePerBlock() {
	      return pagePerBlock;
	   }
	   public void setPagePerBlock(int pagePerBlock) {
	      this.pagePerBlock = pagePerBlock;
	   }
	   public int getTotalBlock() {
	      return totalBlock;
	   }
	   public void setTotalBlock(int totalBlock) {
	      this.totalBlock = totalBlock;
	   }
	   public int getNowBlock() {
	      return nowBlock;
	   }
	   public void setNowBlock(int nowBlock) {
	      this.nowBlock = nowBlock;
	   }
	   
	   
	}