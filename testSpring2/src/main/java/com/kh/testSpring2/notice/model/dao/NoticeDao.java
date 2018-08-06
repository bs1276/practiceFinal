package com.kh.testSpring2.notice.model.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.kh.testSpring2.notice.model.vo.Notice;

@Repository
public class NoticeDao {
	@Autowired
	private SqlSessionTemplate sqlSession;

	public void getNoticeList() {
		System.out.println("test5TEWEWATQWETQWETQWETTWET67");
	}

	public List<Notice> selectNoticeList() {
		return sqlSession.selectList("NoticeMapper.selectNoticeList");
	}

	public int insertNotice(Notice notice) {
		return sqlSession.insert("NoticeMapper.insertNotice", notice);
	}

	public Notice selectNotice(int no) {
		return sqlSession.selectOne("NoticeMapper.selectNotice", no);
	}

	public int updateNotice(Notice notice) {
		return sqlSession.update("NoticeMapper.updateNotice", notice);
	}

	public void insertNotice2(Notice notice) {
		sqlSession.insert("NoticeMapper.insertNotice2", notice);
	}
}
