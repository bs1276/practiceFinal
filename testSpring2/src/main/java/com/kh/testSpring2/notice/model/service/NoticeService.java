package com.kh.testSpring2.notice.model.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.testSpring2.notice.model.dao.NoticeDao;
import com.kh.testSpring2.notice.model.vo.Notice;

@Service
public class NoticeService {
	@Autowired
	NoticeDao noticeDao;

	public void getNoticeList() {
		System.out.println("test123123");
		noticeDao.getNoticeList();
	}

	public List<Notice> selectNoticeList() {
		return noticeDao.selectNoticeList();
	}

	public int insertNotice(Notice notice) throws Exception {
		return noticeDao.insertNotice(notice);
	}

	public Notice selectNotice(int no) {
		return noticeDao.selectNotice(no);
	}

	public int updateNotice(Notice notice) {
		return noticeDao.updateNotice(notice);
	}
}
