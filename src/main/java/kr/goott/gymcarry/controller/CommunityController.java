
package kr.goott.gymcarry.controller;

import javax.annotation.Resource;
import javax.inject.Inject;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import kr.goott.gymcarry.model.dao.CommunityDAOInterface;
import kr.goott.gymcarry.model.dto.CommunityDTO;

@Controller
public class CommunityController {
	private static final Logger logger = LoggerFactory.getLogger(CommunityController.class);
	
	
	@Inject
	CommunityDAOInterface communityDAO;
	//@Resource(name="uploadpath")
	
	@RequestMapping(value="community.do" , method=RequestMethod.GET)
	public String community(Model model) {
		String result="yaya";
		model.addAttribute("result",result);
		return "community/list";
	}
	
	@RequestMapping(value="community/upload.do")
	public String insertCommunity(CommunityDTO dto) {
		System.out.println("========================");
		logger.info(dto.getComDes());
		logger.info(dto.getUserid());
		logger.info(dto.getComImage());
		communityDAO.insertCommunity(dto);
		return "redirect:/community.do";
	}
	
	//@RequestMapping(value="upload/uploadForm" , method=RequestMethod.POST)
	public ModelAndView upload(MultipartFile file, ModelAndView mav )throws Exception {
		logger.info("�����̸�=",file.getOriginalFilename());
		logger.info("����ũ��=",file.getSize());
		logger.info("������Ÿ��=",file.getContentType());
		String savedName = file.getOriginalFilename();
		//savedName= uploadFile(savedName,file.getBytes());
		mav.setViewName("upload/uploadResult");
		mav.addObject("savedName",savedName);
		return mav;
		
	}
}

