package kr.goott.gymcarry.controller;

import javax.annotation.Resource;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class CommunityController {
	private static final Logger logger = LoggerFactory.getLogger(CommunityController.class);
	
	@Resource(name="uploadpath")
	
	@RequestMapping(value="community.do" , method=RequestMethod.GET)
	public String community(Model model) {
		String result="yaya";
		model.addAttribute("result",result);
		return "community/list";
	}
	
	@RequestMapping(value="upload/uploadForm" , method=RequestMethod.POST)
	public ModelAndView upload(MultipartFile file, ModelAndView mav )throws Exception {
		logger.info("파일이름=",file.getOriginalFilename());
		logger.info("파일크기=",file.getSize());
		logger.info("컨텐츠타입=",file.getContentType());
		String savedName = file.getOriginalFilename();
		savedName= uploadFile(savedName,file.getBytes());
		mav.setViewName("upload/uploadResult");
		mav.addObject("savedName",savedName);
		return mav;
		
	}
}
