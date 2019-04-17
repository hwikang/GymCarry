package kr.goott.gymcarry.controller;

import java.util.List;

import javax.annotation.Resource;
import javax.inject.Inject;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import kr.goott.gymcarry.model.dao.NoticeDAOInterface;
import kr.goott.gymcarry.model.dto.NoticeDTO;




@Controller
public class NoticeController{
	final Logger logger = LoggerFactory.getLogger(UserController.class);
	
	@Inject
	NoticeDAOInterface noticeDAOInterface;
	
	@Resource(name="uploadPath")
	String uploadPath;
	
	@RequestMapping(value = "notice.do", method= RequestMethod.GET)
	public String notice(Model model) {
		logger.info("notice Mapping go");
		List<NoticeDTO> list =noticeDAOInterface.noticeList();
		logger.info(list.get(0).getTitle()+"=========");
		model.addAttribute("list", list);
		logger.info("notice Mapping get");
		return "notice/notice";
	}
	
}