package com.kh.testSpring2.notice.controller;

import java.io.File;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.kh.testSpring2.notice.model.service.NoticeService;
import com.kh.testSpring2.notice.model.vo.Notice;

@Controller
public class NoticeController {
	
	@Autowired
	NoticeService service;
	
	@RequestMapping(value="noticeList.do" ,method=RequestMethod.GET)
	public ModelAndView noticeList(ModelAndView mv, Notice notice){
		List<Notice> list = service.selectNoticeList();
		mv.setViewName("notice/noticeList");
		mv.addObject("list", list);
		return mv;
	}
	
	@RequestMapping("noticeInsertForm.do")
	public String noticeInsertPage(){
		return "notice/noticeInsertForm";
	}

	@RequestMapping("insertNotice.do")
	public String noticeInsert(Notice notice, @RequestParam(value = "file", required = false) MultipartFile file, HttpServletRequest request){
		System.out.println("업로드 한 파일: " + file.getOriginalFilename());
		String root = request.getSession().getServletContext().getRealPath("resources");
		String savePath = root + "\\nuploadFiles";
		String filePath = null;
		File folder = new File(savePath);

		if (!folder.exists()) {
			folder.mkdir(); // 폴더가 없다면 생성한다.
		}

		try {
			// 파일 저장
			filePath = folder + "\\" + file.getOriginalFilename();

			file.transferTo(new File(filePath)); // 파일을 저장한다
		} catch (Exception e) {
		}

		try {
			int result = service.insertNotice(notice);
		} catch (Exception e) {
			System.out.println("정상 처리 되지 않음");
		}
		
		return "redirect:noticeList.do";
	}
	@RequestMapping("noticeDetail.do")
	public ModelAndView noticeInsert(ModelAndView mv, int no){
		Notice n = service.selectNotice(no);
		System.out.println(n);
		mv.addObject("notice", n);
		mv.setViewName("notice/noticeDetail");
		
		return mv;
	}
	@RequestMapping("noticeUpdateForm.do")
	public ModelAndView noticeUpdateForm(ModelAndView mv, int no){
		Notice n = service.selectNotice(no);
		System.out.println(n);
		mv.addObject("notice", n);
		mv.setViewName("notice/noticeUpdateForm");
		
		return mv;
	}
	@RequestMapping("noticeUpdate.do")
	public ModelAndView noticeUpdate(ModelAndView mv, Notice notice){
		System.out.println("notice : " + notice);
		int result = service.updateNotice(notice);
		System.out.println(result);
		mv.setViewName("redirect:noticeList.do");
		return mv;
	}

}
