package com.kh.testSpring2.member.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.kh.testSpring2.notice.model.vo.Notice;

@Controller
public class MemberController {
	
	
	@RequestMapping("chkId.do")
	public @ResponseBody Notice idDupCheck(String id){
		System.out.println(id);
		return new Notice("testtitle", "testcontent", "testwriter");
	}
	
}
