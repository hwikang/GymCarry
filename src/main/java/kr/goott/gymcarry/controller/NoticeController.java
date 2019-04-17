package kr.goott.gymcarry.controller;

import java.util.List;

import javax.annotation.Resource;
import javax.inject.Inject;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import kr.goott.gymcarry.model.dao.NoticeDAO;
import kr.goott.gymcarry.model.dao.NoticeDAOInterface;
import kr.goott.gymcarry.model.dto.CommunityDTO;
import kr.goott.gymcarry.model.dto.NoticeDTO;




@Controller
public class NoticeController{
	final Logger logger = LoggerFactory.getLogger(UserController.class);
	
	@Inject
	NoticeDAO noticeDAO;
	
	@Resource(name="uploadPath")
	String uploadPath;
	
	@RequestMapping(value = "notice.do", method= RequestMethod.GET)
	public String notice(Model model) {
		logger.info("notice Mapping go");
		List<NoticeDTO> list = noticeDAO.noticeList();
		logger.info(list.get(0).getTitle()+"=========");
		model.addAttribute("list", list);
		logger.info("notice Mapping get");
		return "notice/notice";
	}
	
	@RequestMapping(value= "notice/view/{noticeno}", method=RequestMethod.GET)
	public ModelAndView viewNotice(@PathVariable int noticeno ,ModelAndView mav) {
		logger.info("==========noticeno="+noticeno);
		
		NoticeDTO dto = noticeDAO.viewNotice(noticeno); 
		
		mav.addObject("dto",dto);

		mav.setViewName("notice/view");
	
		return mav;
	}
}