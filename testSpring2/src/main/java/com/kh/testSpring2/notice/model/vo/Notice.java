package com.kh.testSpring2.notice.model.vo;

import java.sql.Date;

import org.springframework.stereotype.Component;

@Component
public class Notice{

	private int no;
	private String title;
	private String content;
	private String writer;
	private int nCount;
	private Date nDate;
	//TEST
	public Notice() { }
	
	public Notice(String nTitle, String nContent, String nWriter) {
		this.title = nTitle;
		this.content = nContent;
		this.writer = nWriter;
	}

	//GOGO
	@Override
	public String toString() {
		return "NoticTTe [no=" + no + ", title=" + title + ", content=" + content + ", writer=" + writer + ", nCount="
				+ nCount + ", nDate=" + nDate + "]";
	}

	public int getNo() {
		return no;
	}

	public void setNo(int no) {
		this.no = no;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public String getWriter() {
		return writer;
	}

	public void setWriter(String writer) {
		this.writer = writer;
	}

	public int getnCount() {
		return nCount;
	}

	public void setnCount(int nCount) {
		this.nCount = nCount;
	}

	public Date getnDate() {
		return nDate;
	}

	public void setnDate(Date nDate) {
		this.nDate = nDate;
	}

	
	
	
}
