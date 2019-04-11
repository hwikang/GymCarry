
package kr.goott.gymcarry.controller;

import java.io.File;
import java.util.List;
import java.util.UUID;

import javax.annotation.Resource;
import javax.inject.Inject;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.FileCopyUtils;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import kr.goott.gymcarry.model.dao.CommunityDAOInterface;
import kr.goott.gymcarry.model.dto.CommunityDTO;

@Controller
public class CommunityController {
	private static final Logger logger = LoggerFactory.getLogger(CommunityController.class);

	@Inject
	CommunityDAOInterface communityDAO;
	
	@Resource(name="uploadPath")
	String uploadPath;
	
	@RequestMapping(value = "community.do", method = RequestMethod.GET)
	public String community(Model model) {
		logger.info("getting");
		List<CommunityDTO> list = communityDAO.comList();
		logger.info(list.get(0).getComImage()+"==========");
		model.addAttribute("uploadPath", "");
		model.addAttribute("list", list);  //모든 커뮤니티 리스트
		logger.info("get it");
		return "community/list";
	}

	
//	@RequestMapping(value="community/upload.do" , method=RequestMethod.POST)
//	  public String insertCommunity(CommunityDTO dto) {
//		  System.out.println("========================");
//		  logger.info(dto.getComDes());
//		  logger.info(dto.getUserid());
//		  logger.info(dto.getComImage());
//		  
//		  communityDAO.insertCommunity(dto); 
//		  return "redirect:/community.do"; 
//	  }
//	  
	  @RequestMapping(value="community/upload.do" , method=RequestMethod.POST)
	  public String insertCommunity(@RequestParam("comDes") String comDes , @RequestParam("userid") String userid ,  MultipartFile comImage)throws Exception {
		  System.out.println("========================");
		  logger.info(comDes);
		  logger.info(userid);
		  
		  logger.info("file name="+comImage.getOriginalFilename());
			logger.info("file size="+comImage.getSize());
			logger.info("content type="+comImage.getContentType()); 
		  
			String savedName = comImage.getOriginalFilename(); //
			savedName = uploadFile(savedName,comImage.getBytes());   //업로드
			
			CommunityDTO dto = new CommunityDTO();
			dto.setUserid(userid);
			dto.setComDes(comDes);
			dto.setComImage(savedName);
			
			communityDAO.insertCommunity(dto); 
//			mav.setViewName("community/list");
//			mav.addObject("savedName",savedName); 
			
			
		 // 
		  return "redirect:/community.do"; 
	  }
	  
		public String uploadFile(String oriFilename, byte[] fileData)throws Exception{
			UUID uid = UUID.randomUUID();
			String savedName = uid.toString() +"_" + oriFilename;
			File target = new File(uploadPath,savedName);
			System.out.println("upload path==========="+uploadPath);
			FileCopyUtils.copy(fileData, target);
			
			return savedName;
		}
	

	
	

}
