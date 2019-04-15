package kr.goott.gymcarry.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;

import org.springframework.web.bind.annotation.RequestMapping;




@Controller
public class NoticeController{
	final Logger logger = LoggerFactory.getLogger(UserController.class);
	
	@RequestMapping("/notice.do")
	public String notice() {
		return "notice/notice";
	}
	
}